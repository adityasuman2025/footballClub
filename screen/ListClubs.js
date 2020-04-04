import React, { useState, useEffect } from 'react';
import { StyleSheet, Text, View, TouchableOpacity, FlatList, Image, ScrollView} from 'react-native';
import axios from 'axios';
import {Actions} from 'react-native-router-flux';

import { globalStyles } from '../styles/globalStyles';
import Header from '../components/Header';

export default function ListClubs(toCarry) 
{
  const api_address = toCarry.api_address; 
  const selectedState = toCarry.selectedState;

  const [error, setError] = useState("loading..."); 
  const [firstLoad, setFirstLoad] = useState(true);
  
  const [clubs, setClubs] = useState([]); 
 
  var limit = 10;
  const [offset, setOffset] = useState(0); 

//loading 10 clubs by default
  var post_address = api_address + "get_clubs_of_a_state.php";

  if(firstLoad)
  {
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
        // console.log(dataString);

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
        }
        else //some data is there
        {
          setError("");
          setClubs(data);

          setFirstLoad(false);
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
  const getDataFromAPI = (limit, offset) =>
  {
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
        // console.log(dataString);

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
        }
        else //some data is there
        {
          // console.log(dataString);
          setError("");

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

//function to recognize end of the scroll
  const isCloseToBottom = ({layoutMeasurement, contentOffset, contentSize}) => {
    const paddingToBottom = 20;
    return layoutMeasurement.height + contentOffset.y >=
      contentSize.height - paddingToBottom;
  };

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
        // console.log(dataString);

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

//rendering
  return (
    <View style={globalStyles.container}>
      <Header toCarry={ {title: selectedState} } />
      <ScrollView 
        style = {styles.list}
        onScroll={({nativeEvent}) => 
        {
          if(isCloseToBottom(nativeEvent) && error != "no football clubs found")
          {            
            setOffset(+offset + +limit);
            getDataFromAPI(limit, offset);
            console.log(offset);
          }
        }}

        // onTouchStart={() => console.log('onTouchStart')}
        // onTouchMove={() => console.log('onTouchMove')}
        // onTouchEnd={() => console.log('onTouchEnd')}
        // onScrollBeginDrag={() => console.log('onScrollBeginDrag')}
        // onScrollEndDrag={() => console.log('onScrollEndDrag')}
        // onMomentumScrollBegin={() => console.log('onMomentumScrollBegin')}
        // onMomentumScrollEnd={() => console.log('onMomentumScrollEnd')}
      >
      {
        clubs.map((item, idx) => 
        {
          return(
              <View key={idx} style={styles.box}>
                <View>
                  <Text style={styles.listText} >{ item.club_name }</Text>
                  <Text style={styles.listType} >{ item.club_city} </Text>
                </View>            
                <TouchableOpacity onPress={() => onPressLikeBtnHandler(idx, item.club_id, item.club_likes)}>
                  <Image 
                      source= {require('../img/like.png')}
                      style={styles.icon} 
                    />
                    <Text style={styles.listLikes} >{ item.club_likes} </Text>
                </TouchableOpacity>
              </View>
          )
        })
      }
      </ScrollView>

      <Text style={globalStyles.errorText} >{error}</Text>
    </View>
  );
}

const styles = StyleSheet.create({
   list:
  {
    width: '100%',
    height: '110%',
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
    // marginRight: 2,

    // backgroundColor: 'blue',
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
