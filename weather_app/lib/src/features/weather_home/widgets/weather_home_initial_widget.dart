import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WeatherHomeInitialWidget extends StatelessWidget {
  const WeatherHomeInitialWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: controller,
              decoration: const InputDecoration(
                labelText: 'Enter a city',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go('/weather_detail/${controller.text}');
              },
              child: const Text('Get Current Weather'),
            ),
          ],
        ),
      ),
    );
  }
}
