import React, { useState, useEffect } from "react";
import { View, StyleSheet, Text, Pressable, ScrollView } from "react-native";
import { DataTable, TextInput } from "react-native-paper";
import { FontAwesomeIcon } from "@fortawesome/react-native-fontawesome";
import {
  faArrowLeft,
  faArrowRight,
  faChevronDown,
  faChevronUp,
} from "@fortawesome/free-solid-svg-icons";
import { getStudents } from "../services/StudentSearchService";
import { getSchools } from "../services/SchoolService";
import COLORS from "../constants/colors";
import { LinearGradient } from "expo-linear-gradient";
import { Picker } from "@react-native-picker/picker";
import styles from "../styles/studentPageStyles";

const StudentPage = ({ navigation }) => {
  const [allStudents, setAllStudents] = useState([]);
  const [students, setStudents] = useState([]);
  const [selectedSchool, setSelectedSchool] = useState("all");
  const [selectedGender, setSelectedGender] = useState("all");
  const [selectedForm, setSelectedForm] = useState("all");
  const [itemsPerPage, setItemsPerPage] = useState(10);
  const [currentPage, setCurrentPage] = useState(1);
  const [searchQuery, setSearchQuery] = useState("");
  const [filteredTotalPages, setFilteredTotalPages] = useState(0);
  const [schoolCodeDescriptionMapping, setSchoolCodeDescriptionMapping] =
    useState({});
  const [isFiltersVisible, setIsFiltersVisible] = useState(false);
  const [selectedStudentId, setSelectedStudentId] = useState(null);

  const handleAddStudentPress = () => {
    navigation.navigate("AddStudent");
  };

  const handleViewSponsorsPress = () => {
    navigation.navigate("SponsorPage", { studentID: selectedStudentId });
  };

  const handleEditPress = () => {
    const studentToEdit = allStudents.find(
      (student) => student.studentID === selectedStudentId
    );
    if (studentToEdit) {
      // Assuming studentToEdit contains a property named PhotoID
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
    const fetchData = async () => {
      try {
        const studentsData = await getStudents();
        const schoolsData = await getSchools();
        const mapping = schoolsData.reduce((acc, school) => {
          acc[school.schoolCode] = school.description;
          return acc;
        }, {});
        setSchoolCodeDescriptionMapping(mapping);
        setAllStudents(studentsData);
      } catch (error) {
        console.error("Error loading data:", error.message);
      }
    };

    fetchData();
  }, []);

  useEffect(() => {
    applyFilter();
  }, [
    currentPage,
    itemsPerPage,
    allStudents,
    selectedSchool,
    searchQuery,
    selectedGender,
    selectedForm,
  ]);

  const applyFilter = () => {
    let filteredStudents = allStudents.filter((student) => {
      const matchesName = student.studentName
        .toLowerCase()
        .includes(searchQuery.toLowerCase());
      const matchesSchool =
        selectedSchool === "all" || student.schoolCode === selectedSchool;
      const matchesGender =
        selectedGender === "all" ||
        student.gender.toLowerCase() === selectedGender;

      let matchesForm = true; // Default to true for "all"
      if (selectedForm !== "all") {
        if (selectedForm === "null") {
          // Adjusts for when "None" is selected, comparing with both `null` and `undefined`
          matchesForm = student.form === null || student.form === undefined;
        } else {
          // Direct comparison as numbers. Ensure `student.Form` is treated as a number.
          matchesForm = Number(student.form) === Number(selectedForm);
        }
      }

      return matchesName && matchesSchool && matchesGender && matchesForm;
    });

    const totalFilteredStudents = filteredStudents.length;
    const startIndex = (currentPage - 1) * itemsPerPage;
    const endIndex = startIndex + itemsPerPage;
    setStudents(filteredStudents.slice(startIndex, endIndex));
    setFilteredTotalPages(Math.ceil(totalFilteredStudents / itemsPerPage));
  };

  const goToNextPage = () => {
    if (currentPage < filteredTotalPages) {
      setCurrentPage(currentPage + 1);
    }
  };

  const goToPrevPage = () => {
    if (currentPage > 1) {
      setCurrentPage(currentPage - 1);
    }
  };

  const handleSearch = (query) => {
    setSearchQuery(query);
    setCurrentPage(1);
  };

  const clearSearch = () => {
    setSearchQuery("");
    setCurrentPage(1);
    applyFilter();
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
                placeholder="Search by name"
                onChangeText={handleSearch}
                value={searchQuery}
                style={styles.searchInput}
              />
              {searchQuery.length > 0 && (
                <Pressable onPress={clearSearch} style={styles.clearButton}>
                  <Text style={styles.clearButtonText}>Clear</Text>
                </Pressable>
              )}
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
            disabled={!selectedStudentId} // Button is disabled if no student is selected
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

        <View style={styles.filterAndButtonsContainer}>
          <Pressable
            onPress={goToPrevPage}
            disabled={currentPage === 1}
            style={{ opacity: currentPage === 1 ? 0.5 : 1 }}
          >
            <FontAwesomeIcon icon={faArrowLeft} size={16} />
            <Text>Prev</Text>
          </Pressable>

          <TextInput
            label="Items Per Page"
            value={itemsPerPage.toString()}
            keyboardType="numeric"
            onChangeText={(text) => setItemsPerPage(parseInt(text))}
            style={styles.filterInput}
          />

          <Pressable
            onPress={goToNextPage}
            disabled={currentPage >= filteredTotalPages}
            style={{ opacity: currentPage >= filteredTotalPages ? 0.5 : 1 }}
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
