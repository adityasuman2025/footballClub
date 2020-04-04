import React, { useState, useEffect } from 'react';
import { StyleSheet, Text, View, Picker} from 'react-native';
import axios from 'axios';
import {Actions} from 'react-native-router-flux';

import { globalStyles } from '../styles/globalStyles';
import Header from '../components/Header';

export default function Home(toCarry) 
{
  const api_address = toCarry.api_address;

  const [error, setError] = useState(""); 
  const [options, setOptions] = useState(["Choose State", "Andhra Pradesh", "Arunachal Pradesh", "Assam", "Bihar", "Chhattisgarh", "Delhi", "Goa", "Gujarat", "Haryana", "Himachal Pradesh", "Jammu & Kashmir", "Jharkhand", "Karnataka", "Kerala", "Madhya Pradesh", "Maharashtra", "Manipur", "Meghalaya", "Mizoram", "Nagaland", "Odisha", "Punjab", "Rajasthan", "Sikkim", "Tamil Nadu", "Telangana", "Tripura", "Uttar Pradesh", "Uttaranchal", "West Bengal"]);
  const [selectedValue, setSelectedValue] = useState("");

  const selectAOptionHandler = (itemValue, itemIndex) =>
  {
    setSelectedValue(itemValue);

    if(itemIndex != 0)
    {
      Actions.ListClubs({ selectedState: itemValue, api_address: api_address });
    }
  }

//rendering
  return (
    <View style={globalStyles.container}>
      <Header toCarry={ {title: "Upbringo Assignment"} } />
        <View style={styles.list}>
          <Text style={styles.listText}>Select State</Text>
          <Picker
            style={styles.box}
            selectedValue={selectedValue}
            // style={{ height: 50, width: '100%' }}
            // mode="dropdown"
            onValueChange={(itemValue, itemIndex) => selectAOptionHandler(itemValue, itemIndex)}
          >
            {
              options.map((item, idx) => 
              {
                // key = options[idx];
                return (<Picker.Item color="#939393" background="#a2a2a2" label={item} value={item} key={item}/>) //if you have a bunch of keys value pair
              })
            }
          </Picker>
        </View>
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
