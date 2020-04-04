import 'react-native-gesture-handler';

import React from 'react';
import {Router, Stack, Scene} from 'react-native-router-flux';

import Home from '../screen/Home';
import ViewClubs from '../screen/ViewClubs';

// const Stack = createStackNavigator();

export default function Routes()
{
	return(
		<Router>
			<Scene hideNavBar={true} initial={true} >
     			<Scene key="Home" component={Home} type="replace" initial={true} />
     			<Scene key="ViewClubs" component={ViewClubs} />
     		</Scene>
		 </Router>
	)
}
