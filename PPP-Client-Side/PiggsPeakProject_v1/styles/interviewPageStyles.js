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
  temp: {
    justifyContent: "center",
    marginTop: "25%",
    fontWeight: "bold",
    fontSize: 64,
  },
  block: {
    alignItems: "center",
  },
});

export default styles;
