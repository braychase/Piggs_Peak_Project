const BASE_URL = "https://localhost:7208/api";

export const getSchools = async () => {
  try {
    const response = await fetch(`${BASE_URL}/School`, {
      method: "GET",
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
