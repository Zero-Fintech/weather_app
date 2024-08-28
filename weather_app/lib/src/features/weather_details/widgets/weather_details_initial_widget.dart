import 'package:flutter/material.dart';

class WeatherDetailsInitialWidget extends StatelessWidget {
  const WeatherDetailsInitialWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Details'),
      ),
      body: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
