// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherModelImpl _$$WeatherModelImplFromJson(Map<String, dynamic> json) =>
    _$WeatherModelImpl(
      name: json['name'] as String,
      main: Main.fromJson(json['main'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>)
          .map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WeatherModelImplToJson(_$WeatherModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'main': instance.main,
      'weather': instance.weather,
    };

_$MainImpl _$$MainImplFromJson(Map<String, dynamic> json) => _$MainImpl(
      temp: (json['temp'] as num).toDouble(),
      tempMin: (json['temp_min'] as num).toDouble(),
      tempMax: (json['temp_max'] as num).toDouble(),
    );

Map<String, dynamic> _$$MainImplToJson(_$MainImpl instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
    };

_$WeatherImpl _$$WeatherImplFromJson(Map<String, dynamic> json) =>
    _$WeatherImpl(
      id: (json['id'] as num).toInt(),
      main: json['main'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$$WeatherImplToJson(_$WeatherImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

_$ForecastModelImpl _$$ForecastModelImplFromJson(Map<String, dynamic> json) =>
    _$ForecastModelImpl(
      list: (json['list'] as List<dynamic>)
          .map((e) => ForecastItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ForecastModelImplToJson(_$ForecastModelImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

_$ForecastItemImpl _$$ForecastItemImplFromJson(Map<String, dynamic> json) =>
    _$ForecastItemImpl(
      dt: (json['dt'] as num).toInt(),
      main: Main.fromJson(json['main'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>)
          .map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ForecastItemImplToJson(_$ForecastItemImpl instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'main': instance.main,
      'weather': instance.weather,
    };
