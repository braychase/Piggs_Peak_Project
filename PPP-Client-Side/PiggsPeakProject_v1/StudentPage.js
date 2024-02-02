import React, { useState, useEffect } from "react";
import {
  View,
  StyleSheet,
  Text,
  Pressable,
  ScrollView,
  Picker,
} from "react-native";
import { DataTable, TextInput } from "react-native-paper";
import { FontAwesomeIcon } from "@fortawesome/react-native-fontawesome";
import { faArrowLeft, faArrowRight } from "@fortawesome/free-solid-svg-icons";
import { getStudents } from "./StudentService";
import { getSchools } from "./SchoolService";
import COLORS from "./constants/colors";
import { LinearGradient } from "expo-linear-gradient";

const StudentPage = () => {
  const [allStudents, setAllStudents] = useState([]);
  const [students, setStudents] = useState([]);
  const [schools, setSchools] = useState([]);
  const [selectedSchool, setSelectedSchool] = useState("all");
  const [itemsPerPage, setItemsPerPage] = useState(10);
  const [currentPage, setCurrentPage] = useState(1);
  const [searchQuery, setSearchQuery] = useState("");

  useEffect(() => {
    const fetchStudents = async () => {
      try {
        const studentData = await getStudents();
        setAllStudents(studentData);
      } catch (error) {
        console.error("Error loading students:", error.message);
      }
    };

    const fetchSchools = async () => {
      try {
        const schoolsData = await getSchools(); // Assume this function is implemented
        setSchools(schoolsData);
      } catch (error) {
        console.error("Error loading schools:", error.message);
      }
    };

    fetchStudents();
    fetchSchools();
  }, [itemsPerPage]); // Assuming itemsPerPage affects student data fetching

  useEffect(() => {
    applyFilter();
  }, [currentPage, itemsPerPage, allStudents, selectedSchool, searchQuery]);

  const applyFilter = () => {
    let filteredStudents = allStudents.filter((student) => {
      const matchesName = student.studentName
        .toLowerCase()
        .includes(searchQuery.toLowerCase());
      const matchesSchool =
        selectedSchool === "all" ||
        student.schoolID.toString() === selectedSchool;
      return matchesName && matchesSchool;
    });

    const startIndex = (currentPage - 1) * itemsPerPage;
    const endIndex = startIndex + itemsPerPage;
    setStudents(filteredStudents.slice(startIndex, endIndex));
  };

  const goToNextPage = () => {
    const totalPages = Math.ceil(allStudents.length / itemsPerPage);
    if (currentPage < totalPages) {
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
    setCurrentPage(1); // Reset to the first page on search
  };

  const clearSearch = () => {
    setSearchQuery("");
    applyFilter();
  };

  return (
    <LinearGradient
      style={styles.fullScreen}
      colors={[COLORS.secondary, COLORS.primary]}
    >
      <View style={styles.container}>
        <Text style={styles.textCenter}>Student List</Text>

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
          style={styles.schoolPicker}
          onValueChange={(itemValue, itemIndex) => setSelectedSchool(itemValue)}
        >
          <Picker.Item label="All Schools" value="all" />
          {schools.map((school) => (
            <Picker.Item
              key={school.schoolID}
              label={school.schoolCode}
              value={school.schoolID.toString()}
            />
          ))}
        </Picker>

        <ScrollView style={styles.dataTableScroll}>
          <DataTable
            theme={{ colors: { text: COLORS.black } }}
            style={styles.dataTable}
          >
            <DataTable.Header>
              <DataTable.Title>Name</DataTable.Title>
            </DataTable.Header>
            {students.map((student) => (
              <DataTable.Row key={student.studentID}>
                <DataTable.Cell>{student.studentName}</DataTable.Cell>
              </DataTable.Row>
            ))}
          </DataTable>
        </ScrollView>

        <View style={styles.filterAndButtonsContainer}>
          <Pressable onPress={goToPrevPage}>
            <Text>Prev</Text>
            <FontAwesomeIcon
              icon={faArrowLeft}
              size={16}
              style={{ marginLeft: 2 }}
            />
          </Pressable>
          <TextInput
            label="Limit:"
            value={itemsPerPage.toString()}
            keyboardType="numeric"
            onChangeText={(value) => setItemsPerPage(parseInt(value) || 10)}
            style={styles.filterInput}
          />
          <Pressable onPress={goToNextPage}>
            <Text>Next</Text>
            <FontAwesomeIcon
              icon={faArrowRight}
              size={16}
              style={{ marginLeft: 2 }}
            />
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
});

export default StudentPage;
