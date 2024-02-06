import React, { useState } from "react";
import { View, Text, StyleSheet, Pressable, CheckBox } from "react-native";
import { LinearGradient } from "expo-linear-gradient";
import { DatePickerInput } from "react-native-paper-dates";
import COLORS from "../constants/colors";
import { TextInput } from "react-native-paper";
import { Picker } from "@react-native-picker/picker";

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
  const [selectedTab, setSelectedTab] = useState("Personal");
  const [surname, setSurname] = useState("");
  const [middleName, setMiddleName] = useState("");
  const [firstName, setFirstName] = useState("");
  const [gender, setGender] = useState("");
  const [dob, setDob] = useState(new Date());
  const [checked, setChecked] = useState(false);
  const [primarySchool, setPrimarySchool] = useState("");
  const [highSchool, setHighSchool] = useState("");
  const [yearFinished, setYearFinished] = useState("");
  const [dateEnrolled, setDateEnrolled] = useState(new Date());
  const [year, setYear] = useState("");
  const [form, setForm] = useState("");
  const [ambitionAfterGraduation, setAmbitionAfterGraduation] = useState("");
  const [favoriteSubject, setFavoriteSubject] = useState("");

  const calculateAge = (dob) => {
    const today = new Date();
    const age = today.getFullYear() - dob.getFullYear();
    const m = today.getMonth() - dob.getMonth();
    if (m < 0 || (m === 0 && today.getDate() < dob.getDate())) {
      return age - 1;
    }
    return age;
  };

  return (
    <LinearGradient
      style={styles.container}
      colors={[COLORS.secondary, COLORS.primary]}
    >
      <View style={styles.tabsContainer}>
        {["Personal", "School", "Family", "Comments"].map(
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
            <TextInput
              mode="outlined"
              label="M/F"
              value={gender}
              onChangeText={setGender}
              style={[styles.smallTextInput]}
            />
            <View style={styles.checkboxContainer}>
              <Text style={styles.label}>OVC</Text>
              <CheckBox
                value={checked}
                onValueChange={(newValue) => {
                  setChecked(newValue);
                  console.log("Checked:", newValue);
                }}
                style={styles.checkbox}
              />
            </View>
          </View>
          <View style={styles.row}>
            <DatePickerInput
              locale="en"
              label=""
              value={dob}
              onChange={setDob}
              inputMode="start"
              style={[styles.input]}
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
              value={primarySchool}
              onChangeText={setPrimarySchool}
              style={styles.input}
            />
            <TextInput
              mode="outlined"
              label="Year Finished"
              value={yearFinished}
              onChangeText={setYearFinished}
              style={styles.input}
            />
          </View>
          <View style={styles.row}>
            <TextInput
              mode="outlined"
              label="High School"
              value={highSchool}
              onChangeText={setHighSchool}
              style={styles.input}
            />
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
            style={styles.input}
          />
          <TextInput
            mode="outlined"
            label="Favorite Subject"
            value={favoriteSubject}
            onChangeText={setFavoriteSubject}
            style={styles.input}
          />
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
    width: "50%", // Input takes up the remaining space
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
  checkboxContainer: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "center",
    minWidth: "40%", // Set a minimum width for the container
    marginHorizontal: 5, // Add some horizontal margin
  },
  checkbox: {
    marginRight: 8,
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
  // Add any additional styles for image placeholder and buttons if needed
});

export default AddStudentPage;
