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
  console.log(gradeData);
  try {
    const response = await fetch(`${baseUrl}api/StudentGrade`, {
      method: "POST",
      credentials: "include",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
      },
      body: JSON.stringify(gradeData), // Convert the grade data object to a JSON string
    });

    const responseText = await response.text(); // First get the response as text

    if (!response.ok) {
      // If the server response is not ok, parse the text to JSON and throw an error
      const errorResponse = JSON.parse(responseText); // Safely parse the text to JSON
      throw new Error(errorResponse.message || "Failed to add school grade");
    }

    return JSON.parse(responseText); // Finally parse the text to JSON and return
  } catch (error) {
    console.error("Error adding school grade:", error.message);
    throw error; // Re-throw the error to be handled by the caller
  }
};
