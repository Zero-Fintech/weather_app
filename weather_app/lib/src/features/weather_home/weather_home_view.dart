import 'package:flutter/material.dart';

import '../../base_view.dart';
import 'weather_home_view_model.dart';
import 'weather_home_view_state.dart';

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
          if (viewState is InitialState) {
            return const WeatherHomeInitialWidget();
          }
          if (viewState is ErrorState) {
            return const WeatherHomeInitialWidget();
          }
          if (viewState is LoadingState) {
            return const WeatherHomeLoadingWidget();
          }
          if (viewState is LoadedState) {
            return const WeatherHomeLoadedWidget();
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}

class WeatherHomeInitialWidget extends StatelessWidget {
  const WeatherHomeInitialWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class WeatherHomeErrorWidget extends StatelessWidget {
  const WeatherHomeErrorWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class WeatherHomeLoadingWidget extends StatelessWidget {
  const WeatherHomeLoadingWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class WeatherHomeLoadedWidget extends StatelessWidget {
  const WeatherHomeLoadedWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
