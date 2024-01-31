import React, { useState } from 'react';
import { View, Text, Image, StyleSheet, TextInput, Pressable, Alert } from 'react-native';
import { LinearGradient } from 'expo-linear-gradient';
import COLORS from '../constants/colors';
import { FontAwesomeIcon } from '@fortawesome/react-native-fontawesome';
import { faCircleUser } from '@fortawesome/free-regular-svg-icons';
import { faUnlock } from '@fortawesome/free-solid-svg-icons';

export default function LoginScreen({ navigation }) {
  const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');

  const handleLogin = () => {
    if (username === 'app' && password === 'app') {
      navigation.navigate('Home');
    } else {
      Alert.alert('Error', 'Invalid username or password. Please try again.');
      console.log('Error', 'Invalid username or password. Please try again.');
    }
  };

  return (
    <LinearGradient style={{ flex: 1 }} colors={[COLORS.secondary, COLORS.primary]}>
      <Text style={Styles.textCenter}>Piggs Peak App</Text>
      <View style={Styles.root}>
        <Image source={require("../assets/HooperStarfish.jpg")} style={Styles.logo} />
      </View>
      <View style={Styles.action}>
        <FontAwesomeIcon icon={faCircleUser} style={{ marginRight: 5 }} />
        <TextInput
          placeholder='Username'
          value={username}
          onChangeText={(text) => setUsername(text)}
        />
      </View>
      <View style={Styles.action}>
        <FontAwesomeIcon icon={faUnlock} style={{ marginRight: 5 }} />
        <TextInput
          placeholder='Password'
          style={{ flex: 1, paddingVertical: 0 }}
          secureTextEntry={true}
          value={password}
          onChangeText={(text) => setPassword(text)}
        />
        <Pressable onPress={() => { Alert.alert('Forgot Password', 'Implement forgot password logic'); console.log('Forgot Password', 'Implement forgot password logic');}}>
          <Text style={{ color: COLORS.primary, fontWeight: '700' }}>Forgot?</Text>
        </Pressable>
      </View>
      <Pressable onPress={handleLogin}>
        <Text style={Styles.loginButton}>Login</Text>
      </Pressable>
    </LinearGradient>
  );
}

const Styles = StyleSheet.create({
    root: {
        alignItems: 'center',
        padding: 20,
    },
    logo: {
        width: 200,
        height: 200,
        borderRadius: 10,
    },
    action: {
        flexDirection: 'row',
        paddingTop: 14,
        paddingBottom: 14,
        marginTop: 15,
        paddingHorizontal: 15,
        borderWidth: 1,
        borderColor: COLORS.gray,
        borderRadius: 50,
        backgroundColor: COLORS.white,
        width: '40%',
        marginHorizontal: '30%',
    },
    textCenter: {
        textAlign: 'center',
        fontSize: 28,
        fontWeight: '500',
        color: COLORS.black,
        fontFamily:'Verdana',
    },
    loginButton: {
        backgroundColor: 'blue',
        width: '20%',
        marginHorizontal: '40%',
        padding: 14,
        marginTop: 15,
        textAlign: 'center',
        fontWeight: '500',
        color: COLORS.white,
        fontFamily:'Verdana',
        borderRadius: 50,
        borderWidth: 2,
        borderColor: COLORS.white,

    }



})