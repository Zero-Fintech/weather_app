import '../../services/models/weather.dart';

abstract class WeatherDetailsViewState {}

class LoadingState extends WeatherDetailsViewState {}

class InitialState extends WeatherDetailsViewState {}

class LoadedState extends WeatherDetailsViewState {
  LoadedState(this.weather);
  final Weather weather;
}

class ErrorState extends WeatherDetailsViewState {
  ErrorState(this.errorMessage);
  final String errorMessage;
}
