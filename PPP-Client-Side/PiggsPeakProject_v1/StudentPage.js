import React, { useState, useEffect } from "react";
import { View, StyleSheet, Text, Pressable, ScrollView } from "react-native";
import { DataTable, TextInput } from "react-native-paper";
import { FontAwesomeIcon } from "@fortawesome/react-native-fontawesome";
import { faArrowLeft, faArrowRight } from "@fortawesome/free-solid-svg-icons";
import { getStudents } from "./StudentService";
import COLORS from "./constants/colors";
import { LinearGradient } from "expo-linear-gradient";

const StudentPage = () => {
  const [allStudents, setAllStudents] = useState([]);
  const [students, setStudents] = useState([]);
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
    fetchStudents();
  }, [itemsPerPage]);

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

  const handleSearch = (query) => {
    setSearchQuery(query);
    if (query.trim() !== "") {
      const filteredStudents = allStudents.filter((student) =>
        student.studentName.toLowerCase().includes(query.toLowerCase())
      );
      setStudents(filteredStudents);
    } else {
      // If the search bar is cleared, show the original list based on pagination
      applyFilter();
    }
  };

  const applyFilter = () => {
    let filteredStudents = allStudents;

    if (searchQuery.trim() !== "") {
      filteredStudents = filteredStudents.filter((student) =>
        student.studentName.toLowerCase().includes(searchQuery.toLowerCase())
      );
    }

    const startIndex = (currentPage - 1) * itemsPerPage;
    const endIndex = startIndex + itemsPerPage;
    setStudents(filteredStudents.slice(startIndex, endIndex));
  };

  return (
    <LinearGradient
      style={{ flex: 1 }}
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
        </View>

        <ScrollView style={styles.dataTableScroll}>
          <DataTable
            theme={{ colors: { text: COLORS.black } }}
            style={styles.dataTable}
          >
            <DataTable.Header>
              <DataTable.Title>Name</DataTable.Title>
            </DataTable.Header>
            {students.map((item) => (
              <DataTable.Row key={item.studentID}>
                <DataTable.Cell>{item.studentName}</DataTable.Cell>
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
            <Text style={styles.navButton}>Next</Text>
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
  container: {
    flex: 1,
    justifyContent: "center",
    padding: 20,
  },
  dataTableScroll: {
    maxHeight: "85%", // Adjust this value based on your layout
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
  },
  searchContainer: {
    marginVertical: 20,
  },
  searchInput: {
    fontSize: 18,
    backgroundColor: "white",
    paddingHorizontal: 10,
    height: 40,
    borderRadius: 5,
  },
  navButton: {
    backgroundColor: "blue",
    textAlign: "center",
    fontWeight: "500",
    color: COLORS.white,
    borderRadius: 50,
    borderWidth: 2,
    borderColor: COLORS.white,
    fontSize: 15,
  },
});

export default StudentPage;
