import React, { useState, useEffect } from 'react';
import { StyleSheet, Text, View} from 'react-native';
import axios from 'axios';
import {Actions} from 'react-native-router-flux';

import { globalStyles } from '../styles/globalStyles';
import Header from '../components/Header';

export default function ListClubs(toCarry) 
{
  const api_address = toCarry.api_address; 
  const selectedState = toCarry.selectedState;

  const [error, setError] = useState("loading..."); 
  const [clubs, setClubs] = useState([]); 

  const post_address = api_address + "get_clubs_of_a_state.php";

  axios.post(post_address, 
  {
    selectedState: selectedState
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
      else //some data is there
      {
        setError("");
        setClubs(data);
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

//rendering
  return (
    <View style={globalStyles.container}>
      <Header toCarry={ {title: selectedState} } />
        
      <Text style={globalStyles.errorText} >{error}</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  list:
  {
    flex: 1,
    width: '80%',
    justifyContent: 'center',
  },

  listText:
  {
    color: "#f1f1f1",
    fontWeight: 'bold',
    fontSize: 18,
    textAlign: 'center',

    borderBottomColor: '#f1f1f1',
    borderBottomWidth: 1,
    paddingBottom: 10,
  },
});
