import React, { useState, createContext, useContext } from "react";
import { NavigationContainer } from "@react-navigation/native";
import { createStackNavigator } from "@react-navigation/stack";
import { createBottomTabNavigator } from "@react-navigation/bottom-tabs";
import LoginScreen from "./LoginScreen";
import StudentPage from "./StudentPage";
import HomePage from "./HomePage";
import { Image, View, Text, StyleSheet } from "react-native";

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

const StudentScreen = () => {
  return <StudentPage />;
};

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

  return (
    <AuthContext.Provider value={{ isLoggedIn, setLoggedIn }}>
      <NavigationContainer>
        <Stack.Navigator>
          {!isLoggedIn ? (
            // Login screen should not have the tab navigator visible
            <Stack.Screen
              name="Login"
              component={LoginScreen}
              options={{ headerShown: false }}
            />
          ) : (
            // Once logged in, the tab navigator becomes the main screen
            <Stack.Screen
              name="Main"
              component={TabNavigator}
              options={{ headerShown: false }}
            />
          )}
        </Stack.Navigator>
      </NavigationContainer>
    </AuthContext.Provider>
  );
}

// Export AuthContext to be used in other components, like LoginScreen
export { AuthContext };
