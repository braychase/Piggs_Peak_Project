import CONSTANTS from "../constants/constants";
const BASE_URL = CONSTANTS.baseURL;

export const getStudents = async () => {
  try {
    const response = await fetch(`${BASE_URL}/StudentSearch`, {
      method: "GET",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
      },
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

export const getStudentBySearch = async (searchCriteria) => {
  try {
    // Adjusting the URL to include search criteria
    const url = new URL(`${BASE_URL}/StudentSearch`);
    Object.keys(searchCriteria).forEach((key) =>
      url.searchParams.append(key, searchCriteria[key])
    );

    const response = await fetch(url, {
      method: "GET",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
      },
    });

    if (!response.ok) {
      throw new Error(
        "Failed to retrieve student data based on search criteria"
      );
    }

    const data = await response.json();
    return data;
  } catch (error) {
    console.error("Error fetching student data by search:", error.message);
    throw error;
  }
};
