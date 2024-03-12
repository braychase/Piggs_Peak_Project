import React from "react";
import { ScrollView, StyleSheet, Pressable, Text, View } from "react-native";
import { LinearGradient } from "expo-linear-gradient";
import { useNavigation } from "@react-navigation/native";
import { FontAwesomeIcon } from "@fortawesome/react-native-fontawesome";
import { faSignOutAlt } from "@fortawesome/free-solid-svg-icons";
import COLORS from "../constants/colors";
import styles from "../styles/morePageStyles";

const MoreScreen = () => {
  const navigation = useNavigation();

  const handleLogout = () => {
    navigation.navigate("Login");
  };

  // Navigate to Audit Trail Screen
  const navigateToAuditTrail = () => {
    navigation.navigate("AuditTrail");
  };

  // Navigate to Missing Data Report Screen
  const navigateToMissingDataReport = () => {
    navigation.navigate("MissingDataReport");
  };

  const navigateToPreference = () => {
    navigation.navigate("Preference");
  };

  return (
    <LinearGradient
      style={styles.container}
      colors={[COLORS.secondary, COLORS.primary]}
    >
      <ScrollView contentContainerStyle={styles.contentContainer}>
        <Pressable onPress={handleLogout} style={styles.logoutButton}>
          <View style={styles.logoutContent}>
            <Text style={styles.logoutText}>Logout</Text>
            <FontAwesomeIcon icon={faSignOutAlt} size={24} color="#FFFFFF" />
          </View>
        </Pressable>
        <Pressable
          onPress={navigateToAuditTrail}
          style={styles.fullWidthButton}
        >
          <Text style={styles.buttonText}>Audit Trail</Text>
        </Pressable>
        <Pressable
          onPress={navigateToMissingDataReport}
          style={styles.fullWidthButton}
        >
          <Text style={styles.buttonText}>Missing Data Report</Text>
        </Pressable>
        <Pressable
          onPress={navigateToPreference}
          style={styles.fullWidthButton}
        >
          <Text style={styles.buttonText}>Preferences</Text>
        </Pressable>
      </ScrollView>
    </LinearGradient>
  );
};

export default MoreScreen;
