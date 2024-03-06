import CONSTANTS from "../constants/constants";
const BASE_URL = CONSTANTS.baseURL;

export const getStudentGrade = async () => {
  try {
    const response = await fetch(`${BASE_URL}/GradeSearch`, {
      method: "GET",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
      },
      credentials: "include",
    });

    if (!response.ok) {
      throw new Error("Failed to retrieve student grade data");
    }

    const data = await response.json();
    return data;
  } catch (error) {
    console.error("Error fetching student grade:", error.message);
    throw error;
  }
};

export const getStudentGradeById = async (studentId) => {
  try {
    const response = await fetch(`${BASE_URL}/GradeSearch/${studentId}`, {
      method: "GET",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
      },
      credentials: "include",
    });

    if (!response.ok) {
      throw new Error(
        `Failed to retrieve grade data for student ID ${studentId}`
      );
    }

    const data = await response.json();
    return data;
  } catch (error) {
    console.error(
      `Error fetching grade for student ID ${studentId}:`,
      error.message
    );
    throw error;
  }
};
