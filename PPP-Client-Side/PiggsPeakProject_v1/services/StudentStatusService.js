import CONSTANTS from "../constants/constants";

export const getStatuses = async (baseUrl) => {
  try {
    //baseUrl = "https://localHost:7208/";

    const response = await fetch(`${baseUrl}api/StudentStatuses`, {
      method: "GET",
      credentials: "include",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
      },
    });

    if (!response.ok) {
      throw new Error("Failed to retrieve student statuses");
    }

    const data = await response.json();
    return data;
  } catch (error) {
    console.error("Error fetching student statuses:", error.message);
    throw error;
  }
};

// Function to fetch status information for a single student by their ID
export const getStatusById = async (baseUrl, statusId) => {
  try {
    const response = await fetch(`${baseUrl}api/StudentStatuses/${statusId}`, {
      method: "GET",
      credentials: "include",
      headers: {
        "Content-Type": "application/json",
      },
    });

    if (!response.ok) {
      if (response.status === 404) {
        // No status found for the student, return an empty array
        return [];
      } else {
        // For other errors, throw an error to be caught by the catch block
        throw new Error(
          `Failed to retrieve status data for status with ID ${statusId}`
        );
      }
    }

    const data = await response.json();
    return data; // Return the data as is, or you might adjust this part to fit your needs
  } catch (error) {
    throw error; // Rethrow the error for further handling
  }
};
