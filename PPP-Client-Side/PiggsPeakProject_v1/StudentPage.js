import React, { useState, useEffect } from "react";
import { ScrollView, StyleSheet, Pressable, Text, View } from "react-native";
import { DataTable, TextInput } from "react-native-paper";
import { FontAwesomeIcon } from "@fortawesome/react-native-fontawesome";
import { faArrowLeft, faArrowRight } from "@fortawesome/free-solid-svg-icons";
import { getStudents } from "./StudentService";

const StudentPage = () => {
  const [allStudents, setAllStudents] = useState([]);
  const [students, setStudents] = useState([]);
  const [itemsPerPage, setItemsPerPage] = useState(10);
  const [currentPage, setCurrentPage] = useState(1);

  // Fetch students on component mount and when itemsPerPage changes
  useEffect(() => {
    const fetchStudents = async () => {
      try {
        const studentData = await getStudents();
        setAllStudents(studentData);
      } catch (error) {
        console.error("Error loading students:", error.message);
      }
    };
    fetchStudents();
  }, [itemsPerPage]); // Removed currentPage as a dependency to avoid unnecessary fetches

  // Apply filter whenever currentPage, itemsPerPage, or allStudents change
  useEffect(() => {
    const applyFilter = () => {
      const startIndex = (currentPage - 1) * itemsPerPage;
      const endIndex = startIndex + itemsPerPage;
      const filteredStudents = allStudents.slice(startIndex, endIndex);
      setStudents(filteredStudents);
    };
    applyFilter();
  }, [currentPage, itemsPerPage, allStudents]);

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

  return (
    <ScrollView style={styles.container}>
      <DataTable theme={{ colors: { text: "black" } }}>
        <DataTable.Header>
          <DataTable.Title>Name</DataTable.Title>
        </DataTable.Header>
        {students.map((item) => (
          <DataTable.Row key={item.studentID}>
            <DataTable.Cell>{item.studentName}</DataTable.Cell>
          </DataTable.Row>
        ))}
      </DataTable>
      <View style={styles.navigationButtons}>
        <Pressable onPress={goToPrevPage}>
          <Text>
            <FontAwesomeIcon icon={faArrowLeft} style={{ marginRight: 2 }} />
            Prev
          </Text>
        </Pressable>
        <Pressable onPress={goToNextPage}>
          <Text>
            Next
            <FontAwesomeIcon icon={faArrowRight} style={{ marginRight: 2 }} />
          </Text>
        </Pressable>
      </View>
      <View style={styles.filterContainer}>
        <TextInput
          label="Items Per Page"
          value={itemsPerPage.toString()}
          keyboardType="numeric"
          onChangeText={(value) => setItemsPerPage(parseInt(value) || 10)}
        />
      </View>
    </ScrollView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#fafafa",
  },
  navigationButtons: {
    flexDirection: "row",
    justifyContent: "space-between",
    marginHorizontal: 20,
    marginVertical: 10,
  },
  filterContainer: {
    flexDirection: "row",
    justifyContent: "space-between",
    alignItems: "center",
    marginHorizontal: 20,
    marginBottom: 10,
  },
});

export default StudentPage;
