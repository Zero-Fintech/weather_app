import 'package:flutter/material.dart';

class WeatherDetailsLoadingWidget extends StatelessWidget {
  const WeatherDetailsLoadingWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Details'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
