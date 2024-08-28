import 'package:flutter/material.dart';

import '../../../services/models/weather.dart';

class WeatherDetailsLoadedWidget extends StatelessWidget {
  const WeatherDetailsLoadedWidget({super.key, required this.weather});
  final Weather weather;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('City: ${weather.name}'),
            const SizedBox(height: 20),
            Text('Temperature: ${weather.main!.temp}'),
            Text('Wind Speed: ${weather.wind!.speed}'),
            Text('Humidity: ${weather.main!.humidity}'),
          ],
        ),
      ),
    );
  }
}
