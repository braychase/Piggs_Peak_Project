import React, { useState } from "react";
import {
  View,
  TextInput,
  Button,
  StyleSheet,
  ScrollView,
  Text,
  TouchableOpacity,
} from "react-native";

const AddStudentPage = ({ onSaveStudent }) => {
  const [studentName, setStudentName] = useState("");
  // Include other state hooks for each field...

  const handleSaveStudent = () => {
    // Logic to save student information
    onSaveStudent({
      studentName,
      // Include other fields...
    });
  };

  return (
    <ScrollView style={styles.formContainer}>
      <View style={styles.tabBar}>{/* Tabs would go here */}</View>
      {/* You would replicate this TextInput for each field */}
      <TextInput
        placeholder="Surname"
        value={studentName}
        onChangeText={setStudentName}
        style={styles.input}
      />
      {/* ... other fields ... */}
      <TouchableOpacity onPress={handleSaveStudent} style={styles.saveButton}>
        <Text>Save Student</Text>
      </TouchableOpacity>
    </ScrollView>
  );
};

const styles = StyleSheet.create({
  formContainer: {
    flex: 1,
    padding: 10,
  },
  tabBar: {
    flexDirection: "row",
    justifyContent: "space-around",
  },
  input: {
    borderWidth: 1,
    borderColor: "#ddd",
    padding: 10,
    fontSize: 18,
    borderRadius: 6,
  },
  saveButton: {
    backgroundColor: "blue",
    padding: 20,
    borderRadius: 5,
    alignItems: "center",
  },
});

export default AddStudentPage;
