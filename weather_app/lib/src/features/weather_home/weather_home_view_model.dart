import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'weather_home_view_state.dart';

class WeatherHomeViewModel extends StateNotifier<WeatherHomeViewState> {
  WeatherHomeViewModel() : super(InitialState());
}
