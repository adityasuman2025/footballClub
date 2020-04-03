import React, { useState, useEffect } from 'react';
import { StyleSheet, Text, View, TouchableOpacity, FlatList, AsyncStorage, Image } from 'react-native';
import axios from 'axios';

import { globalStyles } from '../styles/globalStyles';
import Header from '../components/Header';

export default function Home() 
{
  const [error, setError] = useState("Hello world"); 

//rendering
  return (
    <View style={globalStyles.container}>
      <Header toCarry={ {title: "Upbringgo Test"} } />

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
    height: 75,
    width: 60,
    tintColor: '#d8d8d8',
    marginRight: 10,
  },

  listText:
  {
    color: "#d8d8d8",
    fontWeight: 'bold',
    fontSize: 16,
    maxWidth: '83%',
    minWidth: '83%',
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
});
