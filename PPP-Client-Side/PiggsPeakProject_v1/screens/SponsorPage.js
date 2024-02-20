import React, { useState, useEffect } from "react";
import { ScrollView, StyleSheet, Pressable, Text, View } from "react-native";
import { DataTable } from "react-native-paper";
import { FontAwesomeIcon } from "@fortawesome/react-native-fontawesome";
import { faArrowLeft } from "@fortawesome/free-solid-svg-icons";
import { LinearGradient } from "expo-linear-gradient";
import COLORS from "../constants/colors";
import styles from "../styles/sponsorPageStyles";

// Assume `route` is passed as a prop to `SponsorPage`
const SponsorPage = ({ route, navigation }) => {
  const { studentID } = route.params; // Destructure studentId from route.params
  const [sponsors, setSponsors] = useState([]);
  const [surname, setSurname] = useState("");
  const [firstName, setFirstName] = useState("");

  // useEffect(() => {
  //   const fetchSponsors = async () => {
  //     try {
  //       const response = await fetch(
  //         `https://localhost:7208/api/StudentSponsor/${studentID}`
  //       );
  //       const data = await response.json();
  //       setSponsors(Array.isArray(data) ? data : [data]); // Ensure data is in array form
  //     } catch (error) {
  //       console.error("Failed to fetch sponsors:", error);
  //     }
  //   };

  //   fetchSponsors();
  // }, [studentID]); // Dependency array to ensure the effect runs when studentId changes
  useEffect(() => {
    const fetchData = async () => {
      // Fetch student data
      if (studentID) {
        try {
          const studentResponse = await fetch(
            `https://localhost:7208/api/Student/${studentID}`
          );
          if (!studentResponse.ok) {
            throw new Error("Network response was not ok");
          }
          const studentData = await studentResponse.json();

          // Populate form fields with fetched data
          setSurname(studentData.lastName || "");
          setFirstName(studentData.firstName || "");
        } catch (error) {
          console.error("Failed to fetch student data:", error);
        }
      }

      // Fetch sponsors
      try {
        const sponsorsResponse = await fetch(
          `https://localhost:7208/api/StudentSponsor/${studentID}`
        );
        const sponsorsData = await sponsorsResponse.json();
        setSponsors(
          Array.isArray(sponsorsData) ? sponsorsData : [sponsorsData]
        ); // Ensure data is in array form
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

// const styles = StyleSheet.create({
//   container: {
//     flex: 1,
//     padding: 10,
//   },
//   backButton: {
//     margin: 10,
//     width: 50,
//     alignItems: "center",
//   },
//   studentFullName: {
//     fontSize: 20,
//     fontWeight: "bold",
//     textAlign: "center",
//     marginBottom: 20, // Add some space below the name
//   },
//   tableContainer: {
//     marginTop: 10,
//     borderWidth: 1,
//     borderColor: COLORS.black,
//     backgroundColor: COLORS.white,
//     marginBottom: 10,
//     marginLeft: 10,
//     marginRight: 10,
//   },
//   // Add other styles as needed
// });

export default SponsorPage;
