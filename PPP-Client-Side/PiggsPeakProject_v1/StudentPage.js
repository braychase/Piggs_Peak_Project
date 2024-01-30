import React, { useState, useEffect } from "react";
import { View, Text, FlatList } from "react-native";
import { getStudents } from "./StudentService"; // Update the path accordingly

const StudentPage = () => {
  const [students, setStudents] = useState([]);

  useEffect(() => {
    // Fetch students when the component mounts
    fetchStudents();
  }, []);

  const fetchStudents = async () => {
    try {
      const studentData = await getStudents();
      setStudents(studentData);
    } catch (error) {
      console.error("Error loading students:", error.message);
    }
  };

  return (
    <View>
      <Text>Student Page</Text>
      <FlatList
        data={students}
        keyExtractor={(item) => item.studentID.toString()}
        renderItem={({ item }) => (
          <View>
            <Text>ID: {item.studentID}</Text>
            <Text>Name: {item.studentName}</Text>
          </View>
        )}
      />
    </View>
  );
};

export default StudentPage;
