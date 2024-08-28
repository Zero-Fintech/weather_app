import 'package:get_it/get_it.dart';

import 'features/weather_details/weather_detais_view_model.dart';
import 'features/weather_home/weather_home_view_model.dart';
import 'services/weather_service.dart';

final GetIt getIt = GetIt.instance;

void setupServices() {
  getIt.registerLazySingleton<WeatherService>(() => WeatherService());
}

void setupViewModels() {
  getIt.registerFactory<WeatherHomeViewModel>(() => WeatherHomeViewModel());
  getIt.registerFactory<WeatherDetailsViewModel>(
      () => WeatherDetailsViewModel(getIt<WeatherService>()));
}
