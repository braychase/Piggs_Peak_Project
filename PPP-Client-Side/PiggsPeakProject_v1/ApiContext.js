// ApiContext.js
import React, { createContext, useContext, useState, useEffect } from "react";
import AsyncStorage from "@react-native-async-storage/async-storage";

const ApiContext = createContext();

export const useApi = () => useContext(ApiContext);

export const ApiProvider = ({ children }) => {
  const [baseUrl, setBaseUrl] = useState("");

  useEffect(() => {
    const loadBaseUrl = async () => {
      const storedBaseUrl = await AsyncStorage.getItem("baseUrl");
      if (storedBaseUrl) {
        setBaseUrl(storedBaseUrl);
      }
    };

    loadBaseUrl();
  }, []);

  return (
    <ApiContext.Provider value={{ baseUrl, setBaseUrl }}>
      {children}
    </ApiContext.Provider>
  );
};
