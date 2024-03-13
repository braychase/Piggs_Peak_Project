import { StyleSheet } from "react-native";
import COLORS from "../constants/colors";

const styles = StyleSheet.create({
  root: {
    alignItems: "center",
    padding: 20,
    marginTop: "10%",
  },
  logo: {
    width: 200,
    height: 200,
    borderRadius: 10,
    marginTop: "-10%",
  },
  action: {
    flexDirection: "row",
    paddingTop: 14,
    paddingBottom: 14,
    marginTop: 15,
    paddingHorizontal: 15,
    borderWidth: 1,
    borderColor: COLORS.gray,
    borderRadius: 50,
    backgroundColor: COLORS.white,
    width: "80%",
    marginHorizontal: "10%",
  },
  textCenter: {
    textAlign: "center",
    fontSize: 28,
    fontWeight: "500",
    color: COLORS.black,
    marginTop: "10%",
  },
  loginButton: {
    backgroundColor: "blue",
    width: "50%",
    marginHorizontal: "25%",
    padding: 14,
    marginTop: 25,
    textAlign: "center",
    fontWeight: "500",
    color: COLORS.white,
    borderWidth: 2,
    borderColor: COLORS.white,
    fontSize: 15,
  },
  errorText: {
    color: "red",
    textAlign: "center",
    marginTop: 10,
  },
  // Add other styles as needed
});

export default styles;
