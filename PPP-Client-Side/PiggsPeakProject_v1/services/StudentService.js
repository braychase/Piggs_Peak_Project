import CONSTANTS from "../constants/constants";
import { useApi } from "../ApiContext";

export const getStudents = async (baseUrl) => {
  try {
    const response = await fetch(`${baseUrl}api/Student`, {
      method: "GET",
      credentials: "include",
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

export const getStudentById = async (baseUrl, studentId) => {
  try {
    const response = await fetch(`${baseUrl}api/Student/${studentId}`, {
      // Adjust the URL to include the student ID
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

export const updateStudentById = async (baseUrl, studentId, studentData) => {
  try {
    const response = await fetch(`${baseUrl}api/Student/${studentId}`, {
      method: "PUT",
      credentials: "include",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
      },
      credentials: "include",
      body: JSON.stringify(studentData),
    });

    if (!response.ok) {
      throw new Error(`Failed to update student: ${response.statusText}`);
    }

    // Check if the response has content before parsing it
    const text = await response.text();
    const data = text ? JSON.parse(text) : null;

    return data;
  } catch (error) {
    console.error(`Error updating student with ID ${studentId}:`, error);
    throw error;
  }
};

export const addStudent = async (baseUrl, studentData) => {
  try {
    // Add or replace the StudentCode with a dummy code
    studentData.studentCode = "DUMMY_CODE"; // This is the placeholder

    // Wrap studentData in a "student" object
    const payload = {
      student: studentData,
    };
    console.log(JSON.stringify(payload));
    const response = await fetch(`${baseUrl}api/Student`, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        Accept: "application/json",
      },
      credentials: "include", // Ensures cookies are sent with the request if needed
      body: JSON.stringify(payload), // Convert the payload to a JSON string
    });

    if (!response.ok) {
      // If the HTTP response status code is not in the 2xx success range
      throw new Error(`Failed to add new student: ${response.statusText}`);
    }

    // Retrieve the response body as text
    const text = await response.text();
    // Parse the text as JSON only if it's not empty, otherwise return null
    const data = text ? JSON.parse(text) : null;

    return data; // Return the parsed data or null if there was no content
  } catch (error) {
    console.error("Error adding new student:", error);
    throw error; // Re-throw the error for further handling if needed
  }
};
