import React, { useState, useEffect } from "react";
import { ScrollView, StyleSheet, Pressable, Text, View } from "react-native";
import { DataTable, TextInput } from "react-native-paper";
import { FontAwesomeIcon } from "@fortawesome/react-native-fontawesome";
import { faArrowLeft, faArrowRight } from "@fortawesome/free-solid-svg-icons";
import { LinearGradient } from "expo-linear-gradient";
import COLORS from "../constants/colors";

const HomeScreen = () => {
  return (
    <LinearGradient
      style={{ flex: 1 }}
      colors={[COLORS.secondary, COLORS.primary]}
    >
      <View style={styles.block}>
        <Text style={styles.temp}>More Page</Text>
      </View>
    </LinearGradient>
  );
};
const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "green",
  },
  navigationButtons: {
    flexDirection: "row",
    justifyContent: "space-between",
    marginHorizontal: 20,
    marginVertical: 10,
  },
  filterContainer: {
    flexDirection: "row",
    justifyContent: "space-between",
    alignItems: "center",
    marginHorizontal: 20,
    marginBottom: 10,
  },
  temp: {
    justifyContent: "center",
    marginTop: "25%",
    fontWeight: "bold",
    fontSize: 64,
  },
  block: {
    alignItems: "center",
  },
});

export default HomeScreen;
