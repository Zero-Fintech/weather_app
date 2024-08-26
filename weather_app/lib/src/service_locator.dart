import 'package:get_it/get_it.dart';

import 'features/weather_details/weather_detais_view_model.dart';
import 'features/weather_home/weather_home_view_model.dart';

final GetIt getIt = GetIt.instance;

void setupServices() {
  // Register your services here
}

void setupViewModels() {
  getIt.registerFactory<WeatherHomeViewModel>(() => WeatherHomeViewModel());
  getIt.registerFactory<WeatherDetailsViewModel>(
      () => WeatherDetailsViewModel());
}
