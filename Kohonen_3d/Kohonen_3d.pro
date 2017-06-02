#-------------------------------------------------
#
# Project created by QtCreator 2017-06-01T22:16:37
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Kohonen_3d
TEMPLATE = app

LIBS += -pthread
LIBS += -lX11
QMAKE_CXXFLAGS += -std=c++11 -lX11 -pthread

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
    main.cpp \
    mainwindow.cpp \
    kohonen.cpp

HEADERS += \
    CImg.h \
    mainwindow.h \
    kohonen.h

FORMS += \
        mainwindow.ui

DISTFILES += \
    jaffe/convertir.sh \
    jaffe/KA.AN1.39.jpg \
    jaffe/KA.AN2.40.jpg \
    jaffe/KA.AN3.41.jpg \
    jaffe/KA.DI1.42.jpg \
    jaffe/KA.DI2.43.jpg \
    jaffe/KA.DI3.44.jpg \
    jaffe/KA.FE1.45.jpg \
    jaffe/KA.FE2.46.jpg \
    jaffe/KA.FE3.47.jpg \
    jaffe/KA.FE4.48.jpg \
    jaffe/KA.HA1.29.jpg \
    jaffe/KA.HA2.30.jpg \
    jaffe/KA.HA3.31.jpg \
    jaffe/KA.HA4.32.jpg \
    jaffe/KA.NE1.26.jpg \
    jaffe/KA.NE2.27.jpg \
    jaffe/KA.NE3.28.jpg \
    jaffe/KA.SA1.33.jpg \
    jaffe/KA.SA2.34.jpg \
    jaffe/KA.SA3.35.jpg \
    jaffe/KA.SU1.36.jpg \
    jaffe/KA.SU2.37.jpg \
    jaffe/KA.SU3.38.jpg \
    jaffe/KL.AN1.167.jpg \
    jaffe/KL.AN2.168.jpg \
    jaffe/KL.AN3.169.jpg \
    jaffe/KL.DI1.170.jpg \
    jaffe/KL.DI2.171.jpg \
    jaffe/KL.DI3.172.jpg \
    jaffe/KL.DI4.173.jpg \
    jaffe/KL.FE1.174.jpg \
    jaffe/KL.FE2.175.jpg \
    jaffe/KL.FE3.176.jpg \
    jaffe/KL.HA1.158.jpg \
    jaffe/KL.HA2.159.jpg \
    jaffe/KL.HA3.160.jpg \
    jaffe/KL.NE1.155.jpg \
    jaffe/KL.NE2.156.jpg \
    jaffe/KL.NE3.157.jpg \
    jaffe/KL.SA1.161.jpg \
    jaffe/KL.SA2.162.jpg \
    jaffe/KL.SA3.163.jpg \
    jaffe/KL.SU1.164.jpg \
    jaffe/KL.SU2.165.jpg \
    jaffe/KL.SU3.166.jpg \
    jaffe/KM.AN1.17.jpg \
    jaffe/KM.AN2.18.jpg \
    jaffe/KM.AN3.19.jpg \
    jaffe/KM.DI1.20.jpg \
    jaffe/KM.DI3.22.jpg \
    jaffe/KM.FE1.23.jpg \
    jaffe/KM.FE2.24.jpg \
    jaffe/KM.FE3.25.jpg \
    jaffe/KM.HA1.4.jpg \
    jaffe/KM.HA2.5.jpg \
    jaffe/KM.HA3.6.jpg \
    jaffe/KM.HA4.7.jpg \
    jaffe/KM.NE1.1.jpg \
    jaffe/KM.NE2.2.jpg \
    jaffe/KM.NE3.3.jpg \
    jaffe/KM.SA1.9.jpg \
    jaffe/KM.SA2.10.jpg \
    jaffe/KM.SA3.11.jpg \
    jaffe/KM.SA5.13.jpg \
    jaffe/KM.SU1.14.jpg \
    jaffe/KM.SU2.15.jpg \
    jaffe/KM.SU3.16.jpg \
    jaffe/KR.AN1.83.jpg \
    jaffe/KR.AN2.84.jpg \
    jaffe/KR.AN3.85.jpg \
    jaffe/KR.DI1.86.jpg \
    jaffe/KR.DI2.87.jpg \
    jaffe/KR.DI3.88.jpg \
    jaffe/KR.FE1.89.jpg \
    jaffe/KR.FE2.90.jpg \
    jaffe/KR.FE3.91.jpg \
    jaffe/KR.HA1.74.jpg \
    jaffe/KR.HA2.75.jpg \
    jaffe/KR.NE1.71.jpg \
    jaffe/KR.NE2.72.jpg \
    jaffe/KR.NE3.73.jpg \
    jaffe/KR.SA1.77.jpg \
    jaffe/KR.SA2.78.jpg \
    jaffe/KR.SA3.79.jpg \
    jaffe/KR.SU1.80.jpg \
    jaffe/KR.SU2.81.jpg \
    jaffe/KR.SU3.82.jpg \
    jaffe/MK.AN1.125.jpg \
    jaffe/MK.AN2.126.jpg \
    jaffe/MK.AN3.127.jpg \
    jaffe/MK.DI1.128.jpg \
    jaffe/MK.DI2.129.jpg \
    jaffe/MK.DI3.130.jpg \
    jaffe/MK.FE1.131.jpg \
    jaffe/MK.FE2.132.jpg \
    jaffe/MK.FE3.133.jpg \
    jaffe/MK.HA1.116.jpg \
    jaffe/MK.HA2.117.jpg \
    jaffe/MK.HA3.118.jpg \
    jaffe/MK.NE1.113.jpg \
    jaffe/MK.NE2.114.jpg \
    jaffe/MK.NE3.115.jpg \
    jaffe/MK.SA1.119.jpg \
    jaffe/MK.SA2.120.jpg \
    jaffe/MK.SA3.121.jpg \
    jaffe/MK.SU1.122.jpg \
    jaffe/MK.SU2.123.jpg \
    jaffe/MK.SU3.124.jpg \
    jaffe/NA.AN1.211.jpg \
    jaffe/NA.AN2.212.jpg \
    jaffe/NA.AN3.213.jpg \
    jaffe/NA.DI1.214.jpg \
    jaffe/NA.DI2.215.jpg \
    jaffe/NA.DI3.216.jpg \
    jaffe/NA.FE1.217.jpg \
    jaffe/NA.FE2.218.jpg \
    jaffe/NA.FE3.219.jpg \
    jaffe/NA.HA1.202.jpg \
    jaffe/NA.HA2.203.jpg \
    jaffe/NA.HA3.204.jpg \
    jaffe/NA.NE1.199.jpg \
    jaffe/NA.NE2.200.jpg \
    jaffe/NA.NE3.201.jpg \
    jaffe/NA.SA1.205.jpg \
    jaffe/NA.SA2.206.jpg \
    jaffe/NA.SA3.207.jpg \
    jaffe/NA.SU1.208.jpg \
    jaffe/NA.SU2.209.jpg \
    jaffe/NA.SU3.210.jpg \
    jaffe/NM.AN1.104.jpg \
    jaffe/NM.AN2.105.jpg \
    jaffe/NM.AN3.106.jpg \
    jaffe/NM.DI1.107.jpg \
    jaffe/NM.DI3.109.jpg \
    jaffe/NM.FE1.110.jpg \
    jaffe/NM.FE2.111.jpg \
    jaffe/NM.FE3.112.jpg \
    jaffe/NM.HA1.95.jpg \
    jaffe/NM.HA2.96.jpg \
    jaffe/NM.HA3.97.jpg \
    jaffe/NM.NE1.92.jpg \
    jaffe/NM.NE2.93.jpg \
    jaffe/NM.NE3.94.jpg \
    jaffe/NM.SA1.98.jpg \
    jaffe/NM.SA2.99.jpg \
    jaffe/NM.SA3.100.jpg \
    jaffe/NM.SU1.101.jpg \
    jaffe/NM.SU2.102.jpg \
    jaffe/NM.SU3.103.jpg \
    jaffe/TM.AN1.190.jpg \
    jaffe/TM.AN2.191.jpg \
    jaffe/TM.AN3.192.jpg \
    jaffe/TM.DI1.193.jpg \
    jaffe/TM.DI2.194.jpg \
    jaffe/TM.DI3.195.jpg \
    jaffe/TM.FE1.196.jpg \
    jaffe/TM.FE2.197.jpg \
    jaffe/TM.FE3.198.jpg \
    jaffe/TM.HA1.180.jpg \
    jaffe/TM.HA2.181.jpg \
    jaffe/TM.HA3.182.jpg \
    jaffe/TM.NE1.177.jpg \
    jaffe/TM.NE2.178.jpg \
    jaffe/TM.NE3.179.jpg \
    jaffe/TM.SA1.184.jpg \
    jaffe/TM.SA2.185.jpg \
    jaffe/TM.SA3.186.jpg \
    jaffe/TM.SU1.187.jpg \
    jaffe/TM.SU2.188.jpg \
    jaffe/TM.SU3.189.jpg \
    jaffe/UY.AN1.146.jpg \
    jaffe/UY.AN2.147.jpg \
    jaffe/UY.AN3.148.jpg \
    jaffe/UY.DI1.149.jpg \
    jaffe/UY.DI2.150.jpg \
    jaffe/UY.DI3.151.jpg \
    jaffe/UY.FE1.152.jpg \
    jaffe/UY.FE2.153.jpg \
    jaffe/UY.FE3.154.jpg \
    jaffe/UY.HA1.137.jpg \
    jaffe/UY.HA2.138.jpg \
    jaffe/UY.HA3.139.jpg \
    jaffe/UY.NE1.134.jpg \
    jaffe/UY.NE2.135.jpg \
    jaffe/UY.NE3.136.jpg \
    jaffe/UY.SA1.140.jpg \
    jaffe/UY.SA2.141.jpg \
    jaffe/UY.SA3.142.jpg \
    jaffe/UY.SU1.143.jpg \
    jaffe/UY.SU2.144.jpg \
    jaffe/UY.SU3.145.jpg \
    jaffe/YM.AN1.61.jpg \
    jaffe/YM.AN2.62.jpg \
    jaffe/YM.AN3.63.jpg \
    jaffe/YM.DI1.64.jpg \
    jaffe/YM.DI2.65.jpg \
    jaffe/YM.DI3.66.jpg \
    jaffe/YM.FE1.67.jpg \
    jaffe/YM.FE2.68.jpg \
    jaffe/YM.FE3.69.jpg \
    jaffe/YM.FE4.70.jpg \
    jaffe/YM.HA1.52.jpg \
    jaffe/YM.HA2.53.jpg \
    jaffe/YM.HA3.54.jpg \
    jaffe/YM.NE1.49.jpg \
    jaffe/YM.NE2.50.jpg \
    jaffe/YM.NE3.51.jpg \
    jaffe/YM.SA1.55.jpg \
    jaffe/YM.SA2.56.jpg \
    jaffe/YM.SA3.57.jpg \
    jaffe/YM.SU1.58.jpg \
    jaffe/YM.SU2.59.jpg \
    jaffe/YM.SU3.60.jpg \
    jaffe/README \
    jaffe/a_names.dat
