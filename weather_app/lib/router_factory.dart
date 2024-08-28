import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'src/features/weather_details/weather_details_view.dart';
import 'src/features/weather_home/weather_home_view.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

GoRouter get router => GoRouter(
        navigatorKey: _rootNavigatorKey,
        initialLocation: '/',
        routes: <RouteBase>[
          GoRoute(
              path: '/',
              builder: (BuildContext context, GoRouterState state) =>
                  const WeatherHomeView(),
              routes: <RouteBase>[
                GoRoute(
                  name: 'weather_detail',
                  path: 'weather_detail',
                  builder: (BuildContext context, GoRouterState state) =>
                      const WeatherDetailsView(),
                ),
              ])
        ]);
