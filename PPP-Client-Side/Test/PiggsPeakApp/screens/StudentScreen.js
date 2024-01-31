import React from 'react';
import { View, Text, StyleSheet, Pressable } from 'react-native';
import COLORS from '../constants/colors';

export default function StudentScreen() {
  return (
    <View style={Styles.container}>
      <Text style={Styles.title}>Students</Text>
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
});

