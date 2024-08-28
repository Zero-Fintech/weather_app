import 'package:flutter/material.dart';

class WeatherHomeLoadedWidget extends StatelessWidget {
  const WeatherHomeLoadedWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Home'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
