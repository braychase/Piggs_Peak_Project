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

export const updateStudentById = async (studentId, studentData) => {
  try {
    const response = await fetch(`${BASE_URL}/Student/${studentId}`, {
      method: "PUT",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
      },
      credentials: "include", // Include cookies in the request if your API requires it
      body: JSON.stringify(studentData),
    });

    if (!response.ok) {
      // If the server response is not ok, throw an error with the status text
      throw new Error(`Failed to update student: ${response.statusText}`);
    }

    const data = await response.json(); // Assuming the server responds with the updated student data
    return data; // You might want to return the updated student data or a success message
  } catch (error) {
    console.error(`Error updating student with ID ${studentId}:`, error);
    throw error; // Re-throw the error so it can be caught and handled in the component
  }
};
