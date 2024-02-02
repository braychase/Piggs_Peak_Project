import React, { useState, useEffect } from "react";
import { View, Text, ScrollView, StyleSheet, Pressable } from "react-native";
import { getStudents } from "./StudentService";
import { DataTable, Button, TextInput } from "react-native-paper";
import { FontAwesomeIcon } from "@fortawesome/react-native-fontawesome";
import { faArrowRight } from "@fortawesome/free-regular-svg-icons";
import { faArrowLeft } from "@fortawesome/free-regular-svg-icons";

const StudentPage = () => {
  const [allStudents, setAllStudents] = useState([]);
  const [students, setStudents] = useState([]);
  const [itemsPerPage, setItemsPerPage] = useState(10);
  const [currentPage, setCurrentPage] = useState(1);

  useEffect(() => {
    fetchStudents();
  }, [currentPage, itemsPerPage]);

  const fetchStudents = async () => {
    try {
      const studentData = await getStudents();
      setAllStudents(studentData);
      applyFilter(currentPage);
    } catch (error) {
      console.error("Error loading students:", error.message);
    }
  };

  const applyFilter = (page) => {
    const startIndex = (page - 1) * itemsPerPage;
    const endIndex = startIndex + itemsPerPage;
    const filteredStudents = allStudents.slice(startIndex, endIndex);
    setStudents(filteredStudents);
  };

  const goToNextPage = () => {
    const totalPages = Math.ceil(allStudents.length / itemsPerPage);
    if (currentPage < totalPages) {
      setCurrentPage((prevPage) => prevPage + 1);
      applyFilter(currentPage + 1);
    }
  };

  const goToPrevPage = () => {
    if (currentPage > 1) {
      setCurrentPage((prevPage) => prevPage - 1);
      applyFilter(currentPage - 1);
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

      {/* <View style={styles.navigationButtons}>
        <Button onPress={goToPrevPage} mode="contained">
          Prev
        </Button>
        <Button onPress={goToNextPage} mode="contained">
          Next
        </Button>
      </View> */}

      <View style={styles.navigationButtons}>
        <Pressable onPress={goToPrevPage}>
          <Text>
            <FontAwesomeIcon icon={faArrowLeft} style={{ marginRight: 2 }} />
            Prev
          </Text>
        </Pressable>
        <Pressable onPress={goToNextPage}>
          <Text>
            <FontAwesomeIcon icon={faArrowRight} style={{ marginRight: 2 }} />
            Next
          </Text>
        </Pressable>
      </View>

      <View style={styles.filterContainer}>
        <TextInput
          label="Items Per Page"
          value={itemsPerPage.toString()}
          keyboardType="numeric"
          onChangeText={(value) => setItemsPerPage(parseInt(value))}
        />
      </View>
    </ScrollView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#fafafa",
    text: "black",
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
