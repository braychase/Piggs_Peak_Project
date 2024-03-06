import CONSTANTS from "../constants/constants";
const BASE_URL = CONSTANTS.baseURL;

export const getStudents = async () => {
  try {
    const response = await fetch(`${BASE_URL}/Student`, {
      method: "GET",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
      },
      credentials: "include",
    });

    if (!response.ok) {
      throw new Error("Failed to retrieve student data");
    }

    const data = await response.json();
    return data;
  } catch (error) {
    console.error("Error fetching students:", error.message);
    throw error;
  }
};

export const getStudentById = async (studentId) => {
  try {
    const response = await fetch(`${BASE_URL}/Student/${studentId}`, {
      // Adjust the URL to include the student ID
      method: "GET",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
      },
      credentials: "include",
    });

    if (!response.ok) {
      throw new Error(
        `Failed to retrieve data for student with ID ${studentId}`
      );
    }

    const data = await response.json();
    return data;
  } catch (error) {
    console.error(
      `Error fetching student with ID ${studentId}:`,
      error.message
    );
    throw error;
  }
};
