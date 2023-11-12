import requests
import time
import json
import os
from flask import Flask, request, jsonify

app = Flask(__name__)

# get the temperature, humidity, moisture, and storage usage data
def get_data():
    storage_used = os.statvfs('/').f_blocks * os.statvfs('/').f_bsize
    storage_remaining = os.statvfs('/').f_bavail * os.statvfs('/').f_bsize

    # send the data to the Flutter app
    response = requests.post('http://flutter-app-ip:5000/data', json={'temperature': 20, 'humidity': 50, 'moisture': 30, 'storage_used': storage_used, 'storage_remaining': storage_remaining})

    # print the response
    print(response.content)

# route to request the data
@app.route('/data', methods=['GET'])
def get_data_route():
    data = get_data()
    return jsonify(data)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
