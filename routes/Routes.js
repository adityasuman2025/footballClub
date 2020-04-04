import 'react-native-gesture-handler';

import React from 'react';
import {Router, Stack, Scene} from 'react-native-router-flux';

import Home from '../screen/Home';
import ListClubs from '../screen/ListClubs';

// const Stack = createStackNavigator();

export default function Routes()
{
	const api_address = "http://mngo.in/football_api/";

	return(
		<Router>
			<Scene hideNavBar={true} initial={true} >
     			<Scene key="Home" component={Home} initial={true} api_address = {api_address} />
     			<Scene key="ListClubs" component={ListClubs} />
     		</Scene>
		 </Router>
	)
}
