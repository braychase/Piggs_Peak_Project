import React, { useState, useEffect } from "react";
import {
  View,
  Text,
  StyleSheet,
  Pressable,
  ScrollView,
  Image,
} from "react-native";
import { LinearGradient } from "expo-linear-gradient";
import { DatePickerInput } from "react-native-paper-dates";
import COLORS from "../constants/colors";
import { TextInput, DataTable } from "react-native-paper";
import { Picker } from "@react-native-picker/picker";
import Slider from "@react-native-community/slider";
import { useNavigation, useRoute } from "@react-navigation/native";
import { getSchools } from "../services/SchoolService";
import { getStudentById, updateStudentById } from "../services/StudentService";
import { getStudentPhotoById } from "../services/StudentPhotoService";
import { getStudentGradeById } from "../services/StudentGradeService";
import { render } from "react-dom";
import styles from "../styles/addStudentPageStyles";

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
  const [grades, setGrades] = useState([]);
  const [studentPhoto, setStudentPhoto] = useState(null);
  const [schools, setSchools] = useState([]);
  const route = useRoute();
  const { studentID, photoID } = route.params;
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

  const renderStudentFullName = () => {
    if (studentID && (firstName || surname)) {
      const fullName = `${surname}, ${firstName}`.trim();
      return <Text style={styles.studentFullName}>{fullName}</Text>;
    }
    return null;
  };

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
          const studentData = await getStudentById(studentID);

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
    const fetchGradesData = async () => {
      if (studentID) {
        // Make sure studentID is defined
        try {
          const gradesData = await getStudentGradeById(studentID);
          const sortedGrades = gradesData.sort((a, b) => {
            // Convert string dates to Date objects for comparison
            const dateA = new Date(a.effective_dt);
            const dateB = new Date(b.effective_dt);
            return dateB - dateA; // Sort in descending order
          });
          setGrades(sortedGrades);
        } catch (error) {
          console.error("Failed to fetch grades data:", error);
        }
      }
    };
    const fetchStudentPhoto = async () => {
      if (photoID) {
        // Check if photoID is available
        try {
          // Using getStudentPhotoById to obtain the blob
          const blob = await getStudentPhotoById(photoID);
          const imageUrl = URL.createObjectURL(blob); // Create a URL from the blob
          setStudentPhoto(imageUrl); // Update the state with the image URL
        } catch (error) {
          console.error("Error fetching student photo:", error);
        }
      }
    };

    if (studentID) {
      fetchGradesData();
      fetchStudentPhoto(); // Call fetchStudentPhoto with photoID
    }

    fetchStudentData();
    fetchSchoolsData();
  }, [studentID, photoID]);

  const handleSaveStudent = async () => {
    const studentData = {
      lastName: surname,
      middleName: middleName,
      firstName: firstName,
      gender: gender,
      ovc: ovc,
      birthDate: dob.toISOString(),
      primarySchool: primarySchool,
      highSchool: highSchool,
      yearFinished: yearFinished,
      dateEnrolled: dateEnrolled.toISOString(),
      year: year,
      form: form,
      ambitionAfterGraduation: ambitionAfterGraduation,
      favoriteSubject: favoriteSubject,
      motherLiving: motherLiving,
      motherAtHome: motherAtHome,
      motherWorking: motherWorking,
      motherUnknown: motherUnknown,
      fatherLiving: fatherLiving,
      fatherAtHome: fatherAtHome,
      fatherWorking: fatherWorking,
      fatherUnknown: fatherUnknown,
      recommend: recommend,
      priority: priority,
      comments: comments,
    };

    try {
      await updateStudentById(studentID, studentData);
      // Optionally, you can navigate the user away from the page or show a success message
      alert("Student updated successfully");
    } catch (error) {
      // Handle errors, such as by showing an error message to the user
      alert("Failed to update student");
    }
  };

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
      {renderStudentFullName()}
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
            {/* Conditionally display the image or a placeholder */}
            {studentPhoto ? (
              <Image source={{ uri: studentPhoto }} style={styles.image} />
            ) : (
              <View style={styles.imagePlaceholder}></View>
            )}

            {/* Container for the buttons, applying the new buttonsContainer style */}
            <View style={styles.buttonsContainer}>
              <Pressable style={styles.changeButton}>
                <Text style={styles.changeButtonText}>Change Picture</Text>
              </Pressable>
              <Pressable style={styles.deleteButton}>
                <Text style={styles.deleteButtonText}>Delete Picture</Text>
              </Pressable>
            </View>
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

      {selectedTab === "Grades" && (
        <ScrollView style={styles.tableContainer}>
          <DataTable>
            <DataTable.Header>
              <DataTable.Title>Effective Date</DataTable.Title>
              <DataTable.Title>School Name</DataTable.Title>
              <DataTable.Title>Result</DataTable.Title>
              <DataTable.Title>Form Number</DataTable.Title>
            </DataTable.Header>

            {grades.map((grade, index) => (
              <DataTable.Row key={index}>
                <DataTable.Cell>
                  {new Date(grade.effective_dt).toLocaleDateString()}
                </DataTable.Cell>
                <DataTable.Cell>{grade.school_nm}</DataTable.Cell>
                <DataTable.Cell>{grade.result_tx}</DataTable.Cell>
                <DataTable.Cell>{grade.form_nb}</DataTable.Cell>
              </DataTable.Row>
            ))}
          </DataTable>
        </ScrollView>
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
      <Pressable style={styles.saveButton} onPress={handleSaveStudent}>
        <Text style={styles.saveButtonText}>Save Student</Text>
      </Pressable>
    </LinearGradient>
  );
};

export default AddStudentPage;
