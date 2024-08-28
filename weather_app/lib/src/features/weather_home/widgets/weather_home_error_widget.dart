import 'package:flutter/material.dart';

class WeatherHomeErrorWidget extends StatelessWidget {
  const WeatherHomeErrorWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Home'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(children: <Widget>[
          Text(
            'Something went wrong!',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 10),
          Text(
            'Error message',
            style: TextStyle(fontSize: 16),
          ),
        ]),
      ),
    );
  }
}
