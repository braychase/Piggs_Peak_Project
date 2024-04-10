import React, { useState, useEffect, useRef } from "react";
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
import { Modalize } from "react-native-modalize";
import { updateStudentById, getStudentById } from "../services/StudentService";
import { getStatuses } from "../services/StudentStatusService";

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

const RankingScreen = ({ navigation }) => {
  const { baseUrl } = useApi();
  const [selectedTab, setSelectedTab] = useState("Summary");
  const [schools, setSchools] = useState([]);
  const [selectedSchool, setSelectedSchool] = useState(1);
  const [schoolSummary, setSchoolSummary] = useState(null);
  const [students, setStudents] = useState([]);
  const [currentPage, setCurrentPage] = useState(1);
  const [filteredTotalPages, setFilteredTotalPages] = useState(0);
  const [sortField, setSortField] = useState("none");
  const [selectedStudentId, setSelectedStudentId] = useState(null);
  const [sortOrder, setSortOrder] = useState("ASC");
  const removeStudentModalRef = useRef(null);
  const [statuses, setStatuses] = useState([]);
  const [selectedStatus, setSelectedStatus] = useState("");
  const formatCurrency = (amount) => {
    // Check if the amount is a number and not undefined or null
    if (amount == null) return "Unavailable";

    // Create an instance of Intl.NumberFormat for currency formatting
    // Adjusted to use no specific currency symbol, but manual prefix 'R '
    const formatter = new Intl.NumberFormat("en-ZA", {
      style: "currency",
      currency: "ZAR", // Changed to 'decimal' to avoid using a default currency symbol
      minimumFractionDigits: 0,
      maximumFractionDigits: 0,
      // Use grouping to separate thousands with commas
      useGrouping: true,
    });

    // Return the formatted amount with 'R ' prefixed
    return formatter.format(amount);
  };

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

  useEffect(() => {
    const fetchStatuses = async () => {
      try {
        const data = await getStatuses(baseUrl); // Use your actual base URL constant
        setStatuses(data);
        setSelectedStatus(data[0]?.value); // Optionally set an initial value
      } catch (error) {
        console.error("Error fetching statuses:", error);
      }
    };

    fetchStatuses();
  }, []);

  const renderSchoolName = () => {
    // Assuming selectedSchool is the ID of the school
    const selectedSchoolObj = schools.find(
      (school) => school.schoolID.toString() === selectedSchool
    );

    if (selectedSchoolObj) {
      return (
        <Text style={styles.schoolFullName}>
          {selectedSchoolObj.description}
        </Text>
      );
    }
    return null;
  };

  const findSchoolCode = () => {
    const selectedSchoolObj = schools.find(
      (school) => school.schoolID.toString() === selectedSchool
    );

    if (selectedSchoolObj) {
      return selectedSchoolObj.schoolCode;
    }
    return null;
  };

  const selectStudent = (studentId) => {
    setSelectedStudentId(studentId);
  };

  useEffect(() => {
    const fetchData = async () => {
      try {
        const data = await getSchoolSummary(baseUrl, selectedSchool);
        setSchoolSummary(data);
      } catch (error) {
        console.error("Failed to fetch school summary:", error);
      }
    };

    if (selectedSchool) {
      fetchData();
    }
  }, [selectedSchool, baseUrl]);

  const handleSearchPress = async (page) => {
    const queryParams = new URLSearchParams({
      pageNumber: page || currentPage,
      pageSize: 5,
      sortField: sortField, // Include the current sort field
      sortOrder: sortOrder, // Include the current sort order
      sponsoredOnly: "Y",
      schoolCode: findSchoolCode(),
      statusId: 2,
    }).toString();

    try {
      const response = await fetch(
        `${baseUrl}api/StudentSearch?${queryParams}`,
        {
          credentials: "include",
        }
      );

      if (response.ok) {
        const data = await response.json();
        setStudents(data.students);
        setFilteredTotalPages(data.totalPages);
        setCurrentPage(page || currentPage); // Update current page only after successful fetch
      } else {
        console.error("Failed to fetch students");
        setStudents([]);
        setFilteredTotalPages(0);
      }
    } catch (error) {
      console.error("Error loading student data:", error.message);
    }
  };

  const handleNewSearchPress = async (page) => {
    const queryParams = new URLSearchParams({
      pageNumber: page || currentPage,
      pageSize: 5,
      sortField: sortField, // Include the current sort field
      sortOrder: sortOrder, // Include the current sort order
      newOnly: "Y",
      schoolCode: findSchoolCode(),
    }).toString();

    try {
      const response = await fetch(
        `${baseUrl}api/StudentSearch?${queryParams}`,
        {
          credentials: "include",
          // Include other necessary options like headers
        }
      );

      if (response.ok) {
        const data = await response.json();
        setStudents(data.students);
        setFilteredTotalPages(data.totalPages);
        setCurrentPage(page || currentPage); // Update current page only after successful fetch
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

  const goToNewNextPage = () => {
    if (currentPage < filteredTotalPages) {
      setCurrentPage(currentPage + 1);
      handleNewSearchPress(currentPage + 1);
    }
  };

  const goToNewPrevPage = () => {
    if (currentPage > 1) {
      setCurrentPage(currentPage - 1);
      handleNewSearchPress(currentPage - 1);
    }
  };

  const handleOpenRemovalModal = () => {
    if (removeStudentModalRef.current) {
      removeStudentModalRef.current.open();
    }
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

  const handleConfirmRemoval = async () => {
    if (selectedStudentId) {
      try {
        // Fetch the current student data
        const studentData = await getStudentById(baseUrl, selectedStudentId);

        // Update the Active_yn field and any other fields as needed
        studentData.status = parseInt(selectedStatus, 10);
        console.log(studentData);
        // Now update the student with the modified data
        await updateStudentById(baseUrl, selectedStudentId, studentData);
        console.log("Student updated successfully");

        // Close the modal and refresh the list of students
        removeStudentModalRef.current?.close();
        handleSearchPress();
      } catch (error) {
        console.error("Error updating the student:", error);
      }
    }
  };

  const handleSelectOrRemove = async () => {
    if (selectedStudentId) {
      try {
        // Fetch the current student data
        const studentData = await getStudentById(baseUrl, selectedStudentId);

        // Toggle the 'selected' field based on its current value
        studentData.Selected = studentData.selected === true ? false : true;

        console.log(
          "Updated student data before sending to update:",
          studentData
        );

        // Now update the student with the modified data
        await updateStudentById(baseUrl, selectedStudentId, studentData);
        console.log("Student updated successfully");

        // After updating, you might want to refresh the students list
        handleNewSearchPress(currentPage);
      } catch (error) {
        console.error("Error updating the student:", error);
      }
    }
  };

  const renderContent = () => {
    switch (selectedTab) {
      case "Summary":
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
              {/* Display the total fees from schoolSummary */}
              <Text style={styles.totalText}>
                Total Cost: {formatCurrency(schoolSummary?.totalFees)}
              </Text>
            </View>
          </View>
        );
      case "Current":
        return (
          <View>
            {/* <View style={styles.searchContainer}> */}
            {/* <View style={styles.sortControls}> */}
            <View style={styles.sortContainer}>
              <View style={styles.row}>
                <Text style={styles.pickerLabel}>Sort by:</Text>
                <Picker
                  selectedValue={sortField}
                  onValueChange={(itemValue) => setSortField(itemValue)}
                  style={styles.picker}
                >
                  <Picker.Item label="None" value="none" />
                  <Picker.Item label="First Name" value="firstName" />
                  <Picker.Item label="Last Name" value="lastName" />
                  <Picker.Item label="Gender" value="gender" />
                  <Picker.Item label="Form" value="form" />
                </Picker>
              </View>
            </View>
            <View style={styles.buttonContainer}>
              <Pressable
                onPress={() =>
                  setSortOrder(sortOrder === "ASC" ? "DESC" : "ASC")
                }
                style={styles.sortOrderToggle}
              >
                <Text style={styles.sortButtonText}>
                  {sortOrder === "ASC" ? "Ascending" : "Descending"}
                </Text>
              </Pressable>

              <Pressable
                onPress={() => handleSearchPress(1)}
                style={styles.searchButton}
              >
                <Text style={styles.searchButtonText}>Search</Text>
              </Pressable>
              {/* </View> */}
              {/* </View> */}
            </View>
            <ScrollView>
              <DataTable
                theme={{ colors: { text: COLORS.black } }}
                style={styles.dataTable}
              >
                <DataTable.Header>
                  <DataTable.Title>First Name</DataTable.Title>
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
                onPress={handleEditPress}
                disabled={!selectedStudentId} // Button is disabled if no student is selected
                style={[
                  styles.editButton,
                  !selectedStudentId && styles.disabledButton, // Use your existing disabled style
                ]}
              >
                <Text style={styles.removeButtonText}>Edit</Text>
              </Pressable>
              <Pressable
                onPress={handleOpenRemovalModal}
                disabled={!selectedStudentId} // Button is disabled if no student is selected
                style={[
                  styles.removeButton,
                  !selectedStudentId && styles.disabledButton, // Use your existing disabled style
                ]}
              >
                <Text style={styles.removeButtonText}>Remove</Text>
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
      case "New":
        return (
          <View>
            <View style={styles.sortContainer}>
              <View style={styles.row}>
                <Text style={styles.pickerLabel}>Sort by:</Text>
                <Picker
                  selectedValue={sortField}
                  onValueChange={(itemValue) => setSortField(itemValue)}
                  style={styles.picker}
                >
                  <Picker.Item label="None" value="none" />
                  <Picker.Item label="First Name" value="firstName" />
                  <Picker.Item label="Last Name" value="lastName" />
                  <Picker.Item label="Gender" value="gender" />
                  <Picker.Item label="Form" value="form" />
                  <Picker.Item label="Priority" value="priority" />
                </Picker>
              </View>
            </View>
            <View style={styles.buttonContainer}>
              <Pressable
                onPress={() =>
                  setSortOrder(sortOrder === "ASC" ? "DESC" : "ASC")
                }
                style={styles.sortOrderToggle}
              >
                <Text style={styles.sortButtonText}>
                  {sortOrder === "ASC" ? "Ascending" : "Descending"}
                </Text>
              </Pressable>

              <Pressable
                onPress={() => handleNewSearchPress(1)}
                style={styles.searchButton}
              >
                <Text style={styles.searchButtonText}>Search</Text>
              </Pressable>
            </View>
            <ScrollView>
              <DataTable
                theme={{ colors: { text: COLORS.black } }}
                style={styles.dataTable}
              >
                <DataTable.Header>
                  <DataTable.Title>First Name</DataTable.Title>
                  <DataTable.Title>Last Name</DataTable.Title>
                  <DataTable.Title>Gender</DataTable.Title>
                  <DataTable.Title>OVC</DataTable.Title>
                  <DataTable.Title>Form</DataTable.Title>
                  <DataTable.Title>Priority</DataTable.Title>
                  <DataTable.Title>Selected</DataTable.Title>
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
                    <DataTable.Cell>{student.priority}</DataTable.Cell>
                    <DataTable.Cell>{student.selected}</DataTable.Cell>
                  </DataTable.Row>
                ))}
              </DataTable>
            </ScrollView>
            {renderSchoolName()}
            <View style={styles.buttonContainer}>
              <Pressable
                onPress={goToNewPrevPage}
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
                onPress={handleEditPress}
                disabled={!selectedStudentId} // Button is disabled if no student is selected
                style={[
                  styles.editButton,
                  !selectedStudentId && styles.disabledButton, // Use your existing disabled style
                ]}
              >
                <Text style={styles.removeButtonText}>Edit</Text>
              </Pressable>
              <Pressable
                onPress={handleSelectOrRemove}
                disabled={!selectedStudentId} // Button is disabled if no student is selected
                style={[
                  styles.removeButton,
                  !selectedStudentId && styles.disabledButton, // Use your existing disabled style
                ]}
              >
                <Text style={styles.removeButtonText}>Select/Remove</Text>
              </Pressable>
              <Pressable
                onPress={goToNewNextPage}
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
          {["Summary", "Current", "New"].map((step) => (
            <Tab
              key={step}
              title={step}
              onPress={() => setSelectedTab(step)}
              isSelected={selectedTab === step}
            />
          ))}
        </View>
        <View style={styles.contentContainer}>{renderContent()}</View>
        <Modalize ref={removeStudentModalRef} adjustToContentHeight={true}>
          <View style={{ padding: 20 }}>
            <Text style={{ marginBottom: 20 }}>Enter Reason for Removal</Text>
            <Picker
              selectedValue={selectedStatus}
              onValueChange={(itemValue, itemIndex) =>
                setSelectedStatus(itemValue)
              }
            >
              {statuses.map((status) => (
                <Picker.Item
                  key={status.id}
                  label={status.name}
                  value={status.id}
                />
              ))}
            </Picker>

            <View
              style={{
                flexDirection: "row",
                justifyContent: "space-around",
                marginTop: 20,
              }}
            >
              <Pressable
                onPress={handleConfirmRemoval}
                style={({ pressed }) => [
                  { opacity: pressed ? 0.5 : 1 },
                  styles.modalButton,
                ]}
              >
                <Text style={styles.modalButtonText}>Submit</Text>
              </Pressable>
              <Pressable
                onPress={() => removeStudentModalRef.current?.close()}
                style={({ pressed }) => [
                  { opacity: pressed ? 0.5 : 1 },
                  styles.removeModalButton,
                ]}
              >
                <Text style={styles.modalButtonText}>Cancel</Text>
              </Pressable>
            </View>
          </View>
        </Modalize>
      </ScrollView>
    </LinearGradient>
  );
};

export default RankingScreen;
