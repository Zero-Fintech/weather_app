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
      if (viewState is InitialState) {
        return const WeatherDetailsInitialWidget();
      }
      if (viewState is ErrorState) {
        return WeatherDetailsErrorWidget(
          errorMessage: viewState.errorMessage,
        );
      }
      if (viewState is LoadingState) {
        return const WeatherDetailsLoadingWidget();
      }
      if (viewState is LoadedState) {
        return WeatherDetailsLoadedWidget(
          weather: viewState.weather,
        );
      }
      return const Center(
        child: CircularProgressIndicator(),
      );
    });
  }
}
