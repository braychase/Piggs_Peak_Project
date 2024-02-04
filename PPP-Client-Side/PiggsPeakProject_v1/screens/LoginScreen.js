import React, { useState, useContext } from "react";
import {
  View,
  Text,
  TextInput,
  Button,
  StyleSheet,
  Image,
  Pressable,
} from "react-native";
import axios from "axios";
import { AuthContext } from "../App"; // Import the AuthContext
import { LinearGradient } from "expo-linear-gradient";
import COLORS from "../constants/colors";
import { FontAwesomeIcon } from "@fortawesome/react-native-fontawesome";
import { faCircleUser } from "@fortawesome/free-regular-svg-icons";
import { faUnlock } from "@fortawesome/free-solid-svg-icons";

const LoginScreen = ({ navigation }) => {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState("");
  const { setLoggedIn } = useContext(AuthContext); // Use AuthContext to manage login state

  const handleLogin = async () => {
    try {
      // Your login validation logic here
      // For demonstration, let's assume any non-empty credentials are valid
      if (username.trim() && password.trim()) {
        setLoggedIn(true); // Set logged in state to true
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
      <Text style={Styles.textCenter}>Piggs Peak App</Text>
      <View style={Styles.root}>
        <Image
          source={require("../assets/HooperStarfish.jpg")}
          style={Styles.logo}
        />
      </View>
      <View style={Styles.action}>
        <FontAwesomeIcon
          icon={faCircleUser}
          style={{ marginTop: 5, marginRight: 7 }}
        />
        <TextInput
          placeholder="Username"
          value={username}
          onChangeText={(text) => setUsername(text)}
        />
      </View>
      <View style={Styles.action}>
        <FontAwesomeIcon
          icon={faUnlock}
          style={{ marginTop: 5, marginRight: 7 }}
        />
        <TextInput
          placeholder="Password"
          style={{ flex: 1, paddingVertical: 0 }}
          secureTextEntry={true}
          value={password}
          onChangeText={(text) => setPassword(text)}
        />
        <Pressable
          onPress={() => {
            Alert.alert("Forgot Password", "Implement forgot password logic");
            console.log("Forgot Password", "Implement forgot password logic");
          }}
        >
          <Text style={{ color: COLORS.primary, fontWeight: "700" }}>
            Forgot?
          </Text>
        </Pressable>
      </View>
      <Pressable onPress={handleLogin}>
        <Text style={Styles.loginButton}>Login</Text>
      </Pressable>
      {error ? <Text style={styles.errorText}>{error}</Text> : null}
    </LinearGradient>
  );
};

const Styles = StyleSheet.create({
  root: {
    alignItems: "center",
    padding: 20,
    marginTop: "10%", // Adjust the marginTop to bring components up
  },
  logo: {
    width: 200,
    height: 200,
    borderRadius: 10,
    marginTop: "-10%",
  },
  action: {
    flexDirection: "row",
    paddingTop: 14,
    paddingBottom: 14,
    marginTop: 15,
    paddingHorizontal: 15,
    borderWidth: 1,
    borderColor: COLORS.gray,
    borderRadius: 50,
    backgroundColor: COLORS.white,
    width: "80%",
    marginHorizontal: "10%",
  },
  textCenter: {
    textAlign: "center",
    fontSize: 28,
    fontWeight: "500",
    color: COLORS.black,
    marginTop: "10%", // Adjust the marginTop to bring components up
  },
  loginButton: {
    backgroundColor: "blue",
    width: "50%",
    marginHorizontal: "25%",
    padding: 14,
    marginTop: 25,
    textAlign: "center",
    fontWeight: "500",
    color: COLORS.white,
    borderRadius: 50,
    borderWidth: 2,
    borderColor: COLORS.white,
    fontSize: 15,
  },
});

export default LoginScreen;
