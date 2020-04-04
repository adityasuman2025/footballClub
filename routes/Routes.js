import 'react-native-gesture-handler';

import React from 'react';
import {Router, Stack, Scene} from 'react-native-router-flux';

import Home from '../screen/Home';
import ListClubs from '../screen/ListClubs';

// const Stack = createStackNavigator();

export default function Routes()
{
	const api_address = "http://192.168.43.11/upbringoTest/api/";

	return(
		<Router>
			<Scene hideNavBar={true} initial={true} >
     			<Scene key="Home" component={Home} initial={true} api_address = {api_address} />
     			<Scene key="ListClubs" component={ListClubs} />
     		</Scene>
		 </Router>
	)
}
