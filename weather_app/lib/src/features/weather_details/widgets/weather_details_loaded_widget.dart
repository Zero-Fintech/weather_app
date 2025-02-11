import 'package:flutter/material.dart';

import '../../../services/models/weather.dart';

class WeatherDetailsLoadedWidget extends StatelessWidget {
  const WeatherDetailsLoadedWidget({required this.weather, super.key});

  final Weather weather;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${weather.location.name}, ${weather.location.country}'),
      ),
      body: Center(
        child: Column(
            children: <List<String>>[
          <String>['Temperature', '${weather.current.tempC} °C'],
          <String>['Windchill', '${weather.current.windchillC} °C'],
          <String>['Humidity', weather.current.humidity.toString()]
        ]
                .map((List<String> e) => ListTile(
                      title: Text(e[0]),
                      trailing: Text(e[1]),
                    ))
                .toList()),
      ),
    );
  }
}
