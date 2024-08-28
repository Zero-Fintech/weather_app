import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'models/weather.dart';

class WeatherService {
  WeatherService() : _dio = Dio();

  final Dio _dio;

  Future<Weather> getWeather(String city) async {
    try {
      final Response<String> response = await _dio.get(
          'https://api.openweathermap.org/data/2.5/weather',
          queryParameters: <String, dynamic>{
            'appid': dotenv.env['API_KEY'],
            'q': city,
          });

      if (response.statusCode == 200) {
        final String? weatherData = response.data;
        return Weather.fromJson(
            jsonDecode(weatherData!) as Map<String, dynamic>);
      } else {
        throw Exception('Failed to fetch weather data');
      }
    } catch (e) {
      throw Exception('Failed to connect to the weather API');
    }
  }
}
