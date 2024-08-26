abstract class WeatherDetailsViewState {}

class LoadingState extends WeatherDetailsViewState {}

class InitialState extends WeatherDetailsViewState {}

class LoadedState extends WeatherDetailsViewState {}

class ErrorState extends WeatherDetailsViewState {
  ErrorState(this.errorMessage);
  final String errorMessage;
}
