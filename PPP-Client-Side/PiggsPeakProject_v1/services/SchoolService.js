import CONSTANTS from "../constants/constants";

export const getSchools = async (baseUrl) => {
  try {
    //baseUrl = "https://localHost:7208/";

    const response = await fetch(`${baseUrl}api/School`, {
      method: "GET",
      credentials: "include",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
      },
    });

    if (!response.ok) {
      throw new Error("Failed to retrieve school data");
    }

    const data = await response.json();
    return data;
  } catch (error) {
    console.error("Error fetching schools:", error.message);
    throw error;
  }
};
