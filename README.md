# Neonatal Monitoring

## 🧠 Introduction

The **neonatal period**—the first 28 days of life—is the most vulnerable time for a child’s survival. In 2016 alone, 2.6 million neonatal deaths accounted for 46% of all under-five child deaths globally. Neonates are highly susceptible to infections and diseases such as **Down syndrome**, **Cystic Fibrosis**, and **Blood Cell Disorders**, due to their underdeveloped immune systems.

Technological advancements in continuous monitoring and early diagnosis have played a critical role in reducing infant mortality. Among these, **heart rate variability (HRV)** has emerged as an important biomarker in predicting conditions like **neonatal sepsis**.

This project leverages **sensor-based real-time data collection**, **machine learning**, and **cloud communication** to monitor neonatal vitals and predict possible health complications.

---

## 🏥 Project Overview

The system captures **live heart rate and temperature** data using embedded sensors and transmits it via a **GSM module** to a web-based interface. Using a trained **K-Nearest Neighbors (KNN)** algorithm, the system detects abnormalities and sends alerts through **SMS notifications** and an **on-device buzzer**.

---

## 🧰 Technologies & Hardware Used

- **Microcontroller**: Arduino UNO  
- **Sensors**: DHT11 (Temperature), Heartbeat sensor  
- **Communication**: GSM SIM900 module  
- **Machine Learning**: KNN classifier (trained on 1000-record dataset)  
- **Web Development**: HTML/CSS/JavaScript (for frontend), backend code (language/framework not specified)  
- **SMS Notification System**: Via GSM module  

---

## 🔄 System Architecture

1. **Sensor Readings**: Heart rate and temperature values are captured using DHT11 and a heartbeat sensor.
2. **Transmission**: Data is sent via GSM SIM900 to a cloud server.
3. **Prediction**:
   - A **KNN model** (pre-trained on 1000 labeled records) receives live data.
   - Preprocessing ensures the incoming data is clean and formatted correctly.
   - Real-time predictions are made on incoming data to detect abnormal vitals.
4. **Alerts**:
   - If critical conditions are detected, the system:
     - Triggers an audio alert (buzzer)
     - Sends an SMS to the associated healthcare provider
5. **Web Application**:
   - Displays real-time vitals
   - Shows prediction results
   - Allows manual data upload for batch analysis

---

## 🌐 Web Application Features

- **Login Page**: Secure access to system
- **Live Values Page**: Real-time monitoring of vitals fetched from GSM
- **Results Page**: View predictions made by KNN on current data
- **Data Upload Page**: Upload historical data for analysis

Each live data point is processed through the KNN model. Prediction results are displayed, and alerts are generated in real time.

---

## 📊 Dataset & Model Training

- **Training Data**: 1000-record dataset used to train the KNN model
- **Features**: Heart rate, body temperature, time of day, etc. (exact features not specified)
- **Model Choice**: KNN chosen for its simplicity and fast classification for small- to mid-sized datasets

---

## 🚨 Outcome

- Real-time prediction of neonatal conditions based on vitals
- Immediate alerts for critical health markers
- Simple, scalable, and cost-effective solution for NICUs or home monitoring setups

---

## 📌 Future Enhancements

- Integrate more advanced ML models (e.g., Random Forest, SVM)
- Add additional sensors (e.g., oxygen saturation, respiratory rate)
- Extend prediction capabilities to include specific disease classifications
- Add patient history tracking and analytics dashboard for doctors

---
