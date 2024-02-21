import React, { useState, useEffect } from "react";
import { ScrollView, StyleSheet, Pressable, Text, View } from "react-native";
import { DataTable } from "react-native-paper";
import { FontAwesomeIcon } from "@fortawesome/react-native-fontawesome";
import { faArrowLeft } from "@fortawesome/free-solid-svg-icons";
import { LinearGradient } from "expo-linear-gradient";
import COLORS from "../constants/colors";
import styles from "../styles/sponsorPageStyles";
import { getStudentById } from "../services/StudentService";
import { getStudentSponsorById } from "../services/StudentSponsorService";

const SponsorPage = ({ route, navigation }) => {
  const { studentID } = route.params; // Destructure studentId from route.params
  const [sponsors, setSponsors] = useState([]);
  const [surname, setSurname] = useState("");
  const [firstName, setFirstName] = useState("");

  useEffect(() => {
    const fetchData = async () => {
      // Fetch student data
      if (studentID) {
        try {
          const studentData = await getStudentById(studentID);

          // Populate form fields with fetched data
          setSurname(studentData.lastName || "");
          setFirstName(studentData.firstName || "");
        } catch (error) {
          console.error("Failed to fetch student data:", error);
        }
      }

      // Fetch sponsors
      try {
        const sponsorsData = await getStudentSponsorById(studentID);

        // Ensure data is in array form and sort
        const sortedSponsors = (
          Array.isArray(sponsorsData) ? sponsorsData : [sponsorsData]
        ).sort((a, b) => new Date(b.effectiveDate) - new Date(a.effectiveDate));

        setSponsors(sortedSponsors);
      } catch (error) {
        console.error("Failed to fetch sponsors:", error);
      }
    };

    fetchData();
  }, [studentID]);

  const renderStudentFullName = () => {
    if (studentID && (firstName || surname)) {
      const fullName = `${surname}, ${firstName}`.trim();
      return <Text style={styles.studentFullName}>{fullName}</Text>;
    }
    return null;
  };

  return (
    <LinearGradient
      style={styles.container}
      colors={[COLORS.secondary, COLORS.primary]}
    >
      <ScrollView>
        <Pressable
          onPress={() => navigation.goBack()}
          style={styles.backButton}
        >
          <FontAwesomeIcon icon={faArrowLeft} size={20} color={COLORS.black} />
        </Pressable>
        {renderStudentFullName()}
        <DataTable style={styles.tableContainer}>
          <DataTable.Header>
            <DataTable.Title>Sponsor Name</DataTable.Title>
            <DataTable.Title>Effective Date</DataTable.Title>
          </DataTable.Header>

          {sponsors.map((sponsor, index) => (
            <DataTable.Row key={index}>
              <DataTable.Cell>{sponsor.sponsorName}</DataTable.Cell>
              <DataTable.Cell>
                {sponsor.effectiveDate
                  ? new Date(sponsor.effectiveDate).toLocaleDateString()
                  : null}
              </DataTable.Cell>
            </DataTable.Row>
          ))}
        </DataTable>
      </ScrollView>
    </LinearGradient>
  );
};

export default SponsorPage;
