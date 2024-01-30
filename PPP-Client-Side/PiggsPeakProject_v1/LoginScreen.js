// LoginScreen.js
import React, { useState } from "react";
import { View, Text, TextInput, Button, StyleSheet, Image } from "react-native";

const LoginScreen = ({ navigation, route }) => {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState("");

  const handleLogin = () => {
    // Simple login logic
    if (username === "demo" && password === "password") {
      console.log("Login successful!");
      route.params.setLoggedIn(true); // Set isLoggedIn to true
      navigation.navigate("Home");
    } else {
      setError("Invalid username or password");
      console.log("Login failed!");
    }
  };

  return (
    <View style={styles.container}>
      <Image
        source={require("./assets/HooperStarfish.jpg")} // Add the path to your login image
        style={styles.loginImage}
      />
      <View style={styles.inputContainer}>
        <TextInput
          style={styles.input}
          placeholder="Username"
          value={username}
          onChangeText={(text) => setUsername(text)}
        />
        <TextInput
          style={styles.input}
          placeholder="Password"
          secureTextEntry
          value={password}
          onChangeText={(text) => setPassword(text)}
        />
      </View>
      <View style={styles.buttonContainer}>
        <Button title="Login" onPress={handleLogin} color="blue" />
      </View>
      <Text style={styles.errorText}>{error}</Text>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#ABEED8", // Use the same background color as in App.js
    justifyContent: "center",
    alignItems: "center",
  },
  loginImage: {
    width: 200, // Adjust the width of the image as needed
    height: 200, // Adjust the height of the image as needed
    marginBottom: 100, // Adjust the marginBottom as needed
    resizeMode: "contain", // Adjust the resizeMode as needed
  },
  inputContainer: {
    backgroundColor: "#fff",
    borderRadius: 10,
    padding: 20, // Adjust the padding as needed
    marginBottom: 20,
    width: "80%", // Adjust the width as needed
  },
  input: {
    height: 40,
    borderColor: "gray",
    borderWidth: 1,
    marginBottom: 10,
    paddingLeft: 10,
    borderRadius: 5,
  },
  buttonContainer: {
    borderRadius: 20,
    width: 100,
    overflow: "hidden", // This ensures the border radius is applied
  },
  errorText: {
    color: "red",
    marginTop: 10,
  },
});

export default LoginScreen;
