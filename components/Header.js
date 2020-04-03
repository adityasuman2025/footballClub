import React, { useState } from 'react';
import { StyleSheet, Text, View, Image, TouchableOpacity, AsyncStorage, Alert} from 'react-native';

export default function Header({toCarry}) 
{
	const title = toCarry.title;

	return(
		<View style={styles.header}>
			<View style={styles.titleContainer}>
				<Image source={require('../img/logo.png')} style={styles.titleImg} />
				<Text style={styles.headerText}> {title} </Text>
			</View>
		</View>
	)
}

const styles = StyleSheet.create({
	header:
	{
		backgroundColor: '#455a64',
		borderWidth: 1,
		borderColor: '#3d4e56',
		height: 80,
		paddingTop: 27,
		paddingLeft: 10,
		width: '100%',
		flexDirection: 'row',
		alignItems: 'center', //vertical align
    	justifyContent: 'flex-start', //horizontal align
	},
	
	titleContainer:
    {	
    	width: '50%',
    	flexDirection: 'row',
		alignItems: 'center', //vertical align
    	justifyContent: 'flex-start', //horizontal align
    },

	titleImg:
	{
		height: 30,
		width: 30,
	},

	headerText: 
	{
		fontWeight: 'bold',
		fontSize: 20,
		color: '#fff',
    },

    logOutContainer:
    {
    	width: '50%',
    	alignItems: 'flex-end',
    },

    logOutImg:
    {
    	height: 25,
		width: 25,
		marginRight: 10,
		tintColor: '#181915',		
    }
});