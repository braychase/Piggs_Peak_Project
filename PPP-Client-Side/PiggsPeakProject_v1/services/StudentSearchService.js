import CONSTANTS from "../constants/constants";
import { useApi } from "../ApiContext";

export const getStudents = async (baseUrl) => {
  try {
    const response = await fetch(`${baseUrl}api/StudentSearch`, {
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

export const getStudentBySearch = async (baseUrl, searchCriteria) => {
  try {
    // Adjusting the URL to include search criteria
    const url = new URL(`${baseUrl}api/StudentSearch`);
    Object.keys(searchCriteria).forEach((key) =>
      url.searchParams.append(key, searchCriteria[key])
    );

    const response = await fetch(url, {
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

export const getSchoolSummary = async (baseUrl, schoolId) => {
  try {
    const response = await fetch(
      `${baseUrl}api/StudentSearch/SchoolSummary/${schoolId}`,
      {
        method: "GET",
        headers: {
          Accept: "application/json",
          "Content-Type": "application/json",
        },
      }
    );

    if (!response.ok) {
      throw new Error("Failed to fetch school summary");
    }

    const data = await response.json();
    return data;
  } catch (error) {
    console.error("Error fetching school summary:", error);
    throw error;
  }
};
