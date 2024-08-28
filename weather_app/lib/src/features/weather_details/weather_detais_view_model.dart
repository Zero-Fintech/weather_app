import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../services/models/weather.dart';
import '../../services/weather_service.dart';
import 'weather_details_view_state.dart';

class WeatherDetailsViewModel extends StateNotifier<WeatherDetailsViewState> {
  WeatherDetailsViewModel(this._weatherService) : super(InitialState());
  final WeatherService _weatherService;

  Future<void> getWeatherDetails(String city) async {
    try {
      state = LoadingState();
      final Weather weatherDetails = await _weatherService.getWeather(city);
      state = LoadedState(weatherDetails);
    } catch (e) {
      state = ErrorState(e.toString());
    }
  }
}
