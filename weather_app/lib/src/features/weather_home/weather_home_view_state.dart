abstract class WeatherHomeViewState {}

class LoadingState extends WeatherHomeViewState {}

class InitialState extends WeatherHomeViewState {}

class LoadedState extends WeatherHomeViewState {}

class ErrorState extends WeatherHomeViewState {
  ErrorState(this.errorMessage);
  final String errorMessage;
}
