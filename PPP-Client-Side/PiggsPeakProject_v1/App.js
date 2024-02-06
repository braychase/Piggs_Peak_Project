import React from "react";
import { NavigationContainer } from "@react-navigation/native";
import { createStackNavigator } from "@react-navigation/stack";
import { createBottomTabNavigator } from "@react-navigation/bottom-tabs";
import {
  LoginScreen,
  HomePage,
  StudentPage,
  AddStudentPage,
  InterviewPage,
  MorePage,
} from "./screens";
import { Image, View, Text } from "react-native";
import { Provider as PaperProvider } from "react-native-paper";

const Stack = createStackNavigator();
const Tab = createBottomTabNavigator();

// HomeScreen Component
function HomeScreen() {
  return <HomePage />;
}

// StudentScreen Component that now correctly passes the navigation prop
function StudentScreen({ navigation }) {
  return <StudentPage navigation={navigation} />;
}

function InterviewScreen() {
  return <InterviewPage />;
}

// MoreScreen Component
function MoreScreen() {
  return <MorePage />;
}

// StudentStack Navigator for the Students tab, including AddStudentPage
const StudentStack = () => {
  return (
    <Stack.Navigator initialRouteName="StudentMain">
      <Stack.Screen
        name="StudentMain"
        component={StudentScreen}
        options={{ headerShown: false }}
      />
      <Stack.Screen
        name="AddStudent"
        component={AddStudentPage}
        options={{ headerShown: false }}
      />
    </Stack.Navigator>
  );
};

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

          // You can return any component that you like here!
          return <Image source={iconName} style={{ width: 24, height: 24 }} />;
        },
      })}
      tabBarOptions={{
        activeTintColor: "blue",
        inactiveTintColor: "gray",
        style: { display: "flex" },
      }}
    >
      <Tab.Screen
        name="Home"
        component={HomeScreen}
        options={{ headerShown: false }}
      />
      <Tab.Screen
        name="Students"
        component={StudentStack} // Use the StudentStack here
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
  return (
    <NavigationContainer>
      <Stack.Navigator>
        <Stack.Screen
          name="Login"
          component={LoginScreen}
          options={{ headerShown: false }}
        />
        <Stack.Screen
          name="Main"
          component={TabNavigator}
          options={{ headerShown: false }}
        />
      </Stack.Navigator>
    </NavigationContainer>
  );
}
