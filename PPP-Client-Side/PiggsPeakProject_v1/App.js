import { StatusBar, Image } from "react-native";
import React from "react";
import { StyleSheet, Text, View } from "react-native";
import { NavigationContainer } from "@react-navigation/native";
import { createBottomTabNavigator } from "@react-navigation/bottom-tabs";

function HomeScreen() {
  return (
    <View style={styles.container}>
      <Image
        source={require("./assets/HooperStarfish.jpg")}
        style={styles.logo}
      />
      <Text style={styles.welcomeText}>Welcome User!</Text>
      <StatusBar style="auto" />
    </View>
  );
}

function StudentScreen() {
  return (
    <View style={styles.container}>
      <Text>I Contain students</Text>
    </View>
  );
}

function InterviewScreen() {
  return (
    <View style={styles.container}>
      <Text>I am the Interview Page</Text>
    </View>
  );
}

function MoreScreen() {
  return (
    <View style={styles.container}>
      <Text>I am more</Text>
    </View>
  );
}

const Tab = createBottomTabNavigator();

export default function App() {
  return (
    <NavigationContainer>
      <Tab.Navigator
        screenOptions={({ route }) => ({
          tabBarIcon: ({ focused, color, size }) => {
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

            // You can return an Image component with the appropriate source
            return (
              <Image source={iconName} style={{ width: 24, height: 24 }} />
            );
          },
        })}
      >
        <Tab.Screen name="Home" component={HomeScreen} />
        <Tab.Screen name="Students" component={StudentScreen} />
        <Tab.Screen name="Interview" component={InterviewScreen} />
        <Tab.Screen name="More" component={MoreScreen} />
      </Tab.Navigator>
    </NavigationContainer>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#ABEED8",
    alignItems: "center",
    justifyContent: "flex-start",
    paddingTop: 20,
  },
  logo: {
    width: 100, // Adjust the width of the logo as needed
    height: 100, // Adjust the height of the logo as needed
    resizeMode: "contain", // Adjust the resizeMode as needed
    marginBottom: 10, // Optional: Add margin at the bottom of the logo
  },
  welcomeText: {
    fontSize: 24,
    fontWeight: "bold",
  },
});
