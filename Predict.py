from PyQt5 import QtCore, QtGui, QtWidgets
import numpy as np
import pandas as pd
import sys
import csv
from sklearn.neighbors import KNeighborsClassifier
from DBConnection import DBConnection

try:

    trainset = []
    database = DBConnection.getConnection()
    cursor = database.cursor()
    cursor.execute("select heartbeat,temp,class from dataset")
    row = cursor.fetchall()
    y_train = []
    trainset.clear()
    y_train.clear()
    for r in row:
        x_train = []
        x_train.clear()
        x_train.append(float(r[0]))
        x_train.append(float(r[1]))
        y_train.append(r[2])
        trainset.append(x_train)
    trainset = np.array(trainset)

    # Train the model
    y_train = np.array(y_train)

    hb =sys.argv[1]
    temp =sys.argv[2]
    
    ta = ['HeartBeat', 'Temparature']
    tf = [int(hb), int(temp)]
    list = []
    list.clear();
    list.append(ta)
    list.append(tf)

    with open('live.csv', 'w') as csvFile:
        writer = csv.writer(csvFile)
        writer.writerows(list)

    csvFile.close()
    tf = pd.read_csv('live.csv')
    testdata = np.array(tf)
    testdata = testdata.reshape(len(testdata), -1)
  
    #  KNN
    clf = KNeighborsClassifier()
    clf.fit(trainset, y_train)
    result = clf.predict(testdata)
    print(result[0])



except Exception as e:
    print("Error=" + e.args[0])
    tb = sys.exc_info()[2]
    print(tb.tb_lineno)

