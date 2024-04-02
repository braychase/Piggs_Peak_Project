import { StyleSheet } from "react-native";
import COLORS from "../constants/colors";

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  tabsContainer: {
    flexDirection: "row",
    marginTop: 20,
    padding: 20,
    justifyContent: "space-between", // Space the tabs evenly
  },
  tab: {
    paddingVertical: 10,
    alignItems: "center",
    justifyContent: "center",
    borderWidth: 1,
    borderColor: COLORS.gray,
    borderRadius: 20, // Rounded corners for tabs
    flex: 1, // Each tab takes equal width
    marginHorizontal: 5, // Spacing between tabs
  },
  firstTab: {
    marginLeft: 0,
  },
  lastTab: {
    marginRight: 0,
  },
  selectedTab: {
    backgroundColor: COLORS.primary,
  },
  unselectedTab: {
    backgroundColor: COLORS.gray,
  },
  tabText: {
    textAlign: "center",
    fontSize: 16,
  },
  selectedTabText: {
    color: COLORS.white,
  },
  unselectedTabText: {
    color: COLORS.black,
  },
  formContainer: {
    backgroundColor: COLORS.lightGray,
    padding: 20,
    borderRadius: 20,
    margin: 20,
    marginTop: 0, // Remove the top margin to align with the tabs
    shadowColor: "#000", // Add shadow for elevation effect
    shadowOffset: {
      width: 0,
      height: 2,
    },
    shadowOpacity: 0.25,
    shadowRadius: 3.84,
    elevation: 5,
  },
  row: {
    flexDirection: "row",
    alignItems: "center",
    marginBottom: 10,
  },
  label: {
    fontSize: 16,
    width: "25%", // Labels take up 25% of the row
    paddingRight: 10, // Add some padding for spacing
  },
  input: {
    marginBottom: 10,
    borderRadius: 10,
    fontSize: 16,
    width: "50%", // Input takes up half the remaining space
    elevation: 0, // No shadow for the input fields
    shadowOpacity: 0, // No shadow for the input fields
    margin: 5,
    height: 40,
  },
  longInput: {
    marginBottom: 10,
    borderRadius: 10,
    fontSize: 16,
    width: "100%", // Input takes up the remaining space
    elevation: 0, // No shadow for the input fields
    shadowOpacity: 0, // No shadow for the input fields
    margin: 5,
    height: 40,
  },
  smallTextInput: {
    width: "15%", // Smaller width for short inputs like M/F and Age
    marginRight: 10,
    marginBottom: 10,
    borderRadius: 10,
    fontSize: 16,
    elevation: 0, // No shadow for the input fields
    shadowOpacity: 0, // No shadow for the input fields
    margin: 5, // Spacing between this input and the next component
    height: 40,
  },
  mediumTextInput: {
    width: "25%", // Smaller width for short inputs like M/F and Age
    marginRight: 10,
    marginBottom: 10,
    borderRadius: 10,
    fontSize: 16,
    elevation: 0, // No shadow for the input fields
    shadowOpacity: 0, // No shadow for the input fields
    margin: 5, // Spacing between this input and the next component
    height: 40,
  },
  genderPickerContainer: {
    flex: 1, // Adjust based on layout
    margin: 5,
    borderRadius: 10,
    borderWidth: 1,
    borderColor: "#000", // Placeholder, adjust as needed
    backgroundColor: "#fff", // Background color for picker
  },
  genderPicker: {
    width: "100%", // Ensure the picker fills the container
    height: 40, // Adjust height as necessary
  },
  imagePlaceholder: {
    width: 90,
    height: 90,
    borderRadius: 45, // Half of the width and height to make it circular
    backgroundColor: COLORS.secondary,
    borderColor: COLORS.black,
    // justifyContent: "center",
    // alignItems: "center",
    marginRight: 10,
    borderWidth: 1,
  },
  changeButtonText: {
    color: COLORS.white,
    fontSize: 16,
  },
  deleteButtonText: {
    color: COLORS.black,
    fontSize: 16,
  },
  // Additional row for the image and buttons
  imageRow: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
  },
  imageButtonsContainer: {
    flexDirection: "column",
    justifyContent: "flex-start",
    alignItems: "flex-start",
  },
  buttonsContainer: {
    flexDirection: "row",
    justifyContent: "space-between", // Adjust as needed
    width: "100%", // Take up the full width of the container
    marginTop: 10, // Add some space between the image and the buttons
  },
  changeButton: {
    paddingVertical: 10,
    paddingHorizontal: 20,
    borderRadius: 5,
    backgroundColor: COLORS.primary,
    // justifyContent: "center",
    // alignItems: "center",
    borderColor: COLORS.white,
    borderWidth: 1,
    elevation: 2,
    marginBottom: 10,
    // Removed marginHorizontal to control width directly
    //width: "45%", // Adjust the width as needed to make the button smaller
  },
  deleteButton: {
    paddingVertical: 10,
    paddingHorizontal: 20,
    borderRadius: 5,
    backgroundColor: COLORS.gray,
    // justifyContent: "center",
    // alignItems: "center",
    borderColor: COLORS.black,
    borderWidth: 1,
    elevation: 2,
    // Removed marginHorizontal to control width directly
    //width: "45%", // Adjust the width as needed to make the button smaller
  },
  saveButton: {
    paddingVertical: 12,
    paddingHorizontal: 20,
    borderRadius: 5,
    backgroundColor: "blue", // Use a color that matches your theme
    justifyContent: "center",
    alignItems: "center",
    elevation: 2,
    marginHorizontal: 20,
    marginBottom: 20, // To add some space from the bottom of the screen
  },
  saveButtonText: {
    color: "#ffffff", // Text color for the button
    fontSize: 18,
    fontWeight: "bold", // If you want the font to be bold
  },
  gridContainer: {
    flexDirection: "column",
    justifyContent: "space-evenly", // Distribute rows evenly within the container
    margin: 20,
  },
  gridRow: {
    flexDirection: "row",
    justifyContent: "space-evenly", // Distribute cells evenly within the row
    marginBottom: 10, // Space between rows
  },
  gridCell: {
    width: "30%", // Divide width by number of cells per row, adjust as necessary
    padding: 2, // Optional padding to reduce the size of the picker
  },
  gridPicker: {
    width: "100%",
    // If you need to style the Picker component itself, add styles here
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
  picker: {
    flex: 1,
    height: 40,
    // Style your picker as needed
  },
  slider: {
    flex: 1,
    // Style your slider as needed
  },
  priorityValue: {
    width: 50,
    textAlign: "center",
    // Style the priority value text as needed
  },
  commentsInput: {
    flex: 1,
    borderWidth: 1,
    borderColor: "gray",
    padding: 10,
    textAlignVertical: "top", // Aligns text to the top on Android
    // Additional styles for the comments input box
  },
  horizontalRow: {
    flexDirection: "row", // Align items horizontally
    alignItems: "center", // Center items vertically in the container
    marginBottom: 10, // Add some space below the row
  },
  ovcLabel: {
    // Your existing label styling...
    // Ensure it doesn't flex to take up all horizontal space
    flex: 1,
    marginRight: 5, // Adjust the width as needed to fit your layout
  },
  ovcPicker: {
    flex: 1, // Allow the picker to expand and fill available space
    height: 40, // Adjust the height as needed
  },
  pickerLabel: {
    marginRight: 5,
  },
  studentFullName: {
    fontSize: 20,
    fontWeight: "bold",
    textAlign: "center",
    marginBottom: 20, // Add some space below the name
  },
  image: {
    width: 110,
    height: 110,
    borderRadius: 10, // Adjust as needed
    resizeMode: "cover",
    marginRight: 10,
  },
});

export default styles;
