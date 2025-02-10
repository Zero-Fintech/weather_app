import 'package:flutter/material.dart';

import '../../base_view.dart';
import 'weather_home_view_model.dart';
import 'weather_home_view_state.dart';
import 'widgets/weather_home_widgets.dart';

class WeatherHomeView extends StatelessWidget {
  const WeatherHomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return BaseView<WeatherHomeViewModel, WeatherHomeViewState>(
        setupViewModel: (WeatherHomeViewModel viewModel) async {},
        builder: (
          BuildContext context,
          WeatherHomeViewModel viewModel,
          WeatherHomeViewState viewState,
        ) {
          return switch (viewState) {
            InitialState() => const WeatherHomeInitialWidget(),
            LoadingState() => const WeatherHomeLoadingWidget(),
            ErrorState() => const WeatherHomeErrorWidget(),
            LoadedState() => const WeatherHomeLoadedWidget(),
          };
        });
  }
}
