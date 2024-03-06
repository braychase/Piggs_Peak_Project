import { Platform } from "react-native";
import * as Keychain from "react-native-keychain";

// Asynchronously retrieves a stored token
export const getToken = async () => {
  if (Platform.OS !== "web") {
    // React Native
    try {
      const credentials = await Keychain.getGenericPassword();
      return credentials ? credentials.password : null;
    } catch (error) {
      console.error("Keychain couldn't read the token.", error);
      return null;
    }
  } else {
    // Web
    return localStorage.getItem("authToken");
  }
};

// Asynchronously stores a token
export const setToken = async (token) => {
  if (Platform.OS !== "web") {
    // React Native
    try {
      await Keychain.setGenericPassword("token", token);
    } catch (error) {
      console.error("Keychain couldn't store the token.", error);
    }
  } else {
    // Web
    localStorage.setItem("authToken", token);
  }
};
