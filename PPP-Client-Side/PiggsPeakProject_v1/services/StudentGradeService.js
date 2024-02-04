const BASE_URL = "https://localhost:7208/api";

export const getStudentGrade = async () => {
  try {
    const response = await fetch(`${BASE_URL}/StudentGrade`, {
      method: "GET",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
      },
    });

    if (!response.ok) {
      throw new Error("Failed to retrieve student grade data");
    }

    const data = await response.json();
    return data;
  } catch (error) {
    console.error("Error fetching student grade:", error.message);
    throw error;
  }
};
