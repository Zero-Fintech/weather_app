import 'package:flutter/material.dart';

class WeatherDetailsErrorWidget extends StatelessWidget {
  const WeatherDetailsErrorWidget({super.key, required this.errorMessage});
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: <Widget>[
          const Text(
            'Something went wrong!',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 10),
          Text(
            errorMessage,
            style: const TextStyle(fontSize: 16),
          ),
        ]),
      ),
    );
  }
}
