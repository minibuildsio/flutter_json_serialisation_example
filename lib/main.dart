import 'package:flutter/material.dart';

import 'model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Json Serialisation Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final weatherDataString =
        WeatherData(DateTime(2024, 3, 1, 12, 0, 0), 15.6, WeatherType.sunny)
            .toJson();
    final weatherData = WeatherData.fromJson(
        '{"date": "2024-02-29T12:00:00", "temperature": 12.4, "weatherType": "rainy"}');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Json Serialisation Example'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Weather data to Json',
              style: TextStyle(fontWeight: FontWeight.w500)),
          Text(weatherDataString),
          Container(height: 16),
          const Text('Weather data from Json',
              style: TextStyle(fontWeight: FontWeight.w500)),
          Text('Date: ${weatherData.date}'),
          Text('Temperature: ${weatherData.temperature}'),
          Text('Weather type: ${weatherData.weatherType.name}'),
        ],
      ),
    );
  }
}
