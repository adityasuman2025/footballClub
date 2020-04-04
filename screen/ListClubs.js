import React, { useState, useEffect } from 'react';
import { StyleSheet, Text, View, TouchableOpacity, Button, Image, ScrollView, FlatList, ActivityIndicator } from 'react-native';
import axios from 'axios';
import {Actions} from 'react-native-router-flux';

import { globalStyles } from '../styles/globalStyles';
import Header from '../components/Header';

export default function ListClubs(toCarry) 
{
  const api_address = "http://mngo.in/football_api/"; //toCarry.api_address; 
  const selectedState = toCarry.selectedState;

  const [error, setError] = useState(""); 
  const [firstLoad, setFirstLoad] = useState(true);
  const [loading, setLoading] = useState(true);
  const [isEndReached, setIsEndReached] = useState(false);
  
  const [clubs, setClubs] = useState([]); 
 
  var limit = 10;
  const [offset, setOffset] = useState(0); 

//loading 10 clubs by default
  if(firstLoad)
  { 
    var post_address = api_address + "get_clubs_of_a_state.php";
    axios.post(post_address, 
    {
      selectedState: selectedState,
      limit: limit,
      offset: offset
    })
    .then(function(response) 
    {
      try
      {
        var data = response.data;
        var dataString = JSON.stringify((response.data));
       
        if(dataString == 0)
        {
          setError("failed to get club list");
        }
        else if(dataString == -1)
        {
          setError("something went wrong");
        }
        else if(dataString == "[]")
        {
          setError("no football clubs found");
          setLoading(false);
        }
        else //some data is there
        {
          setError("");
          setClubs(data);

          setFirstLoad(false); //by deafult loading of data is done

          if(data.length < limit) //if no of clubs less than limit
          {
            setIsEndReached(true);
            setLoading(false);
          }
        }
      }
      catch
      {
        setError("failed to load club list");
      }          
    })
    .catch(error => 
    {
      setError("please check your internet connection");
    });
  }

//on pressing like btn
  const onPressLikeBtnHandler = (index, club_id, old_likes) =>
  {
    var post_address = api_address + "increase_like_count_for_a_club.php";
    axios.post(post_address, 
    {
      club_id: club_id,
      old_likes: old_likes
    })
    .then(function(response) 
    {
      try
      {
        var data = response.data;
        var dataString = JSON.stringify((response.data));
        
        if(dataString == 0)
        {
          setError("failed to like this club");
        }
        else if(dataString == -1)
        {
          setError("something went wrong");
        }
        else if(dataString == 1)
        {
          setError("");

        //getting the old data and updating likes in that data
          var oldJSON = clubs;
          oldJSON[index]["club_likes"] = +old_likes + +1;
          
        //setting the updated data  
          setClubs([]);
          setClubs(oldJSON);
        }
      }
      catch
      {
        setError("failed to load club list");
      }          
    })
    .catch(error => 
    {
      setError("please check your internet connection");
    });
  }

//calling more data on scrolling
  const getDataFromAPI = (limit, fun_offset) =>
  {
    var post_address = api_address + "get_clubs_of_a_state.php";
    axios.post(post_address, 
    {
      selectedState: selectedState,
      limit: limit,
      offset: fun_offset
    })
    .then(function(response) 
    {
      try
      {
        var data = response.data;
        var dataString = JSON.stringify((response.data));
       
        if(dataString == 0)
        {
          setError("failed to get club list");
        }
        else if(dataString == -1)
        {
          setError("something went wrong");
        }
        else if(dataString == "[]") //no more clubs are found // end of football clubs is reached
        {
          setIsEndReached(true);

          //setError("no more football clubs found");
        }
        else //some data is there
        {
          setError("");
          setLoading(false); //removing the loading animation

        //adding the new data in list  
          setClubs((prevNotesOldList) => 
          {     
            return [
              ...prevNotesOldList,
              ...data
            ];
          });
        }
      }
      catch
      {
        setError("failed to load club list");
      }          
    })
    .catch(error => 
    {
      setError("please check your internet connection");
    });
  }

//ok bro
  const okBro = () =>
  {
    if(!isEndReached) //if all football clubs have not been shown yet
    {
      setLoading(true); //showing the loading animation

      var temp_offset = +offset + +limit;

      setOffset("");
      setOffset(temp_offset);

      getDataFromAPI(limit, temp_offset);
    }
  }

//rendering
  return (
    <View style={globalStyles.container}>
      <Header toCarry={ {title: selectedState} } />

      <Text style={globalStyles.errorText} >{error}</Text>

      <FlatList 
        style = {styles.list}
        data={clubs}
        keyExtractor ={(item) => item.notes_id }

        onEndReached={() => okBro()}
        onEndReachedThreshold={0.0001} //it must be greater than 0
        
        ListFooterComponent={() =>
          loading && !isEndReached
          ? <ActivityIndicator size="large" animating />
          : null
        }

        renderItem={({ item, index }) => (
          <TouchableOpacity style={styles.box}>
            <View>
              <Text style={styles.listText} >{ item.club_name }</Text>
              <Text style={styles.listType} >{ item.club_city} </Text>
            </View>            
            <TouchableOpacity onPress={() => onPressLikeBtnHandler(index, item.club_id, item.club_likes)}>
              <Image 
                  source= {require('../img/like.png')}
                  style={styles.icon} 
                />
                <Text style={styles.listLikes} >{ item.club_likes} </Text>
            </TouchableOpacity>
          </TouchableOpacity>
        )}
      />
    </View>
  );
}

const styles = StyleSheet.create({
  list:
  {
    width: '100%',
    // height: '100%',
  },

  box:
  {
    backgroundColor: '#1c313a',
    borderColor: '#3d4e56',
    borderWidth: 1,
    padding: 15,
    flexDirection: 'row',
    margin: 5,
    borderRadius: 5,
    justifyContent: 'flex-start',
    alignItems: 'center',
  },

  icon:
  {
    height: 25,
    width: 25,
    tintColor: '#d8d8d8',
  },

  listText:
  {
    color: "#d8d8d8",
    fontWeight: 'bold',
    fontSize: 16,
    maxWidth: '93%',
    minWidth: '93%',
  },

  listType:
  {
    color: "#b2b2b2",
    textAlign: 'left',
    padding: 0,
    margin :0,
    width: '100%',
    fontSize: 13,
  },

  listLikes:
  {
     color: "#b2b2b2",
    textAlign: 'center',
    padding: 0,
    margin :0,
    width: '100%',
    fontSize: 13,
  }
});
