import { StyleSheet } from "react-native";
import COLORS from "../constants/colors";

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "green",
  },
  navigationButtons: {
    flexDirection: "row",
    justifyContent: "space-between",
    marginHorizontal: 20,
    marginVertical: 10,
  },
  filterContainer: {
    flexDirection: "row",
    justifyContent: "space-between",
    alignItems: "center",
    marginHorizontal: 20,
    marginBottom: 10,
  },
  logoutButton: {
    alignSelf: "flex-end",
    marginTop: 44, // Adjust for status bar height
    marginRight: 16,
    backgroundColor: COLORS.primary,
    borderColor: COLORS.white,
    borderWidth: 1,
    borderRadius: 10,
    paddingVertical: 10,
    paddingHorizontal: 15, // Adjust padding as needed
    marginBottom: 10,
  },
  logoutContent: {
    flexDirection: "row", // Align items side by side
    alignItems: "center", // Center items vertically
  },
  logoutText: {
    color: "#FFFFFF", // Text color
    fontSize: 20, // Match icon size
    fontWeight: "bold",
    marginRight: 10, // Space between text and icon
  },
  block: {
    alignItems: "center",
  },
  temp: {
    justifyContent: "center",
    marginTop: "25%",
    fontWeight: "bold",
    fontSize: 64,
  },
  contentContainer: {
    padding: 20,
  },
  fullWidthButton: {
    backgroundColor: "gray",
    padding: 15,
    borderRadius: 5,
    marginBottom: 10, // Add space between buttons
    alignItems: "center",
  },
  buttonText: {
    color: "#FFFFFF",
    fontSize: 18,
  },
});

export default styles;
