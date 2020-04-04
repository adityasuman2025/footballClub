import React, { useState, useEffect } from 'react';
import { StyleSheet, Text, View} from 'react-native';
import axios from 'axios';
import {Actions} from 'react-native-router-flux';

import { globalStyles } from '../styles/globalStyles';
import Header from '../components/Header';

export default function ViewClub(toCarry) 
{
  var selectedState = toCarry.selectedState;

  const [error, setError] = useState(""); 

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
