import 'react-native-gesture-handler';

import React from 'react';
import {Router, Stack, Scene} from 'react-native-router-flux';

import Home from '../screen/Home';

// const Stack = createStackNavigator();

export default function Routes()
{
	return(
		<Router>
			<Scene initial={true} >
     			<Scene name="Home" component={Home} type="replace" initial={true} />
     		</Scene>
		 </Router>
	)
}
