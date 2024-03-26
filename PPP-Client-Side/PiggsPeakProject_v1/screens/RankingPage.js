import React, { useState, useEffect } from "react";
import { ScrollView, StyleSheet, Pressable, Text, View } from "react-native";
import { DataTable, TextInput } from "react-native-paper";
import { FontAwesomeIcon } from "@fortawesome/react-native-fontawesome";
import { faArrowLeft, faArrowRight } from "@fortawesome/free-solid-svg-icons";
import { LinearGradient } from "expo-linear-gradient";
import COLORS from "../constants/colors";
import styles from "../styles/rankingPageStyles";
import { getSchools } from "../services/SchoolService";
import { getSchoolSummary } from "../services/StudentSearchService";
import { useApi } from "../ApiContext";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { Picker } from "@react-native-picker/picker";

const Tab = ({ title, onPress, isSelected }) => {
  return (
    <Pressable
      onPress={onPress}
      style={[
        styles.tab,
        isSelected ? styles.selectedTab : styles.unselectedTab,
      ]}
    >
      <Text
        style={[
          styles.tabText,
          isSelected ? styles.selectedTabText : styles.unselectedTabText,
        ]}
      >
        {title}
      </Text>
    </Pressable>
  );
};

const RankingScreen = () => {
  const { baseUrl } = useApi();
  const [selectedTab, setSelectedTab] = useState("Step 1");
  const [schools, setSchools] = useState([]);
  const [selectedSchool, setSelectedSchool] = useState(1);
  const [schoolSummary, setSchoolSummary] = useState(null);
  const [students, setStudents] = useState([]);
  const [currentPage, setCurrentPage] = useState(1);
  const [filteredTotalPages, setFilteredTotalPages] = useState(0);
  const [sortField, setSortField] = useState("First"); // Example sort field
  const [selectedStudentId, setSelectedStudentId] = useState(null);

  useEffect(() => {
    const fetchSchoolsAndDefault = async () => {
      try {
        const schoolsData = await getSchools(baseUrl);
        setSchools(schoolsData);

        // Fetch the default school ID from AsyncStorage
        const defaultSchoolID = await AsyncStorage.getItem("defaultSchoolID");
        if (defaultSchoolID) {
          setSelectedSchool(defaultSchoolID);
        } else if (schoolsData && schoolsData.length > 0) {
          // Optionally set the first school as default if no default is set
          setSelectedSchool(schoolsData[0].schoolID.toString()); // Ensure the ID is a string if your values are expected to be strings
          AsyncStorage.setItem(
            "defaultSchoolID",
            schoolsData[0].schoolID.toString()
          );
        }
      } catch (error) {
        console.error("Failed to fetch schools or default school:", error);
      }
    };

    fetchSchoolsAndDefault();
  }, [baseUrl]);

  const renderSchoolName = () => {
    // Assuming selectedSchool is the ID of the school
    const selectedSchoolObj = schools.find(
      (school) => school.schoolID.toString() === selectedSchool
    );

    if (selectedSchoolObj) {
      return (
        <Text style={styles.studentFullName}>
          {selectedSchoolObj.description}
        </Text>
      );
    }
    return null;
  };

  const selectStudent = (studentId) => {
    setSelectedStudentId(studentId);
  };

  useEffect(() => {
    if (selectedSchool) {
      const fetchSchoolSummary = async () => {
        try {
          console.log(selectedSchool);
          const summaryData = await getSchoolSummary(baseUrl, selectedSchool);
          setSchoolSummary(summaryData);
        } catch (error) {
          console.error("Failed to fetch school summary:", error);
        }
      };

      fetchSchoolSummary();
    }
  }, [selectedSchool, baseUrl]);

  const handleSearchPress = async (page) => {
    try {
      const queryParams = new URLSearchParams({
        pageNumber: page || currentPage,
        pageSize: 5,
      }).toString();

      const response = await fetch(
        `${baseUrl}api/StudentSearch?${queryParams}`,
        { credentials: "include" }
      );
      if (response.ok) {
        const data = await response.json();
        setStudents(data.students);
        setFilteredTotalPages(data.totalPages);
      } else {
        console.error("Failed to fetch students");
        setStudents([]);
        setFilteredTotalPages(0);
      }
    } catch (error) {
      console.error("Error loading student data:", error.message);
    }
  };

  // When a new school is selected, update both the state and AsyncStorage
  const handleSchoolChange = (itemValue) => {
    setSelectedSchool(itemValue);
    AsyncStorage.setItem("defaultSchoolID", itemValue);
  };

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

  const renderContent = () => {
    switch (selectedTab) {
      case "Step 1":
        return (
          <View>
            <View style={styles.formContainer}>
              <View style={styles.row}>
                <Text style={styles.pickerLabel}>Select School:</Text>
                <Picker
                  selectedValue={selectedSchool}
                  onValueChange={(itemValue, itemIndex) =>
                    handleSchoolChange(itemValue)
                  }
                  style={styles.picker}
                >
                  {schools.map((school) => (
                    <Picker.Item
                      key={school.schoolID}
                      label={school.description}
                      value={school.schoolID}
                    />
                  ))}
                </Picker>
              </View>
            </View>
            <View style={styles.formContainer}>
              {renderSchoolSummaryTable()}
              <Text style={{ marginTop: 20, fontWeight: "bold" }}>
                Total Cost:{" "}
              </Text>
            </View>
          </View>
        );
      case "Step 2":
        return (
          <View>
            <View style={styles.buttonContainer}>
              <View style={styles.searchContainer}>
                <Pressable
                  onPress={() => handleSearchPress(1)}
                  style={styles.searchButton}
                >
                  <Text style={styles.buttonText}>Search</Text>
                </Pressable>
              </View>
            </View>
            <ScrollView>
              <DataTable
                theme={{ colors: { text: COLORS.black } }}
                style={styles.dataTable}
              >
                <DataTable.Header>
                  <DataTable.Title> First Name</DataTable.Title>
                  <DataTable.Title>Last Name</DataTable.Title>
                  <DataTable.Title>Gender</DataTable.Title>
                  <DataTable.Title>OVC</DataTable.Title>
                  <DataTable.Title>Form</DataTable.Title>
                </DataTable.Header>
                {students.map((student) => (
                  <DataTable.Row
                    key={student.studentID}
                    onPress={() => selectStudent(student.studentID)}
                    style={[
                      styles.row,
                      student.studentID === selectedStudentId &&
                        styles.selectedRow,
                    ]}
                  >
                    <DataTable.Cell>{student.firstName}</DataTable.Cell>
                    <DataTable.Cell>{student.lastName}</DataTable.Cell>
                    <DataTable.Cell>{student.gender}</DataTable.Cell>
                    <DataTable.Cell>{student.ovc}</DataTable.Cell>
                    <DataTable.Cell>{student.form}</DataTable.Cell>
                  </DataTable.Row>
                ))}
              </DataTable>
            </ScrollView>
            {renderSchoolName()}
            <View style={styles.buttonContainer}>
              <Pressable
                onPress={goToPrevPage}
                disabled={currentPage === 1}
                style={[
                  styles.paginationButton,
                  currentPage === 1 && styles.disabledButton,
                  { opacity: currentPage === 1 ? 0.5 : 1 },
                ]}
              >
                <FontAwesomeIcon icon={faArrowLeft} size={16} />
                <Text>Prev</Text>
              </Pressable>
              <Pressable
                onPress={goToNextPage}
                disabled={currentPage >= filteredTotalPages}
                style={[
                  styles.paginationButton,
                  currentPage >= filteredTotalPages && styles.disabledButton,
                  { opacity: currentPage >= filteredTotalPages ? 0.5 : 1 },
                ]}
              >
                <FontAwesomeIcon icon={faArrowRight} size={16} />
                <Text>Next</Text>
              </Pressable>
            </View>
          </View>
        );
      case "Step 3":
        return (
          <Text style={styles.contentPlaceholder}>Placeholder for Step 3</Text>
        );
      default:
        return <Text style={styles.contentPlaceholder}>Select a step</Text>;
    }
  };

  const renderSchoolSummaryTable = () => {
    if (!schoolSummary) return <Text>No summary data available</Text>;

    // Function to safely retrieve count by gender from a category
    const getCountByGender = (category, gender) => {
      // Find the object in the category array with the matching gender and return its count
      // Default to 0 if not found
      const item = category.find((item) => item.gender === gender);
      return item ? item.count : 0;
    };

    // Safely access totals to avoid undefined errors
    const getTotal = (totalCategory) =>
      schoolSummary.totals ? schoolSummary.totals[totalCategory] : 0;

    // Safe access for the overall total section to avoid undefined errors
    const safeTotalAccess = (key) =>
      schoolSummary.total ? schoolSummary.total[key] : 0;

    return (
      <DataTable>
        <DataTable.Header>
          <DataTable.Title>Category</DataTable.Title>
          <DataTable.Title numeric>Male</DataTable.Title>
          <DataTable.Title numeric>Female</DataTable.Title>
          <DataTable.Title numeric>Total</DataTable.Title>
        </DataTable.Header>

        {/* "New" category row */}
        <DataTable.Row>
          <DataTable.Cell>New</DataTable.Cell>
          <DataTable.Cell numeric>
            {getCountByGender(schoolSummary.new, "M")}
          </DataTable.Cell>
          <DataTable.Cell numeric>
            {getCountByGender(schoolSummary.new, "F")}
          </DataTable.Cell>
          <DataTable.Cell numeric>{getTotal("newTotal")}</DataTable.Cell>
        </DataTable.Row>

        {/* "Selected" category row */}
        <DataTable.Row>
          <DataTable.Cell>Selected</DataTable.Cell>
          <DataTable.Cell numeric>
            {getCountByGender(schoolSummary.selected, "M")}
          </DataTable.Cell>
          <DataTable.Cell numeric>
            {getCountByGender(schoolSummary.selected, "F")}
          </DataTable.Cell>
          <DataTable.Cell numeric>{getTotal("selectedTotal")}</DataTable.Cell>
        </DataTable.Row>

        {/* "Current" category row */}
        <DataTable.Row>
          <DataTable.Cell>Current</DataTable.Cell>
          <DataTable.Cell numeric>
            {getCountByGender(schoolSummary.current, "M")}
          </DataTable.Cell>
          <DataTable.Cell numeric>
            {getCountByGender(schoolSummary.current, "F")}
          </DataTable.Cell>
          <DataTable.Cell numeric>{getTotal("currentTotal")}</DataTable.Cell>
        </DataTable.Row>

        {/* Totals row */}
        <DataTable.Row>
          <DataTable.Cell>Totals</DataTable.Cell>
          <DataTable.Cell numeric>{safeTotalAccess("male")}</DataTable.Cell>
          <DataTable.Cell numeric>{safeTotalAccess("female")}</DataTable.Cell>
          <DataTable.Cell numeric>{safeTotalAccess("total")}</DataTable.Cell>
        </DataTable.Row>
      </DataTable>
    );
  };

  return (
    <LinearGradient
      style={{ flex: 1 }}
      colors={[COLORS.secondary, COLORS.primary]}
    >
      <ScrollView>
        <View style={styles.tabsContainer}>
          {["Step 1", "Step 2", "Step 3"].map((step) => (
            <Tab
              key={step}
              title={step}
              onPress={() => setSelectedTab(step)}
              isSelected={selectedTab === step}
            />
          ))}
        </View>
        <View style={styles.contentContainer}>{renderContent()}</View>
      </ScrollView>
    </LinearGradient>
  );
};

export default RankingScreen;
