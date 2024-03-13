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
import {
  faCircleUser,
  faUnlock,
  faLink,
} from "@fortawesome/free-solid-svg-icons";
import styles from "../styles/loginScreenStyles";
import CONSTANTS from "../constants/constants";
import AsyncStorage from "@react-native-async-storage/async-storage";
const BASE_URL = CONSTANTS.baseURL;

const LoginScreen = ({ navigation }) => {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState("");

  const handleLogin = async () => {
    try {
      if (!username.trim() || !password.trim()) {
        setError("Please enter valid credentials");
        return;
      }

      const response = await fetch(BASE_URL + "/api/Login", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({
          loginID: username,
          password: password,
        }),
      });

      const data = await response.json();

      if (response.ok) {
        // Login successful, store the DefaultSchoolId
        if (data.defaultSchoolID) {
          await AsyncStorage.setItem(
            "defaultSchoolID",
            data.defaultSchoolID.toString()
          );
        }
        navigation.replace("Main");
      } else if (response.status === 401) {
        // Unauthorized
        setError("Invalid credentials. Please try again.");
      } else {
        // Other errors
        setError("An error occurred during login. Please try again later.");
      }
    } catch (error) {
      console.error("Login error:", error);
      setError(
        "An error occurred during login. Please check your connection and try again."
      );
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
          style={{ flex: 1, paddingVertical: 0 }}
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
      <View style={styles.action}>
        <FontAwesomeIcon
          icon={faLink}
          style={{ marginTop: 5, marginRight: 7 }}
        />
        <TextInput
          placeholder="Username"
          style={{ flex: 1, paddingVertical: 0 }}
          value="https:localhost:"
          onChangeText={setUsername}
        />
      </View>
      <Pressable onPress={handleLogin}>
        <Text style={styles.loginButton}>Login</Text>
      </Pressable>
      {error ? <Text style={styles.errorText}>{error}</Text> : null}
    </LinearGradient>
  );
};

export default LoginScreen;
