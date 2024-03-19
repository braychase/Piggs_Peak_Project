// ApiContext.js
import React, { createContext, useContext, useState, useEffect } from "react";
import AsyncStorage from "@react-native-async-storage/async-storage";

const ApiContext = createContext();

export const useApi = () => useContext(ApiContext);

export const ApiProvider = ({ children }) => {
  
  const [baseUrl, setBaseUrl] = useState("");

  const loadBaseUrl = async () => {
    let value = await AsyncStorage.getItem("baseUrl");
    if (!value)
      value = "https://localhost:7208/";
    console.error("API GET baseUrl =", value);
    setBaseUrl(value);
    return value;
  };

  useEffect(() => {
    loadBaseUrl();
  }, []);

  return (
    <ApiContext.Provider value={{ baseUrl, setBaseUrl, loadBaseUrl }}>
      {children}
    </ApiContext.Provider>
  );
};
