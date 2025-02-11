// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  factory Weather({
    required Location location,
    required Current current,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    required String name,
    required String region,
    required String country,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class Current with _$Current {
  const factory Current({
    @JsonKey(name: 'last_updated') required String lastUpdated,
    @JsonKey(name: 'temp_c') required double tempC,
    @JsonKey(name: 'feelslike_c') required double feelslikeC,
    @JsonKey(name: 'windchill_c') required double windchillC,
    required int humidity,
  }) = _Current;

  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);
}
