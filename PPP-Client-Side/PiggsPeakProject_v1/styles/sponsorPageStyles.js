import { StyleSheet } from "react-native";
import COLORS from "../constants/colors";

const styles = StyleSheet.create({
    container: {
      flex: 1,
      padding: 10,
    },
    backButton: {
      margin: 10,
      width: 50,
      alignItems: "center",
    },
    studentFullName: {
      fontSize: 20,
      fontWeight: "bold",
      textAlign: "center",
      marginBottom: 20, // Add some space below the name
    },
    tableContainer: {
      marginTop: 10,
      borderWidth: 1,
      borderColor: COLORS.black,
      backgroundColor: COLORS.white,
      marginBottom: 10,
      marginLeft: 10,
      marginRight: 10,
    },
    // Add other styles as needed
  });
  
  export default styles;