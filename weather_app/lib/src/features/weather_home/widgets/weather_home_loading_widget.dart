import 'package:flutter/material.dart';

class WeatherHomeLoadingWidget extends StatelessWidget {
  const WeatherHomeLoadingWidget({super.key});
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
