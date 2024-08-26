import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'weather_details_view_state.dart';

class WeatherDetailsViewModel extends StateNotifier<WeatherDetailsViewState> {
  WeatherDetailsViewModel() : super(InitialState());
}
