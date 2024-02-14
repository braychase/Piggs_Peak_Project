import React, { useState, useEffect } from "react";
import { View, Text, StyleSheet, Pressable, ScrollView } from "react-native";
import { LinearGradient } from "expo-linear-gradient";
import { DatePickerInput } from "react-native-paper-dates";
import COLORS from "../constants/colors";
import { TextInput, DataTable } from "react-native-paper";
import { Picker } from "@react-native-picker/picker";
import Slider from "@react-native-community/slider";
import { useNavigation, useRoute } from "@react-navigation/native";
import { getSchools } from "../services/SchoolService";

const Tab = ({ selected, title, onPress, isFirst, isLast }) => {
  return (
    <Pressable
      style={[
        styles.tab,
        selected ? styles.selectedTab : styles.unselectedTab,
        isFirst && styles.firstTab,
        isLast && styles.lastTab,
      ]}
      onPress={onPress}
    >
      <Text
        style={[
          styles.tabText,
          selected ? styles.selectedTabText : styles.unselectedTabText,
        ]}
      >
        {title}
      </Text>
    </Pressable>
  );
};

const AddStudentPage = () => {
  const [schools, setSchools] = useState([]);
  const route = useRoute();
  const studentID = route.params?.studentID;
  const [selectedTab, setSelectedTab] = useState("Personal");
  const [surname, setSurname] = useState("");
  const [middleName, setMiddleName] = useState("");
  const [firstName, setFirstName] = useState("");
  const [gender, setGender] = useState("");
  const [ovc, setOVC] = useState("");
  const [dob, setDob] = useState(new Date());
  //const [checked, setChecked] = useState(false);
  const [primarySchool, setPrimarySchool] = useState("");
  const [highSchool, setHighSchool] = useState("null");
  const [yearFinished, setYearFinished] = useState("");
  const [dateEnrolled, setDateEnrolled] = useState(new Date());
  const [year, setYear] = useState("");
  const [form, setForm] = useState("");
  const [ambitionAfterGraduation, setAmbitionAfterGraduation] = useState("");
  const [favoriteSubject, setFavoriteSubject] = useState("");
  const [motherLiving, setMotherLiving] = useState("No");
  const [motherAtHome, setMotherAtHome] = useState("No");
  const [motherWorking, setMotherWorking] = useState("No");
  const [motherUnknown, setMotherUnknown] = useState("No");
  const [fatherLiving, setFatherLiving] = useState("No");
  const [fatherAtHome, setFatherAtHome] = useState("No");
  const [fatherWorking, setFatherWorking] = useState("No");
  const [fatherUnknown, setFatherUnknown] = useState("No");
  const [recommend, setRecommend] = useState("Yes");
  const [priority, setPriority] = useState(10);
  const [comments, setComments] = useState("");
  // Placeholder for sibling data rows
  const siblingRows = Array.from({ length: 3 }, (_, index) => ({
    key: `sibling-${index}`, // Unique key for each row
    name: "",
    paysFee: "",
    age: "",
    school: "",
    grade: "",
  }));

  const onSelectionChange = (cellKey, value) => {
    setGridSelections((prevSelections) => ({
      ...prevSelections,
      [cellKey]: value,
    }));
  };

  const calculateAge = (dob) => {
    const today = new Date();
    const age = today.getFullYear() - dob.getFullYear();
    const m = today.getMonth() - dob.getMonth();
    if (m < 0 || (m === 0 && today.getDate() < dob.getDate())) {
      return age - 1;
    }
    return age;
  };

  useEffect(() => {
    const fetchStudentData = async () => {
      if (studentID) {
        try {
          const response = await fetch(
            `https://localhost:7208/api/Student/${studentID}`
          );
          if (!response.ok) {
            throw new Error("Network response was not ok");
          }
          const studentData = await response.json();

          // Populate form fields with fetched data
          setSurname(studentData.lastName || "");
          setMiddleName(studentData.middleName || "");
          setFirstName(studentData.firstName || "");
          setGender(studentData.gender || "");
          setOVC(studentData.ovc || "");

          // Handle birthDate
          if (studentData.birthDate) {
            const parsedDob = new Date(studentData.birthDate);
            setDob(parsedDob);
          }
        } catch (error) {
          console.error("Failed to fetch student data:", error);
        }
      }
    };

    const fetchSchoolsData = async () => {
      try {
        const schoolsData = await getSchools(); // Assuming this returns an array of school objects
        setSchools(schoolsData);
      } catch (error) {
        console.error("Failed to fetch schools data:", error);
      }
    };

    fetchStudentData();
    fetchSchoolsData();
  }, [studentID]);

  return (
    <LinearGradient
      style={styles.container}
      colors={[COLORS.secondary, COLORS.primary]}
    >
      <View style={styles.tabsContainer}>
        {["Personal", "School", "Grades", "Family", "Comments"].map(
          (tab, index, array) => (
            <Tab
              key={tab}
              title={tab}
              selected={selectedTab === tab}
              onPress={() => setSelectedTab(tab)}
              isFirst={index === 0}
              isLast={index === array.length - 1}
            />
          )
        )}
      </View>

      {selectedTab === "Personal" && (
        <View style={styles.formContainer}>
          <View style={styles.row}>
            <TextInput
              mode="outlined"
              label="Surname"
              value={surname}
              onChangeText={setSurname}
              style={[styles.input]}
            />
            <TextInput
              mode="outlined"
              label="Middle Name"
              value={middleName}
              onChangeText={setMiddleName}
              style={[styles.input]}
            />
          </View>
          <View style={styles.row}>
            <TextInput
              mode="outlined"
              label="First Name"
              value={firstName}
              onChangeText={setFirstName}
              style={[styles.input]}
            />
            {/* Gender Picker instead of CheckBox for M/F */}
            <View style={[styles.input, styles.smallTextInput]}>
              <Picker
                selectedValue={gender}
                onValueChange={(itemValue) => setGender(itemValue)}
                style={styles.genderPicker}
              >
                <Picker.Item label="Male" value="M" />
                <Picker.Item label="Female" value="F" />
              </Picker>
            </View>
            {/* OVC Picker with Label */}
            <View style={styles.horizontalRow}>
              <Text style={[styles.ovcLabel, { marginLeft: 20 }]}>OVC:</Text>
              <Picker
                selectedValue={ovc}
                onValueChange={(itemValue) => setOVC(itemValue)}
                style={styles.ovcPicker} // Apply specific styling for the OVC Picker
              >
                <Picker.Item label="Yes" value="Y" />
                <Picker.Item label="No" value="N" />
              </Picker>
            </View>
          </View>
          <View style={styles.row}>
            <DatePickerInput
              locale="en"
              label="Date of Birth"
              value={dob}
              onChange={(newValue) => setDob(newValue)}
              inputMode="start"
              style={styles.input}
              mode="outlined"
            />
            <TextInput
              placeholder="Age"
              value={calculateAge(dob).toString()}
              style={[styles.smallTextInput]}
              editable={false}
            />
            <Text style={styles.label}>Age</Text>
          </View>
          {/* New row for the picture and buttons */}
          <View style={styles.imageRow}>
            <View style={styles.imagePlaceholder}></View>
            <Pressable style={styles.changeButton}>
              <Text style={styles.changeButtonText}>Change Picture</Text>
            </Pressable>
            <Pressable style={styles.deleteButton}>
              <Text style={styles.deleteButtonText}>Delete Picture</Text>
            </Pressable>
          </View>
        </View>
      )}
      {selectedTab === "School" && (
        <View style={styles.formContainer}>
          <View style={styles.row}>
            <TextInput
              mode="outlined"
              label="Primary School"
              value={form}
              onChangeText={setForm}
              style={styles.input}
            />
            <TextInput
              mode="outlined"
              label="Year Finished"
              value={yearFinished}
              onChangeText={setYearFinished}
              style={styles.mediumTextInput}
            />
          </View>
          <View style={styles.row}>
            <Text style={styles.pickerLabel}>High School :</Text>
            <Picker
              selectedValue={highSchool}
              style={styles.picker}
              onValueChange={(itemValue, itemIndex) => setHighSchool(itemValue)}
              placeholder="Select High School"
            >
              {schools.map((school, index) => (
                <Picker.Item
                  key={index}
                  label={school.description}
                  value={school.schoolCode}
                />
              ))}
            </Picker>
            <TextInput
              mode="outlined"
              label="Year"
              value={year}
              onChangeText={setYear}
              style={styles.smallTextInput}
            />
          </View>
          <View style={styles.row}>
            <DatePickerInput
              locale="en"
              label="Date Enrolled"
              value={dateEnrolled}
              onChange={setDateEnrolled}
              inputMode="start"
              style={styles.input}
              mode="outlined"
            />
            <TextInput
              mode="outlined"
              label="Form"
              value={form}
              onChangeText={setForm}
              style={styles.smallTextInput}
            />
          </View>
          <TextInput
            mode="outlined"
            label="Ambition After Graduation"
            value={ambitionAfterGraduation}
            onChangeText={setAmbitionAfterGraduation}
            style={styles.longInput}
          />
          <TextInput
            mode="outlined"
            label="Favorite Subject"
            value={favoriteSubject}
            onChangeText={setFavoriteSubject}
            style={styles.longInput}
          />
        </View>
      )}

      {selectedTab === "Family" && (
        <>
          <View style={styles.formContainer}>
            <View style={styles.gridRow}>
              <Text style={styles.label}></Text>
              <Text style={styles.gridLabel}>Living?</Text>
              <Text style={styles.gridLabel}>At Home?</Text>
              <Text style={styles.gridLabel}>Working?</Text>
              <Text style={styles.gridLabel}>Unknown</Text>
            </View>
            <View style={styles.gridRow}>
              <Text style={styles.label}>Mother</Text>
              <View style={styles.pickerContainer}>
                <Picker
                  selectedValue={motherLiving}
                  onValueChange={(itemValue) => setMotherLiving(itemValue)}
                  style={styles.picker}
                >
                  <Picker.Item label="Yes" value="Y" />
                  <Picker.Item label="No" value="N" />
                </Picker>
              </View>
              <View style={styles.pickerContainer}>
                <Picker
                  selectedValue={motherAtHome}
                  onValueChange={(itemValue) => setMotherAtHome(itemValue)}
                  style={styles.picker}
                >
                  <Picker.Item label="Yes" value="Y" />
                  <Picker.Item label="No" value="N" />
                </Picker>
              </View>
              <View style={styles.pickerContainer}>
                <Picker
                  selectedValue={motherWorking}
                  onValueChange={(itemValue) => setMotherWorking(itemValue)}
                  style={styles.picker}
                >
                  <Picker.Item label="Yes" value="Y" />
                  <Picker.Item label="No" value="N" />
                </Picker>
              </View>
              <View style={styles.pickerContainer}>
                <Picker
                  selectedValue={motherUnknown}
                  onValueChange={(itemValue) => setMotherUnknown(itemValue)}
                  style={styles.picker}
                >
                  <Picker.Item label="Yes" value="Y" />
                  <Picker.Item label="No" value="N" />
                </Picker>
              </View>
            </View>
            <View style={styles.gridRow}>
              <Text style={styles.label}>Father</Text>
              <View style={styles.pickerContainer}>
                <Picker
                  selectedValue={fatherLiving}
                  onValueChange={(itemValue) => setFatherLiving(itemValue)}
                  style={styles.picker}
                >
                  <Picker.Item label="Yes" value="Y" />
                  <Picker.Item label="No" value="N" />
                </Picker>
              </View>
              <View style={styles.pickerContainer}>
                <Picker
                  selectedValue={fatherAtHome}
                  onValueChange={(itemValue) => setFatherAtHome(itemValue)}
                  style={styles.picker}
                >
                  <Picker.Item label="Yes" value="Y" />
                  <Picker.Item label="No" value="N" />
                </Picker>
              </View>
              <View style={styles.pickerContainer}>
                <Picker
                  selectedValue={fatherWorking}
                  onValueChange={(itemValue) => setFatherWorking(itemValue)}
                  style={styles.picker}
                >
                  <Picker.Item label="Yes" value="Y" />
                  <Picker.Item label="No" value="N" />
                </Picker>
              </View>
              <View style={styles.pickerContainer}>
                <Picker
                  selectedValue={fatherUnknown}
                  onValueChange={(itemValue) => setFatherUnknown(itemValue)}
                  style={styles.picker}
                >
                  <Picker.Item label="Yes" value="Y" />
                  <Picker.Item label="No" value="N" />
                </Picker>
              </View>
            </View>
          </View>
          {/* Data table for siblings */}
          <ScrollView style={styles.tableContainer}>
            <DataTable
              theme={{ colors: { text: COLORS.black } }}
              style={styles.dataTable}
            >
              <DataTable.Header>
                <DataTable.Title>Brothers/Sisters</DataTable.Title>
                <DataTable.Title>Who Pays Fees</DataTable.Title>
                <DataTable.Title>Age</DataTable.Title>
                <DataTable.Title>School</DataTable.Title>
                <DataTable.Title>Grade/Form</DataTable.Title>
              </DataTable.Header>

              {/* Map over your sibling data here to create rows */}
              {siblingRows.map((sibling, index) => (
                <DataTable.Row key={index}>
                  <DataTable.Cell>{sibling.name}</DataTable.Cell>
                  <DataTable.Cell>{sibling.paysFee}</DataTable.Cell>
                  <DataTable.Cell>{sibling.age}</DataTable.Cell>
                  <DataTable.Cell>{sibling.school}</DataTable.Cell>
                  <DataTable.Cell>{sibling.grade}</DataTable.Cell>
                </DataTable.Row>
              ))}
            </DataTable>
          </ScrollView>
        </>
      )}

      {selectedTab === "Comments" && (
        <View style={styles.formContainer}>
          <View style={styles.row}>
            <Text style={styles.label}>Recommend?</Text>
            <Picker
              selectedValue={recommend}
              style={styles.picker}
              onValueChange={(itemValue, itemIndex) => setRecommend(itemValue)}
            >
              <Picker.Item label="Yes" value="Yes" />
              <Picker.Item label="No" value="No" />
            </Picker>
          </View>
          <View style={styles.row}>
            <Text style={styles.label}>Priority:</Text>
            <Slider
              style={styles.slider}
              minimumValue={1}
              maximumValue={10}
              step={1}
              value={priority}
              onValueChange={setPriority}
              minimumTrackTintColor={COLORS.primary}
              maximumTrackTintColor={COLORS.secondary}
              thumbTintColor={COLORS.white}
            />
            <Text style={styles.priorityValue}>{priority}</Text>
          </View>
          <View style={styles.row}>
            <Text style={styles.label}>Comments:</Text>
            <TextInput
              style={styles.commentsInput}
              multiline
              numberOfLines={4}
              onChangeText={setComments}
              value={comments}
              placeholder="Type your comment here..."
            />
          </View>
        </View>
      )}
      {/* ... Content for other selected tabs ... */}

      {/* Save Student button */}
      <Pressable style={styles.saveButton}>
        <Text style={styles.saveButtonText}>Save Student</Text>
      </Pressable>
    </LinearGradient>
  );
};

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
    justifyContent: "center",
    alignItems: "center",
    marginRight: 10,
    borderWidth: 1,
  },
  // Style for the buttons
  changeButton: {
    paddingVertical: 10,
    paddingHorizontal: 20,
    borderRadius: 5,
    backgroundColor: COLORS.primary,
    justifyContent: "center",
    alignItems: "center",
    elevation: 2,
    marginHorizontal: 5,
    borderColor: COLORS.white,
    borderWidth: 1,
    marginBottom: 10,
    marginTop: 10,
  },
  changeButtonText: {
    color: COLORS.white,
    fontSize: 16,
  },
  deleteButton: {
    paddingVertical: 10,
    paddingHorizontal: 20,
    borderRadius: 5,
    backgroundColor: COLORS.gray,
    justifyContent: "center",
    alignItems: "center",
    elevation: 2,
    marginHorizontal: 5,
    borderColor: COLORS.black,
    borderWidth: 1,
  },
  deleteButtonText: {
    color: COLORS.black,
    fontSize: 16,
  },
  // Additional row for the image and buttons
  imageRow: {
    imagePlaceholder: {
      width: 90,
      height: 90,
      borderRadius: 45, // Half of the width and height to make it circular
      backgroundColor: "#e1e4e8", // Placeholder color
      justifyContent: "center",
      alignItems: "center",
      marginRight: 10,
    },
    // Style for the buttons
    button: {
      paddingVertical: 10,
      paddingHorizontal: 20,
      borderRadius: 5,
      backgroundColor: COLORS.primary,
      justifyContent: "center",
      alignItems: "center",
      elevation: 2,
      marginHorizontal: 5,
    },
    buttonText: {
      color: "#ffffff",
      fontSize: 16,
    },
    // Additional row for the image and buttons
    imageRow: {
      flexDirection: "row",
      alignItems: "center",
      justifyContent: "center", // Space out the image placeholder and buttons
      marginTop: 10,
    },
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
  tableHeader: {
    flexDirection: "row",
    backgroundColor: COLORS.white,
    borderBottomWidth: 1,
    borderBottomColor: COLORS.black,
  },
  tableHeaderText: {
    flex: 1,
    padding: 10,
    fontWeight: "bold",
    textAlign: "center",
  },
  tableRow: {
    flexDirection: "row",
    borderBottomWidth: 1,
    borderBottomColor: COLORS.gray,
  },
  tableCellText: {
    flex: 1,
    padding: 10,
    textAlign: "center",
    backgroundColor: COLORS.white,
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
});

export default AddStudentPage;
