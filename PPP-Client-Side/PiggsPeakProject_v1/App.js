import React from "react";
import { NavigationContainer } from "@react-navigation/native";
import { createStackNavigator } from "@react-navigation/stack";
import { createBottomTabNavigator } from "@react-navigation/bottom-tabs";
import {
  LoginScreen,
  StudentPage,
  AddStudentPage,
  RankingPage,
  MorePage,
  SponsorPage,
  AuditTrailPage,
  MissingDataReportPage,
  PreferencePage,
} from "./screens";
import { Image } from "react-native";
import { ApiProvider } from "./ApiContext";

const Stack = createStackNavigator();
const Tab = createBottomTabNavigator();

// StudentScreen Component that now correctly passes the navigation prop
function StudentScreen({ navigation }) {
  return <StudentPage navigation={navigation} />;
}

function RankingScreen({ navigation }) {
  return <RankingPage navigation={navigation} />;
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
      <Stack.Screen
        name="SponsorPage"
        component={SponsorPage}
        options={{ headerShown: false }}
      />
    </Stack.Navigator>
  );
};

const MoreStack = () => {
  return (
    <Stack.Navigator initialRouteName="MoreMain">
      <Stack.Screen
        name="MoreMain"
        component={MorePage}
        options={{ headerShown: false }}
      />
      <Stack.Screen
        name="AuditTrail"
        component={AuditTrailPage}
        options={{ headerShown: false }}
      />
      <Stack.Screen
        name="MissingDataReport"
        component={MissingDataReportPage}
        options={{ headerShown: false }}
      />
      <Stack.Screen
        name="Preference"
        component={PreferencePage}
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

          if (route.name === "Students") {
            iconName = require("./assets/user.png");
          } else if (route.name === "Ranking") {
            iconName = require("./assets/clipboard.png");
          } else if (route.name === "More") {
            iconName = require("./assets/bars.png");
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
        name="Students"
        component={StudentStack} // Use the StudentStack here
        options={{ headerShown: false }}
      />
      <Tab.Screen
        name="Ranking"
        component={RankingScreen}
        options={{ headerShown: false }}
      />
      <Tab.Screen
        name="More"
        component={MoreStack}
        options={{ headerShown: false }}
      />
    </Tab.Navigator>
  );
}

export default function App() {
  return (
    <ApiProvider>
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
    </ApiProvider>
  );
}
