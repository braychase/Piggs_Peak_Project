import CONSTANTS from "../constants/constants";
import { useApi } from "../ApiContext";

export const getStudentGrade = async (baseUrl) => {
  try {
    const response = await fetch(`${baseUrl}api/GradeSearch`, {
      method: "GET",
      credentials: "include",
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

export const getStudentGradeById = async (baseUrl, studentId) => {
  try {
    const response = await fetch(`${baseUrl}api/GradeSearch/${studentId}`, {
      method: "GET",
      credentials: "include",
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

export const addSchoolGrade = async (baseUrl, gradeData) => {
  try {
    const response = await fetch(`${baseUrl}api/SchoolGrade`, {
      method: "POST",
      credentials: "include",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
      },
      body: JSON.stringify(gradeData), // Convert the grade data object to a JSON string
    });

    if (!response.ok) {
      // If the server response is not ok, throw an error
      const errorResponse = await response.json(); // Assuming the server might return JSON with more details
      throw new Error(errorResponse.message || "Failed to add school grade");
    }

    const data = await response.json(); // Assuming the response contains the newly added grade
    return data;
  } catch (error) {
    console.error("Error adding school grade:", error.message);
    throw error; // Re-throw the error to be handled by the caller
  }
};
