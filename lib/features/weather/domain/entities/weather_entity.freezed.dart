// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherEntity {
  String get locationName => throw _privateConstructorUsedError;
  double get currentTemp => throw _privateConstructorUsedError;
  double get minTemp => throw _privateConstructorUsedError;
  double get maxTemp => throw _privateConstructorUsedError;
  String get weatherCondition => throw _privateConstructorUsedError;
  String get weatherDescription => throw _privateConstructorUsedError;
  String get weatherIcon => throw _privateConstructorUsedError;

  /// Create a copy of WeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherEntityCopyWith<WeatherEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEntityCopyWith<$Res> {
  factory $WeatherEntityCopyWith(
          WeatherEntity value, $Res Function(WeatherEntity) then) =
      _$WeatherEntityCopyWithImpl<$Res, WeatherEntity>;
  @useResult
  $Res call(
      {String locationName,
      double currentTemp,
      double minTemp,
      double maxTemp,
      String weatherCondition,
      String weatherDescription,
      String weatherIcon});
}

/// @nodoc
class _$WeatherEntityCopyWithImpl<$Res, $Val extends WeatherEntity>
    implements $WeatherEntityCopyWith<$Res> {
  _$WeatherEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationName = null,
    Object? currentTemp = null,
    Object? minTemp = null,
    Object? maxTemp = null,
    Object? weatherCondition = null,
    Object? weatherDescription = null,
    Object? weatherIcon = null,
  }) {
    return _then(_value.copyWith(
      locationName: null == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
      currentTemp: null == currentTemp
          ? _value.currentTemp
          : currentTemp // ignore: cast_nullable_to_non_nullable
              as double,
      minTemp: null == minTemp
          ? _value.minTemp
          : minTemp // ignore: cast_nullable_to_non_nullable
              as double,
      maxTemp: null == maxTemp
          ? _value.maxTemp
          : maxTemp // ignore: cast_nullable_to_non_nullable
              as double,
      weatherCondition: null == weatherCondition
          ? _value.weatherCondition
          : weatherCondition // ignore: cast_nullable_to_non_nullable
              as String,
      weatherDescription: null == weatherDescription
          ? _value.weatherDescription
          : weatherDescription // ignore: cast_nullable_to_non_nullable
              as String,
      weatherIcon: null == weatherIcon
          ? _value.weatherIcon
          : weatherIcon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherEntityImplCopyWith<$Res>
    implements $WeatherEntityCopyWith<$Res> {
  factory _$$WeatherEntityImplCopyWith(
          _$WeatherEntityImpl value, $Res Function(_$WeatherEntityImpl) then) =
      __$$WeatherEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String locationName,
      double currentTemp,
      double minTemp,
      double maxTemp,
      String weatherCondition,
      String weatherDescription,
      String weatherIcon});
}

/// @nodoc
class __$$WeatherEntityImplCopyWithImpl<$Res>
    extends _$WeatherEntityCopyWithImpl<$Res, _$WeatherEntityImpl>
    implements _$$WeatherEntityImplCopyWith<$Res> {
  __$$WeatherEntityImplCopyWithImpl(
      _$WeatherEntityImpl _value, $Res Function(_$WeatherEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationName = null,
    Object? currentTemp = null,
    Object? minTemp = null,
    Object? maxTemp = null,
    Object? weatherCondition = null,
    Object? weatherDescription = null,
    Object? weatherIcon = null,
  }) {
    return _then(_$WeatherEntityImpl(
      locationName: null == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
      currentTemp: null == currentTemp
          ? _value.currentTemp
          : currentTemp // ignore: cast_nullable_to_non_nullable
              as double,
      minTemp: null == minTemp
          ? _value.minTemp
          : minTemp // ignore: cast_nullable_to_non_nullable
              as double,
      maxTemp: null == maxTemp
          ? _value.maxTemp
          : maxTemp // ignore: cast_nullable_to_non_nullable
              as double,
      weatherCondition: null == weatherCondition
          ? _value.weatherCondition
          : weatherCondition // ignore: cast_nullable_to_non_nullable
              as String,
      weatherDescription: null == weatherDescription
          ? _value.weatherDescription
          : weatherDescription // ignore: cast_nullable_to_non_nullable
              as String,
      weatherIcon: null == weatherIcon
          ? _value.weatherIcon
          : weatherIcon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WeatherEntityImpl implements _WeatherEntity {
  const _$WeatherEntityImpl(
      {required this.locationName,
      required this.currentTemp,
      required this.minTemp,
      required this.maxTemp,
      required this.weatherCondition,
      required this.weatherDescription,
      required this.weatherIcon});

  @override
  final String locationName;
  @override
  final double currentTemp;
  @override
  final double minTemp;
  @override
  final double maxTemp;
  @override
  final String weatherCondition;
  @override
  final String weatherDescription;
  @override
  final String weatherIcon;

  @override
  String toString() {
    return 'WeatherEntity(locationName: $locationName, currentTemp: $currentTemp, minTemp: $minTemp, maxTemp: $maxTemp, weatherCondition: $weatherCondition, weatherDescription: $weatherDescription, weatherIcon: $weatherIcon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherEntityImpl &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.currentTemp, currentTemp) ||
                other.currentTemp == currentTemp) &&
            (identical(other.minTemp, minTemp) || other.minTemp == minTemp) &&
            (identical(other.maxTemp, maxTemp) || other.maxTemp == maxTemp) &&
            (identical(other.weatherCondition, weatherCondition) ||
                other.weatherCondition == weatherCondition) &&
            (identical(other.weatherDescription, weatherDescription) ||
                other.weatherDescription == weatherDescription) &&
            (identical(other.weatherIcon, weatherIcon) ||
                other.weatherIcon == weatherIcon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locationName, currentTemp,
      minTemp, maxTemp, weatherCondition, weatherDescription, weatherIcon);

  /// Create a copy of WeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherEntityImplCopyWith<_$WeatherEntityImpl> get copyWith =>
      __$$WeatherEntityImplCopyWithImpl<_$WeatherEntityImpl>(this, _$identity);
}

abstract class _WeatherEntity implements WeatherEntity {
  const factory _WeatherEntity(
      {required final String locationName,
      required final double currentTemp,
      required final double minTemp,
      required final double maxTemp,
      required final String weatherCondition,
      required final String weatherDescription,
      required final String weatherIcon}) = _$WeatherEntityImpl;

  @override
  String get locationName;
  @override
  double get currentTemp;
  @override
  double get minTemp;
  @override
  double get maxTemp;
  @override
  String get weatherCondition;
  @override
  String get weatherDescription;
  @override
  String get weatherIcon;

  /// Create a copy of WeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherEntityImplCopyWith<_$WeatherEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
