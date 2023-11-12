import adafruit_dht
import board
import time
import requests

# set up the DHT22 sensor
dht22 = adafruit_dht.DHT22(board.D18)

# set up the Raspberry Pi W
pi = board.board_id

# get the temperature, moisture, and humidity data from the DHT22 sensor
temperature = dht22.temperature
moisture = dht22.humidity
humidity = dht22.moisture

# send the data to the flask server
while True:
	response = requests.post('http://flask-server-ip:5000/data', json={'temperature': temperature, 'moisture': moisture, 'humidity': humidity})

