import React, { useState, createContext, useContext, useEffect } from "react";
import { NavigationContainer } from "@react-navigation/native";
import { createStackNavigator } from "@react-navigation/stack";
import { createBottomTabNavigator } from "@react-navigation/bottom-tabs";
import { LoginScreen, HomePage, StudentPage, AddStudentPage } from "./screens";
import { Image, View, Text, StyleSheet, ActivityIndicator } from "react-native";
import AsyncStorage from "@react-native-async-storage/async-storage";

// Context for managing authentication state
const AuthContext = createContext();

const Stack = createStackNavigator();
const Tab = createBottomTabNavigator();

// HomeScreen Component
const HomeScreen = () => (
  <View>
    <HomePage />
  </View>
);

function StudentScreen({ navigation }) {
  return <StudentPage navigation={navigation} />;
}

function AddStudentScreen() {
  return <AddStudentPage />;
}

// InterviewScreen Component
function InterviewScreen() {
  return (
    // Define your InterviewScreen content here
    // You can replace this with your actual content
    <View>
      <Text>Welcome to Interview Screen!</Text>
    </View>
  );
}

// MoreScreen Component
function MoreScreen() {
  return (
    // Define your MoreScreen content here
    // You can replace this with your actual content
    <View>
      <Text>Welcome to More Screen!</Text>
    </View>
  );
}

// Tab Navigator Component
function TabNavigator() {
  return (
    <Tab.Navigator
      screenOptions={({ route }) => ({
        tabBarIcon: ({ focused }) => {
          let iconName;

          if (route.name === "Home") {
            iconName = require("./assets/home.png");
          } else if (route.name === "Students") {
            iconName = require("./assets/user.png");
          } else if (route.name === "Interview") {
            iconName = require("./assets/clipboard.png");
          } else if (route.name === "More") {
            iconName = require("./assets/more.png");
          }

          return <Image source={iconName} style={{ width: 24, height: 24 }} />;
        },
      })}
      tabBarOptions={{
        tabBarActiveTintColor: "blue",
        tabBarInactiveTintColor: "gray",
        tabBarStyle: [
          {
            display: "flex",
          },
          null,
        ],
      }}
    >
      <Tab.Screen
        name="Home"
        component={HomeScreen}
        options={{ headerShown: false }}
      />
      <Tab.Screen
        name="Students"
        component={StudentScreen}
        options={{ headerShown: false }}
      />
      <Tab.Screen
        name="Interview"
        component={InterviewScreen}
        options={{ headerShown: false }}
      />
      <Tab.Screen
        name="More"
        component={MoreScreen}
        options={{ headerShown: false }}
      />
    </Tab.Navigator>
  );
}

export default function App() {
  const [isLoggedIn, setLoggedIn] = useState(false);
  const [isLoading, setIsLoading] = useState(true);

  useEffect(() => {
    const checkLoginStatus = async () => {
      try {
        const value = await AsyncStorage.getItem("isLoggedIn");
        if (value !== null) {
          setLoggedIn(JSON.parse(value));
        }
      } catch (error) {
        console.error("Error reading isLoggedIn from AsyncStorage", error);
      }
      setIsLoading(false); // Set loading to false after checking login status
    };

    checkLoginStatus();
  }, []);

  if (isLoading) {
    // While checking the login status, show a loading indicator
    return <ActivityIndicator size="large" />;
  }

  const authContextValue = {
    isLoggedIn,
    setLoggedIn: async (loggedIn) => {
      try {
        await AsyncStorage.setItem("isLoggedIn", JSON.stringify(loggedIn));
        setLoggedIn(loggedIn);
      } catch (error) {
        console.error("Error saving isLoggedIn to AsyncStorage", error);
      }
    },
  };

  return (
    <AuthContext.Provider value={{ isLoggedIn, setLoggedIn }}>
      <NavigationContainer>
        <Stack.Navigator>
          {!isLoggedIn ? (
            <Stack.Screen
              name="Login"
              component={LoginScreen}
              options={{ headerShown: false }}
            />
          ) : (
            <Stack.Screen
              name="Main"
              component={TabNavigator}
              options={{ headerShown: false }}
            />
          )}
          <Stack.Screen
            name="AddStudent"
            component={AddStudentScreen}
            options={{ headerShown: true, title: "Add Student" }}
          />
        </Stack.Navigator>
      </NavigationContainer>
    </AuthContext.Provider>
  );
}

// Export AuthContext to be used in other components, like LoginScreen
export { AuthContext };
