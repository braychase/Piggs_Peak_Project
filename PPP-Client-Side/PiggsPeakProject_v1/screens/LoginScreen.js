import React, { useState } from "react";
import {
  View,
  Text,
  TextInput,
  Pressable,
  StyleSheet,
  Image,
  Alert,
} from "react-native";
import { LinearGradient } from "expo-linear-gradient";
import COLORS from "../constants/colors";
import { FontAwesomeIcon } from "@fortawesome/react-native-fontawesome";
import { faCircleUser, faUnlock } from "@fortawesome/free-solid-svg-icons";
import styles from "../styles/loginScreenStyles";

const LoginScreen = ({ navigation }) => {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState("");

  const handleLogin = async () => {
    try {
      // Simulate login validation logic
      if (username.trim() && password.trim()) {
        // Navigate to the main app screen or set login state locally
        navigation.replace("Main"); // Assuming "Main" is the route name for the main part of your app
      } else {
        setError("Please enter valid credentials");
      }
    } catch (error) {
      console.error("Login error:", error);
      setError("An error occurred during login");
    }
  };

  return (
    <LinearGradient
      style={{ flex: 1 }}
      colors={[COLORS.secondary, COLORS.primary]}
    >
      <Text style={styles.textCenter}>Piggs Peak App</Text>
      <View style={styles.root}>
        <Image
          source={require("../assets/HooperStarfish.jpg")}
          style={styles.logo}
        />
      </View>
      <View style={styles.action}>
        <FontAwesomeIcon
          icon={faCircleUser}
          style={{ marginTop: 5, marginRight: 7 }}
        />
        <TextInput
          placeholder="Username"
          value={username}
          onChangeText={setUsername}
        />
      </View>
      <View style={styles.action}>
        <FontAwesomeIcon
          icon={faUnlock}
          style={{ marginTop: 5, marginRight: 7 }}
        />
        <TextInput
          placeholder="Password"
          style={{ flex: 1, paddingVertical: 0 }}
          secureTextEntry={true}
          value={password}
          onChangeText={setPassword}
        />
        <Pressable
          onPress={() =>
            Alert.alert("Forgot Password", "Implement forgot password logic")
          }
        >
          <Text style={{ color: COLORS.primary, fontWeight: "700" }}>
            Forgot?
          </Text>
        </Pressable>
      </View>
      <Pressable onPress={handleLogin}>
        <Text style={styles.loginButton}>Login</Text>
      </Pressable>
      {error ? <Text style={styles.errorText}>{error}</Text> : null}
    </LinearGradient>
  );
};

export default LoginScreen;
