import React, { useState, useEffect } from "react";
import { View, Text } from "react-native";
import { Picker } from "@react-native-picker/picker";
import { LinearGradient } from "expo-linear-gradient";
import COLORS from "../constants/colors";
import styles from "../styles/interviewPageStyles";
import { getSchools } from "../services/SchoolService";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { useApi } from "../ApiContext";

const PreferenceScreen = () => {
  const { baseUrl } = useApi();
  const [schools, setSchools] = useState([]);
  const [selectedSchool, setSelectedSchool] = useState("");

  useEffect(() => {
    const fetchSchoolsAndSetDefault = async () => {
      try {
        // Simulate fetching the array of school objects
        const schoolsData = await getSchools(baseUrl); // Placeholder for your actual data fetching function
        setSchools(schoolsData);

        const defaultSchoolID = await AsyncStorage.getItem("defaultSchoolID");
        if (defaultSchoolID) {
          // Find the school that matches the defaultSchoolID
          const defaultSchool = schoolsData.find(
            (school) => school.schoolID.toString() === defaultSchoolID
          );
          // If found, set it as the selectedSchool, otherwise default to the first school's schoolCode
          if (defaultSchool) {
            setSelectedSchool(defaultSchool.schoolCode);
          } else if (schoolsData.length > 0) {
            setSelectedSchool(schoolsData[0].schoolCode);
          }
        }
      } catch (error) {
        console.error(
          "Failed to fetch schools data or set default school:",
          error
        );
      }
    };

    fetchSchoolsAndSetDefault();
  }, []);

  return (
    <LinearGradient
      style={{ flex: 1 }}
      colors={[COLORS.secondary, COLORS.primary]}
    >
      <View style={styles.block}>
        <Text style={styles.temp}>Preference Page</Text>
        <Picker
          selectedValue={selectedSchool}
          onValueChange={(itemValue) => setSelectedSchool(itemValue)}
          style={{
            height: 50,
            width: 400,
            marginBottom: 10,
          }}
        >
          {schools.map((school) => (
            <Picker.Item
              key={school.schoolID}
              label={school.description}
              value={school.schoolCode}
            />
          ))}
        </Picker>
      </View>
    </LinearGradient>
  );
};

export default PreferenceScreen;
