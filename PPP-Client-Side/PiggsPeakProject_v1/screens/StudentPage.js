import React, { useState, useEffect } from "react";
import { View, Text, Pressable, ScrollView } from "react-native";
import { DataTable, TextInput } from "react-native-paper";
import { FontAwesomeIcon } from "@fortawesome/react-native-fontawesome";
import {
  faArrowLeft,
  faArrowRight,
  faChevronDown,
  faChevronUp,
} from "@fortawesome/free-solid-svg-icons";
import { getSchools } from "../services/SchoolService";
import { LinearGradient } from "expo-linear-gradient";
import { Picker } from "@react-native-picker/picker";
import styles from "../styles/studentPageStyles";
import CONSTANTS from "../constants/constants";
import COLORS from "../constants/colors";
import AsyncStorage from "@react-native-async-storage/async-storage";

const BASE_URL = CONSTANTS.baseURL;

const StudentPage = ({ navigation }) => {
  const [students, setStudents] = useState([]);
  const [currentPage, setCurrentPage] = useState(1);
  const [selectedSchool, setSelectedSchool] = useState("all");
  const [selectedGender, setSelectedGender] = useState("all");
  const [selectedForm, setSelectedForm] = useState("all");
  const [firstNameQuery, setFirstNameQuery] = useState("");
  const [lastNameQuery, setLastNameQuery] = useState("");
  const [filteredTotalPages, setFilteredTotalPages] = useState(0);
  const [schoolCodeDescriptionMapping, setSchoolCodeDescriptionMapping] =
    useState({});
  const [isFiltersVisible, setIsFiltersVisible] = useState(true);
  const [selectedStudentId, setSelectedStudentId] = useState(null);

  const handleAddStudentPress = () => {
    navigation.navigate("AddStudent");
  };

  const handleViewSponsorsPress = () => {
    navigation.navigate("SponsorPage", { studentID: selectedStudentId });
  };

  const handleEditPress = () => {
    const studentToEdit = students.find(
      (student) => student.studentID === selectedStudentId
    );
    if (studentToEdit) {
      navigation.navigate("AddStudent", {
        studentID: studentToEdit.studentID,
        photoID: studentToEdit.photoId,
      });
    }
  };

  const selectStudent = (studentId) => {
    setSelectedStudentId(studentId);
  };

  useEffect(() => {
    const fetchSchoolsData = async () => {
      try {
        const schoolsData = await getSchools();
        const mapping = schoolsData.reduce((acc, school) => {
          acc[school.schoolCode] = school.description;
          return acc;
        }, {});
        setSchoolCodeDescriptionMapping(mapping);

        // Fetching the defaultSchoolID when adding a new student
        // Assuming studentID is null or undefined when adding a new student
        const defaultSchoolID = await AsyncStorage.getItem("defaultSchoolID");
        const defaultSchool = schoolsData.find(
          (school) => school.schoolID.toString() === defaultSchoolID
        );
        if (defaultSchool) {
          setSelectedSchool(defaultSchool.schoolCode);
        }
      } catch (error) {
        console.error("Error loading school data:", error.message);
      }
    };

    fetchSchoolsData();
  }, []);

  const goToNextPage = () => {
    if (currentPage < filteredTotalPages) {
      setCurrentPage(currentPage + 1);
      handleSearchPress(currentPage + 1);
    }
  };

  const goToPrevPage = () => {
    if (currentPage > 1) {
      setCurrentPage(currentPage - 1);
      handleSearchPress(currentPage - 1);
    }
  };

  const handleClearPress = () => {
    setFirstNameQuery("");
    setLastNameQuery("");
    setSelectedSchool("all");
    setSelectedGender("all");
    setSelectedForm("all");
    setCurrentPage(1);
    setStudents([]);
  };

  const handleSearchPress = async (page) => {
    try {
      const queryParams = new URLSearchParams({
        pageNumber: page || currentPage,
        pageSize: 8,
        firstName: firstNameQuery,
        lastName: lastNameQuery,
        schoolCode: selectedSchool !== "all" ? selectedSchool : "",
        gender: selectedGender !== "all" ? selectedGender : "",
        form: selectedForm !== "all" ? selectedForm : "",
      }).toString();

      const response = await fetch(
        `${BASE_URL}/api/StudentSearch?${queryParams}`
      );
      if (response.ok) {
        const data = await response.json();
        setStudents(data.students);
        setFilteredTotalPages(data.totalPages);
        setIsFiltersVisible(false);
      } else {
        console.error("Failed to fetch students");
        setStudents([]);
        setFilteredTotalPages(0);
      }
    } catch (error) {
      console.error("Error loading student data:", error.message);
    }
  };

  return (
    <LinearGradient
      style={styles.fullScreen}
      colors={[COLORS.secondary, COLORS.primary]}
    >
      <View style={styles.container}>
        <Pressable
          onPress={() => setIsFiltersVisible(!isFiltersVisible)}
          style={styles.filterToggle}
        >
          <Text style={styles.filterToggleText}>Filters</Text>
          <FontAwesomeIcon
            icon={isFiltersVisible ? faChevronUp : faChevronDown}
            size={16}
          />
        </Pressable>

        {isFiltersVisible && (
          <>
            <View style={styles.searchContainer}>
              <TextInput
                placeholder="Search by first name"
                onChangeText={setFirstNameQuery}
                value={firstNameQuery}
                style={styles.searchInput}
              />
            </View>

            <View style={styles.searchContainer}>
              <TextInput
                placeholder="Search by last name"
                onChangeText={setLastNameQuery}
                value={lastNameQuery}
                style={styles.searchInput}
              />
            </View>

            <Picker
              selectedValue={selectedSchool}
              style={styles.picker}
              onValueChange={(itemValue) => setSelectedSchool(itemValue)}
            >
              <Picker.Item label="All Schools" value="all" />
              {Object.entries(schoolCodeDescriptionMapping).map(
                ([code, description]) => (
                  <Picker.Item key={code} label={description} value={code} />
                )
              )}
            </Picker>

            <Picker
              selectedValue={selectedGender}
              style={styles.picker}
              onValueChange={(itemValue) => setSelectedGender(itemValue)}
            >
              <Picker.Item label="All Genders" value="all" />
              <Picker.Item label="Male" value="m" />
              <Picker.Item label="Female" value="f" />
            </Picker>
            <Picker
              selectedValue={selectedForm}
              style={styles.picker}
              onValueChange={(itemValue) => setSelectedForm(itemValue)}
            >
              <Picker.Item label="All Forms" value="all" />
              <Picker.Item label="None" value="null" />
              <Picker.Item label="1" value={1} />
              <Picker.Item label="2" value={2} />
              <Picker.Item label="3" value={3} />
              <Picker.Item label="4" value={4} />
              <Picker.Item label="5" value={5} />
            </Picker>

            <View style={styles.buttonContainer}>
              <View style={styles.searchContainer}>
                <Pressable
                  onPress={() => handleSearchPress(1)}
                  style={styles.searchButton}
                >
                  <Text style={styles.buttonText}>Search</Text>
                </Pressable>
              </View>

              <View style={styles.searchContainer}>
                <Pressable
                  onPress={handleClearPress}
                  style={styles.clearButton}
                >
                  <Text style={styles.buttonText}>Clear</Text>
                </Pressable>
              </View>
            </View>
          </>
        )}

        <View style={styles.buttonContainer}>
          <Pressable style={styles.addButton} onPress={handleAddStudentPress}>
            <Text style={styles.buttonText}>Add Student</Text>
          </Pressable>
          <Pressable
            style={[
              styles.viewSponsorsButton,
              { opacity: selectedStudentId ? 1 : 0.5 },
            ]}
            onPress={handleViewSponsorsPress}
            disabled={!selectedStudentId}
          >
            <Text style={styles.buttonText}>View Sponsors</Text>
          </Pressable>
          <Pressable
            style={[
              styles.editButton,
              { opacity: selectedStudentId ? 1 : 0.5 },
            ]}
            onPress={handleEditPress}
            disabled={!selectedStudentId}
          >
            <Text style={styles.buttonText}>Edit Student</Text>
          </Pressable>
        </View>

        <ScrollView style={styles.dataTableScroll}>
          <DataTable
            theme={{ colors: { text: COLORS.black } }}
            style={styles.dataTable}
          >
            <DataTable.Header>
              <DataTable.Title>Name</DataTable.Title>
              <DataTable.Title>School Code</DataTable.Title>
              <DataTable.Title>Gender</DataTable.Title>
              <DataTable.Title>Form</DataTable.Title>
            </DataTable.Header>
            {students.map((student) => (
              <DataTable.Row
                key={student.studentID}
                onPress={() => selectStudent(student.studentID)}
                style={[
                  styles.row,
                  student.studentID === selectedStudentId && styles.selectedRow,
                ]}
              >
                <DataTable.Cell>{student.studentName}</DataTable.Cell>
                <DataTable.Cell>{student.schoolCode}</DataTable.Cell>
                <DataTable.Cell>{student.gender}</DataTable.Cell>
                <DataTable.Cell>{student.form}</DataTable.Cell>
              </DataTable.Row>
            ))}
          </DataTable>
        </ScrollView>

        <View style={styles.buttonContainer}>
          <Pressable
            onPress={goToPrevPage}
            disabled={currentPage === 1}
            style={[styles.navButton, { opacity: currentPage === 1 ? 0.5 : 1 }]}
          >
            <FontAwesomeIcon icon={faArrowLeft} size={16} />
            <Text>Prev</Text>
          </Pressable>

          <Pressable
            onPress={goToNextPage}
            disabled={currentPage >= filteredTotalPages}
            style={[
              styles.navButton,
              { opacity: currentPage >= filteredTotalPages ? 0.5 : 1 },
            ]}
          >
            <Text>Next</Text>
            <FontAwesomeIcon icon={faArrowRight} size={16} />
          </Pressable>
        </View>
      </View>
    </LinearGradient>
  );
};

export default StudentPage;
