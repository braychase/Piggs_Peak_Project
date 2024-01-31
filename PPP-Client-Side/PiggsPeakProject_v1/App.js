import React, { useState } from "react";
import { View, Text, Image, StyleSheet } from "react-native";
import { NavigationContainer } from "@react-navigation/native";
import { createStackNavigator } from "@react-navigation/stack";
import { createBottomTabNavigator } from "@react-navigation/bottom-tabs";
import { Provider as PaperProvider } from "react-native-paper"; // Add this line
import LoginScreen from "./LoginScreen";
import LogoutButton from "./LogoutButton";
import StudentPage from "./StudentPage";

const Tab = createBottomTabNavigator();
const Stack = createStackNavigator();

const HomeScreen = () => (
  <View style={styles.container}>
    <Text>Welcome to Home Screen!</Text>
  </View>
);

const StudentScreen = () => (
  <View style={styles.container}>
    <StudentPage />
  </View>
);

const InterviewScreen = () => (
  <View style={styles.container}>
    <Text>Welcome to Interview Screen!</Text>
  </View>
);

const MoreScreen = () => (
  <View style={styles.container}>
    <Text>Welcome to More Screen!</Text>
    <View style={styles.settingsButton}>
      <LogoutButton onPress={() => console.log("Custom logout logic")} />
    </View>
  </View>
);

const TabNavigator = () => (
  <Tab.Navigator
    screenOptions={({ route }) => ({
      tabBarIcon: ({ focused }) => {
        let iconName;

        if (route.name === "Home") {
          iconName = focused
            ? require("./assets/home.png")
            : require("./assets/home.png");
        } else if (route.name === "Students") {
          iconName = focused
            ? require("./assets/user.png")
            : require("./assets/user.png");
        } else if (route.name === "More") {
          iconName = focused
            ? require("./assets/more.png")
            : require("./assets/more.png");
        } else if (route.name === "Interview") {
          iconName = focused
            ? require("./assets/clipboard.png")
            : require("./assets/clipboard.png");
        }

        return <Image source={iconName} style={{ width: 24, height: 24 }} />;
      },
    })}
    tabBarOptions={{
      activeTintColor: "blue",
      inactiveTintColor: "gray",
    }}
  >
    <Tab.Screen name="Home" component={HomeScreen} />
    <Tab.Screen name="Students" component={StudentScreen} />
    <Tab.Screen name="Interview" component={InterviewScreen} />
    <Tab.Screen name="More" component={MoreScreen} />
  </Tab.Navigator>
);

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#ABEED8",
    alignItems: "center",
    justifyContent: "center",
    borderRadius: 20,
  },
  settingsButton: {
    position: "absolute",
    top: 10,
    right: 10,
  },
});

export default function App() {
  const [isLoggedIn, setLoggedIn] = useState(false);

  return (
    <PaperProvider>
      {" "}
      {/* Wrap your App component with PaperProvider */}
      <NavigationContainer>
        <Stack.Navigator>
          {isLoggedIn ? (
            <Stack.Screen
              name="Home"
              component={TabNavigator}
              options={{ headerShown: false }}
            />
          ) : (
            <Stack.Screen
              name="Login"
              component={LoginScreen}
              initialParams={{ setLoggedIn }}
              options={{ headerShown: false }}
            />
          )}
        </Stack.Navigator>
      </NavigationContainer>
    </PaperProvider>
  );
}
