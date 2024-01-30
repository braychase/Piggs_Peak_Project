const BASE_URL = "https://localhost:7208/api"; // Replace with your actual API base URL

export const getStudents = async () => {
  try {
    const response = await fetch(`${BASE_URL}/Student`);

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
