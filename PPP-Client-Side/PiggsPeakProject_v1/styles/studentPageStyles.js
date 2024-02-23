import { StyleSheet } from "react-native";
import COLORS from "../constants/colors";

const styles = StyleSheet.create({
  fullScreen: {
    flex: 1,
  },
  container: {
    flex: 1,
    justifyContent: "center",
    padding: 20,
  },
  dataTableScroll: {
    maxHeight: "90%",
  },
  dataTable: {
    backgroundColor: COLORS.gray,
  },
  filterAndButtonsContainer: {
    flexDirection: "row",
    justifyContent: "center",
    alignItems: "center",
    marginTop: 10,
    marginBottom: 30,
  },
  filterInput: {
    width: "20%",
    backgroundColor: "white",
    marginHorizontal: 10,
  },
  textCenter: {
    textAlign: "center",
    fontSize: 28,
    fontWeight: "500",
    color: COLORS.black,
    marginBottom: 20,
  },
  searchContainer: {
    flexDirection: "row",
    marginBottom: 20,
    alignItems: "center",
  },
  searchInput: {
    flex: 1,
    fontSize: 18,
    backgroundColor: "white",
    paddingHorizontal: 10,
    height: 40,
    borderRadius: 5,
  },
  clearButton: {
    backgroundColor: COLORS.alert,
    padding: 10,
    borderRadius: 5,
    borderColor: COLORS.black,
    borderWidth: 1,
    marginRight: "15%",
  },
  clearButtonText: {
    color: "white",
    fontSize: 18,
  },
  schoolPicker: {
    height: 50,
    width: "100%",
    color: "black",
    marginBottom: 20,
  },
  buttonContainer: {
    flexDirection: "row",
    justifyContent: "space-between",
    padding: 10,
  },
  addButton: {
    backgroundColor: COLORS.primary,
    padding: 10,
    borderRadius: 5,
  },
  editButton: {
    backgroundColor: COLORS.primary,
    padding: 10,
    borderRadius: 5,
  },
  buttonText: {
    color: COLORS.white,
    textAlign: "center",
  },
  selectedRow: {
    backgroundColor: COLORS.selected,
  },
  filterToggle: {
    flexDirection: "row",
    justifyContent: "center",
    alignItems: "center",
    marginBottom: 10,
  },
  filterToggleText: {
    marginRight: 10,
    color: "black",
    fontSize: 18,
  },
  picker: {
    backgroundColor: "white",
    marginBottom: 15,
  },
  viewSponsorsButton: {
    backgroundColor: COLORS.primary,
    padding: 10,
    borderRadius: 5,
  },
  searchButton: {
    backgroundColor: COLORS.primary,
    padding: 10,
    borderRadius: 5,
    borderColor: COLORS.white,
    borderWidth: 1,
    marginLeft: "15%",
  },
  navButton: {
    backgroundColor: COLORS.lightGray,
    padding: 10,
    borderRadius: 5,
    borderColor: COLORS.white,
    borderWidth: 1,
  },
});

export default styles;
