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

const StudentPage = ({ navigation }) => {
  const [allStudents, setAllStudents] = useState([]);
  const [students, setStudents] = useState([]);
  const [selectedSchool, setSelectedSchool] = useState("all");
  const [selectedGender, setSelectedGender] = useState("all");
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

  const handleEditPress = () => {
    const studentToEdit = allStudents.find(
      (student) => student.studentID === selectedStudentId
    );
    if (studentToEdit) {
      navigation.navigate("AddStudent", { studentID: studentToEdit.studentID });
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
      return matchesName && matchesSchool && matchesGender;
    });

    const startIndex = (currentPage - 1) * itemsPerPage;
    const endIndex = startIndex + itemsPerPage;
    setStudents(filteredStudents.slice(startIndex, endIndex));
    setFilteredTotalPages(Math.ceil(filteredStudents.length / itemsPerPage));
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
          </>
        )}

        <View style={styles.buttonContainer}>
          <Pressable style={styles.addButton} onPress={handleAddStudentPress}>
            <Text style={styles.buttonText}>Add Student</Text>
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
    maxHeight: "60%",
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
    marginLeft: 10,
    justifyContent: "center",
    paddingHorizontal: 10,
    height: 40,
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
});

export default StudentPage;
