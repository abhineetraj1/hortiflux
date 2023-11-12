# Hortiflux

This project is an agritech prototype that uses a Raspberry Pi to collect data on temperature, humidity, moisture, and storage usage. The data is then sent to a Flutter app, which displays it to the user. This prototype can be used to monitor crops and other agricultural resources, and to identify potential problems before they occur.

## Installation Guide

1. Install the following software on the mainframe Raspberry Pi:
    * Raspberry Pi OS
    * Python
    * Flask
    * Requests
    * Ngrok

2. Install the following software on the grid system Raspberry Pis:
    * Raspberry Pi OS
    * Python
    * Adafruit DHT22 library

3. Clone this repository on both the mainframe Raspberry Pi and the grid system Raspberry Pis.

4. On the mainframe Raspberry Pi, run the following command to install the Flask server:

```
python setup.py install
```

5. On the grid system Raspberry Pis, run the following command to install the grid system script:

```
python install.py
```

6. Start the Flask server on the mainframe Raspberry Pi by running the following command:

```
flask run
```

7. On the grid system Raspberry Pis, start the grid system script by running the following command:

```
python grid_system.py
```

8. Open Ngrok on the mainframe Raspberry Pi and expose port 5000.

9. Open the Flutter app and enter the Ngrok URL in the "Mainframe Raspberry Pi IP" field.

10. Click the "Fetch Data" button to view the data from the mainframe Raspberry Pi.

You can now monitor the temperature, humidity, moisture, and storage usage data from your agritech prototype on the Flutter app.

## Programming languages and tools used:-

<p align="left"> <a href="https://dart.dev" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg" alt="dart" width="40" height="40"/> </a> <a href="https://www.figma.com/" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/figma/figma-icon.svg" alt="figma" width="40" height="40"/> </a> <a href="https://flask.palletsprojects.com/" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/pocoo_flask/pocoo_flask-icon.svg" alt="flask" width="40" height="40"/> </a> <a href="https://flutter.dev" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/flutterio/flutterio-icon.svg" alt="flutter" width="40" height="40"/> </a> <a href="https://www.python.org" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/python/python-original.svg" alt="python" width="40" height="40"/> </a> </p>

## Developer
*   [Abhineet Raj](https://github.com/abhineetraj1) - Backend development ( raspberry pi and flutter app)
*   [Rishi Banerjee](https://github.com/QwertyFusion) - Frontend development (figma and presentation)