import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Agritech Prototype'),
        ),
        body: Center(
          child: FutureBuilder<Map<String, dynamic>>(
            future: fetchData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Temperature: ${snapshot.data!['temperature']}'),
                    Text('Humidity: ${snapshot.data!['humidity']}'),
                    Text('Moisture: ${snapshot.data!['moisture']}'),
                    Text('Storage used: ${snapshot.data!['storage_used']}'),
                    Text('Storage remaining: ${snapshot.data!['storage_remaining']}'),
                  ],
                );
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                return CircularProgressIndicator();
              }
            },
          ),
        ),
      ),
    );
  }
}

Future<Map<String, dynamic>> fetchData() async {
  final response = await get(Uri.parse('http://mainframe-raspberry-pi-ip:5000/data'));

  if (response.statusCode == 200) {
    return json.decode(response.body) as Map<String, dynamic>;
  } else {
    throw Exception('Failed to fetch data');
  }
}

void main() {
  runApp(MyApp());
}
