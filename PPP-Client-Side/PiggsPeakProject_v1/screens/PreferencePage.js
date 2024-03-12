import React, { useState, useEffect } from "react";
import { ScrollView, StyleSheet, Pressable, Text, View } from "react-native";
import { Picker } from "@react-native-picker/picker";
import { DataTable, TextInput } from "react-native-paper";
import { FontAwesomeIcon } from "@fortawesome/react-native-fontawesome";
import { faArrowLeft, faArrowRight } from "@fortawesome/free-solid-svg-icons";
import { LinearGradient } from "expo-linear-gradient";
import COLORS from "../constants/colors";
import styles from "../styles/interviewPageStyles";
import { getSchools } from "../services/SchoolService";

const PreferenceScreen = () => {
  const [schools, setSchools] = useState([]);
  const [selectedSchool, setSelectedSchool] = useState();

  useEffect(() => {
    const fetchSchoolsData = async () => {
      try {
        const schoolsData = await getSchools(); // Assuming this returns an array of school objects
        setSchools(schoolsData);
        // Optionally set an initial value for selectedSchool
        if (schoolsData.length > 0) {
          setSelectedSchool(schoolsData[0].schoolCode);
        }
      } catch (error) {
        console.error("Failed to fetch schools data:", error);
      }
    };

    fetchSchoolsData();
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
          placeholder="Select Default School"
          onValueChange={(itemValue, itemIndex) => setSelectedSchool(itemValue)}
          style={{
            height: 50,
            width: 400,
            marginBottom: 10,
          }}
          itemStyle={{ fontSize: 16, flex: 1 }}
        >
          {schools.map((school, index) => (
            <Picker.Item
              key={index}
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
