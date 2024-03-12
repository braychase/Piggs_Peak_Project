import CONSTANTS from "../constants/constants";
const BASE_URL = CONSTANTS.baseURL;

// StudentSponsorService.js

// Function to fetch sponsor information for all students
export const getAllStudentSponsors = async () => {
  try {
    const response = await fetch(`${BASE_URL}/StudentSponsor`, {
      method: "GET",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
      },
      credentials: "include",
    });

    if (!response.ok) {
      throw new Error("Failed to retrieve student sponsor data");
    }

    const data = await response.json();
    return data; // Returns an array of student-sponsor relationships
  } catch (error) {
    console.error("Error fetching student sponsors:", error.message);
    throw error;
  }
};

// Function to fetch sponsor information for a single student by their ID
export const getStudentSponsorById = async (studentId) => {
  try {
    const response = await fetch(`${BASE_URL}/StudentSponsor/${studentId}`, {
      method: "GET",
      headers: {
        "Content-Type": "application/json",
      },
    });

    if (!response.ok) {
      if (response.status === 404) {
        // No sponsors found for the student, return an empty array
        return [];
      } else {
        // For other errors, throw an error to be caught by the catch block
        throw new Error(
          `Failed to retrieve sponsor data for student with ID ${studentId}`
        );
      }
    }

    const data = await response.json();
    return data; // Return the data as is, or you might adjust this part to fit your needs
  } catch (error) {
    throw error; // Rethrow the error for further handling
  }
};
