import CONSTANTS from "../constants/constants";
import { useApi } from "../ApiContext";

export const getStudentGrade = async (baseUrl) => {
  try {
    const response = await fetch(`${baseUrl}api/GradeSearch`, {
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

export const getStudentGradeById = async (baseUrl, studentId) => {
  try {
    const response = await fetch(`${baseUrl}api/GradeSearch/${studentId}`, {
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
