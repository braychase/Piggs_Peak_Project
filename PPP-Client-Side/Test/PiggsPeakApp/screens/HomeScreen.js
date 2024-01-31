// HomeScreen.js

import React from 'react';
import { View, Text, StyleSheet, Pressable } from 'react-native';
import COLORS from '../constants/colors';

export default function HomeScreen({ navigation }) {
  return (
    <View style={Styles.container}>
      <Text style={Styles.title}>Welcome to Piggs Peak App</Text>
      <Pressable onPress={() => navigation.goBack()}>
        <Text style={Styles.logoutButton}>Logout</Text>
      </Pressable>
    </View>
  );
}

const Styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: COLORS.primary,
  },
  title: {
    fontSize: 24,
    fontWeight: 'bold',
    color: COLORS.white,
    marginBottom: 20,
  },
  logoutButton: {
    fontSize: 18,
    color: COLORS.primary,
    fontWeight: 'bold',
    backgroundColor: COLORS.white,
    paddingVertical: 10,
    paddingHorizontal: 20,
    borderRadius: 10,
  },
});

