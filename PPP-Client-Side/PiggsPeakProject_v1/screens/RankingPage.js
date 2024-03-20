import React, { useState, useEffect } from "react";
import { ScrollView, StyleSheet, Pressable, Text, View } from "react-native";
import { DataTable, TextInput } from "react-native-paper";
import { FontAwesomeIcon } from "@fortawesome/react-native-fontawesome";
import { faArrowLeft, faArrowRight } from "@fortawesome/free-solid-svg-icons";
import { LinearGradient } from "expo-linear-gradient";
import COLORS from "../constants/colors";
import styles from "../styles/rankingPageStyles";
import { getSchools } from "../services/SchoolService";
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
  const [selectedSchool, setSelectedSchool] = useState("");

  useEffect(() => {
    const fetchSchools = async () => {
      try {
        const schoolsData = await getSchools(baseUrl);
        setSchools(schoolsData);
        // Optionally set a default selected school here
      } catch (error) {
        console.error("Failed to fetch schools:", error);
      }
    };

    fetchSchools();
  }, [baseUrl]);

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
                    setSelectedSchool(itemValue)
                  }
                  style={styles.picker}
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
            </View>
            <View style={styles.formContainer}></View>
          </View>
        );
      case "Step 2":
        return (
          <Text style={styles.contentPlaceholder}>Placeholder for Step 2</Text>
        );
      case "Step 3":
        return (
          <Text style={styles.contentPlaceholder}>Placeholder for Step 3</Text>
        );
      default:
        return <Text style={styles.contentPlaceholder}>Select a step</Text>;
    }
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
