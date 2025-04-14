// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ForecastEntity {
  DateTime get date => throw _privateConstructorUsedError;
  double get avgTemp => throw _privateConstructorUsedError;
  double? get minTemp => throw _privateConstructorUsedError;
  double? get maxTemp => throw _privateConstructorUsedError;
  String get weatherCondition => throw _privateConstructorUsedError;
  String get weatherIcon => throw _privateConstructorUsedError;

  /// Create a copy of ForecastEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForecastEntityCopyWith<ForecastEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastEntityCopyWith<$Res> {
  factory $ForecastEntityCopyWith(
          ForecastEntity value, $Res Function(ForecastEntity) then) =
      _$ForecastEntityCopyWithImpl<$Res, ForecastEntity>;
  @useResult
  $Res call(
      {DateTime date,
      double avgTemp,
      double? minTemp,
      double? maxTemp,
      String weatherCondition,
      String weatherIcon});
}

/// @nodoc
class _$ForecastEntityCopyWithImpl<$Res, $Val extends ForecastEntity>
    implements $ForecastEntityCopyWith<$Res> {
  _$ForecastEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForecastEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? avgTemp = null,
    Object? minTemp = freezed,
    Object? maxTemp = freezed,
    Object? weatherCondition = null,
    Object? weatherIcon = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      avgTemp: null == avgTemp
          ? _value.avgTemp
          : avgTemp // ignore: cast_nullable_to_non_nullable
              as double,
      minTemp: freezed == minTemp
          ? _value.minTemp
          : minTemp // ignore: cast_nullable_to_non_nullable
              as double?,
      maxTemp: freezed == maxTemp
          ? _value.maxTemp
          : maxTemp // ignore: cast_nullable_to_non_nullable
              as double?,
      weatherCondition: null == weatherCondition
          ? _value.weatherCondition
          : weatherCondition // ignore: cast_nullable_to_non_nullable
              as String,
      weatherIcon: null == weatherIcon
          ? _value.weatherIcon
          : weatherIcon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForecastEntityImplCopyWith<$Res>
    implements $ForecastEntityCopyWith<$Res> {
  factory _$$ForecastEntityImplCopyWith(_$ForecastEntityImpl value,
          $Res Function(_$ForecastEntityImpl) then) =
      __$$ForecastEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      double avgTemp,
      double? minTemp,
      double? maxTemp,
      String weatherCondition,
      String weatherIcon});
}

/// @nodoc
class __$$ForecastEntityImplCopyWithImpl<$Res>
    extends _$ForecastEntityCopyWithImpl<$Res, _$ForecastEntityImpl>
    implements _$$ForecastEntityImplCopyWith<$Res> {
  __$$ForecastEntityImplCopyWithImpl(
      _$ForecastEntityImpl _value, $Res Function(_$ForecastEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForecastEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? avgTemp = null,
    Object? minTemp = freezed,
    Object? maxTemp = freezed,
    Object? weatherCondition = null,
    Object? weatherIcon = null,
  }) {
    return _then(_$ForecastEntityImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      avgTemp: null == avgTemp
          ? _value.avgTemp
          : avgTemp // ignore: cast_nullable_to_non_nullable
              as double,
      minTemp: freezed == minTemp
          ? _value.minTemp
          : minTemp // ignore: cast_nullable_to_non_nullable
              as double?,
      maxTemp: freezed == maxTemp
          ? _value.maxTemp
          : maxTemp // ignore: cast_nullable_to_non_nullable
              as double?,
      weatherCondition: null == weatherCondition
          ? _value.weatherCondition
          : weatherCondition // ignore: cast_nullable_to_non_nullable
              as String,
      weatherIcon: null == weatherIcon
          ? _value.weatherIcon
          : weatherIcon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForecastEntityImpl implements _ForecastEntity {
  const _$ForecastEntityImpl(
      {required this.date,
      required this.avgTemp,
      this.minTemp,
      this.maxTemp,
      required this.weatherCondition,
      required this.weatherIcon});

  @override
  final DateTime date;
  @override
  final double avgTemp;
  @override
  final double? minTemp;
  @override
  final double? maxTemp;
  @override
  final String weatherCondition;
  @override
  final String weatherIcon;

  @override
  String toString() {
    return 'ForecastEntity(date: $date, avgTemp: $avgTemp, minTemp: $minTemp, maxTemp: $maxTemp, weatherCondition: $weatherCondition, weatherIcon: $weatherIcon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastEntityImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.avgTemp, avgTemp) || other.avgTemp == avgTemp) &&
            (identical(other.minTemp, minTemp) || other.minTemp == minTemp) &&
            (identical(other.maxTemp, maxTemp) || other.maxTemp == maxTemp) &&
            (identical(other.weatherCondition, weatherCondition) ||
                other.weatherCondition == weatherCondition) &&
            (identical(other.weatherIcon, weatherIcon) ||
                other.weatherIcon == weatherIcon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, avgTemp, minTemp, maxTemp,
      weatherCondition, weatherIcon);

  /// Create a copy of ForecastEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastEntityImplCopyWith<_$ForecastEntityImpl> get copyWith =>
      __$$ForecastEntityImplCopyWithImpl<_$ForecastEntityImpl>(
          this, _$identity);
}

abstract class _ForecastEntity implements ForecastEntity {
  const factory _ForecastEntity(
      {required final DateTime date,
      required final double avgTemp,
      final double? minTemp,
      final double? maxTemp,
      required final String weatherCondition,
      required final String weatherIcon}) = _$ForecastEntityImpl;

  @override
  DateTime get date;
  @override
  double get avgTemp;
  @override
  double? get minTemp;
  @override
  double? get maxTemp;
  @override
  String get weatherCondition;
  @override
  String get weatherIcon;

  /// Create a copy of ForecastEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForecastEntityImplCopyWith<_$ForecastEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
