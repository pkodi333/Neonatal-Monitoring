# Neonatal Monitoring

## Introduction
The first 28 days of life which is called the neonatal period, represents the most vulnerable time for a child's survival. In 2016, 2.6 million deaths, approximately 46% of all under-five deaths occurred. Neonates are prone to diseases because of their under developed immune system which makes them more vulnerable to serious bacterial, fungal and viral infections. The common neonatal diseases are Down syndrome, Cystic Fibrosis and Blood Cell Disorder. Monitoring neonatal heart rate data can aid in understanding development and diagnosing conditions such as neonatal sepsis.

Technological advances have caused a decrease in the number of infant deaths. One of the mechanisms that can be vital to saving the lives of these infants is through continuous monitoring and early diagnosis, which can substantially increase the chance of survival.

Medical Literature has indicated a relationship between heart rate variability and the condition of an infant. Therefore, the dataset containing the heart rates of premature infants recorded in the Neonatal Intensive Care Unit was analyzed. These heart rates will be collected at a sampling rate of one minute, which is the common sampling rate in clinical setting. The aim of the study is to monitor and predict the possibility of any disease that the neonate might encounter.

## Overview of system
In the system, heart beat and temperature parameters read by the sensors will be sent to the cloud using GSM module. Using machine learning algorithms, abnormal conditions will be detected. The system alerts with a buzzer and an SMS notification will be sent to the user. The system will then predict the neonate’s disease.

In this project, I used Arduino UNO microcontroller, DHT11 sensor, heartbeat sensor, to get the lives values of the neonate. These inputs are sent to the GSM module sim900. This is used to relay the Web application the inputs. The live values are fetched and read in the web application. Then the prediction process takes place as the live values are processed with the KNN algorithm and then the results of any prediction are shown on the webpage. 

To learn from the live values, I need to first train the KNN algorithm with a fixed dataset. By giving this training, predicting hundreds of live values will be more efficient. This is because live values are read every few seconds and keeping up with them might be challenging without prior training. I took a dataset with 1000 rows and used them for training with KNN. 

## Web Application
The Web application consists of a login page, live values page, results page and data upload page. The user can interact with this web application to retrieve any live values or upload any dataset manually to get analysis. The live values from the GSM will be redirected to the live values page. The code for live values page consists of a code segment which links the KNN algorithm to the live values seen on that live values page. These values will undergo preprocessing and analysis for prediction in the KNN algorithm. Then the results from the prediction will be redirected into the results page in the web application where we can see the prediction results. If any critical values are seen then an automatic SMS will be sent to the doctor via the GSM.
