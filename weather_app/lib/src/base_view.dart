import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/src/service_locator.dart';

class BaseView<T extends StateNotifier<S>, S> extends StatefulWidget {
  const BaseView({
    super.key,
    required this.setupViewModel,
    required this.builder,
    this.dispose,
  });

  final Widget Function(BuildContext context, T viewmodel, S state) builder;
  final Future<void> Function(T) setupViewModel;
  final void Function(T)? dispose;

  @override
  State<BaseView<T, S>> createState() => _BaseViewState<T, S>();
}

class _BaseViewState<T extends StateNotifier<S>, S>
    extends State<BaseView<T, S>> {
  late T _viewModel;
  late AutoDisposeStateNotifierProvider<T, S> _myNotifierProvider;

  @override
  void initState() {
    _viewModel = getIt<T>();
    widget.setupViewModel(_viewModel);
    _myNotifierProvider = StateNotifierProvider.autoDispose<T, S>(
        (AutoDisposeStateNotifierProviderRef<StateNotifier<dynamic>, dynamic>
            ref) {
      return _viewModel;
    });
    super.initState();
  }

  @override
  void dispose() {
    widget.dispose?.call(_viewModel);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      key: const Key('BaseView_Consumer'),
      builder: (
        BuildContext context,
        WidgetRef widgetRef,
        Widget? child,
      ) {
        final S state = widgetRef.watch<S>(_myNotifierProvider);
        final T viewmodel = widgetRef.watch(_myNotifierProvider.notifier);
        return widget.builder(context, viewmodel, state);
      },
    );
  }
}
