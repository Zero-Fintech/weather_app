// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherImpl _$$WeatherImplFromJson(Map<String, dynamic> json) =>
    _$WeatherImpl(
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      current: Current.fromJson(json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeatherImplToJson(_$WeatherImpl instance) =>
    <String, dynamic>{
      'location': instance.location,
      'current': instance.current,
    };

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
      name: json['name'] as String,
      region: json['region'] as String,
      country: json['country'] as String,
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'region': instance.region,
      'country': instance.country,
    };

_$CurrentImpl _$$CurrentImplFromJson(Map<String, dynamic> json) =>
    _$CurrentImpl(
      lastUpdated: json['last_updated'] as String,
      tempC: (json['temp_c'] as num).toDouble(),
      feelslikeC: (json['feelslike_c'] as num).toDouble(),
      windchillC: (json['windchill_c'] as num).toDouble(),
      humidity: (json['humidity'] as num).toInt(),
    );

Map<String, dynamic> _$$CurrentImplToJson(_$CurrentImpl instance) =>
    <String, dynamic>{
      'last_updated': instance.lastUpdated,
      'temp_c': instance.tempC,
      'feelslike_c': instance.feelslikeC,
      'windchill_c': instance.windchillC,
      'humidity': instance.humidity,
    };
