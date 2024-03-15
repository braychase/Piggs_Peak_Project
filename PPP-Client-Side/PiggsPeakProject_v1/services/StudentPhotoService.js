import CONSTANTS from "../constants/constants";
import { useApi } from "../ApiContext";

export const getStudentPhoto = async (baseUrl) => {
  try {
    const response = await fetch(`${baseUrl}api/StudentPhoto`, {
      method: "GET",
      credentials: "include",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
      },
      credentials: "include",
    });

    if (!response.ok) {
      throw new Error("Failed to retrieve student photo data");
    }

    const data = await response.json();
    return data;
  } catch (error) {
    console.error("Error fetching student photo:", error.message);
    throw error;
  }
};

// Inside your service file
export const getStudentPhotoById = async (baseUrl, photoId) => {
  try {
    const response = await fetch(`${baseUrl}api/StudentPhoto/${photoId}`, {
      method: "GET",
      credentials: "include",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
      },
      credentials: "include",
    });

    if (!response.ok) {
      throw new Error("Failed to fetch student photo");
    }

    const blob = await response.blob();
    return blob; // Return the blob for URL creation
  } catch (error) {
    console.error(
      `Error fetching student photo with ID ${photoId}:`,
      error.message
    );
    throw error;
  }
};
