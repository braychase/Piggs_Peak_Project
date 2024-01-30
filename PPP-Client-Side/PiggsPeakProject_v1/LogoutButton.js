// LogoutButton.js
import React from "react";
import { Button } from "react-native";
import { useNavigation } from "@react-navigation/native";

const LogoutButton = ({ onPress }) => {
  const navigation = useNavigation();

  const handleLogout = () => {
    // Implement logout logic here
    console.log("Logout successful!");
    onPress(); // Call the provided onPress function
    navigation.navigate("Login");
  };

  return <Button title="Logout" onPress={handleLogout} />;
};

export default LogoutButton;
