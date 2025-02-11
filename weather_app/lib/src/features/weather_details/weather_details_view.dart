import 'package:flutter/material.dart';

import '../../base_view.dart';
import 'weather_details_view_state.dart';
import 'weather_detais_view_model.dart';
import 'widgets/weather_details_widgets.dart';

class WeatherDetailsView extends StatelessWidget {
  const WeatherDetailsView({super.key, this.city});
  final String? city;
  @override
  Widget build(BuildContext context) {
    return BaseView<WeatherDetailsViewModel, WeatherDetailsViewState>(
        setupViewModel: (WeatherDetailsViewModel viewModel) async {
      if (city != null) {
        await viewModel.getWeatherDetails(city!);
      }
    }, builder: (
      BuildContext context,
      WeatherDetailsViewModel viewModel,
      WeatherDetailsViewState viewState,
    ) {
      return switch (viewState) {
        InitialState() => const WeatherDetailsInitialWidget(),
        LoadingState() => const WeatherDetailsLoadingWidget(),
        ErrorState() =>
          WeatherDetailsErrorWidget(errorMessage: viewState.errorMessage),
        LoadedState() => WeatherDetailsLoadedWidget(weather: viewState.weather),
      };
    });
  }
}
