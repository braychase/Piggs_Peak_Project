import CONSTANTS from "../constants/constants";
const BASE_URL = CONSTANTS.baseURL;

export const getStudentPhoto = async () => {
  try {
    const response = await fetch(`${BASE_URL}/StudentPhoto`, {
      method: "GET",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
      },
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
export const getStudentPhotoById = async (photoId) => {
  try {
    const response = await fetch(`${BASE_URL}/StudentPhoto/${photoId}`, {
      method: "GET",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
      },
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
