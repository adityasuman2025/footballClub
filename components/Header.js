import React, { useState } from 'react';
import { StyleSheet, Text, View, Image} from 'react-native';

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
		backgroundColor: '#374c56',
		paddingTop: 33,
		paddingBottom: 10,
		paddingLeft: 10,
		width: '100%',
		flexDirection: 'row',
		alignItems: 'center', //vertical align
    	justifyContent: 'flex-start', //horizontal align
	},
	
	titleContainer:
    {	
    	width: '100%',
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
});