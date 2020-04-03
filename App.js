import 'react-native-gesture-handler';
import React from 'react';
import { StyleSheet, View, TouchableWithoutFeedback, Keyboard} from 'react-native';

import Routes from './routes/Routes';

export default function App()
{
  return (
    <TouchableWithoutFeedback onPress={() => {
      Keyboard.dismiss();
    }}>
      <View style={styles.container}>
        <Routes />
      </View>
    </TouchableWithoutFeedback>
  );
}
const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#455a64',
  },
});
