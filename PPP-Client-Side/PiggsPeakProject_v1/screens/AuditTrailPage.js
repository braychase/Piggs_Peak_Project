import React, { useState, useEffect } from "react";
import { ScrollView, StyleSheet, Pressable, Text, View } from "react-native";
import { DataTable, TextInput } from "react-native-paper";
import { FontAwesomeIcon } from "@fortawesome/react-native-fontawesome";
import { faArrowLeft, faArrowRight } from "@fortawesome/free-solid-svg-icons";
import { LinearGradient } from "expo-linear-gradient";
import COLORS from "../constants/colors";
import styles from "../styles/rankingPageStyles";

const AuditTrailScreen = () => {
  return (
    <LinearGradient
      style={{ flex: 1 }}
      colors={[COLORS.secondary, COLORS.primary]}
    >
      <View style={styles.block}>
        <Text style={styles.temp}>Audit Trail Page</Text>
      </View>
    </LinearGradient>
  );
};

export default AuditTrailScreen;
