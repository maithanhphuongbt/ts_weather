// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) {
  return _WeatherModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherModel {
  String get name => throw _privateConstructorUsedError;
  Main get main => throw _privateConstructorUsedError;
  List<Weather> get weather => throw _privateConstructorUsedError;

  /// Serializes this WeatherModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherModelCopyWith<WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherModelCopyWith<$Res> {
  factory $WeatherModelCopyWith(
          WeatherModel value, $Res Function(WeatherModel) then) =
      _$WeatherModelCopyWithImpl<$Res, WeatherModel>;
  @useResult
  $Res call({String name, Main main, List<Weather> weather});

  $MainCopyWith<$Res> get main;
}

/// @nodoc
class _$WeatherModelCopyWithImpl<$Res, $Val extends WeatherModel>
    implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? main = null,
    Object? weather = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as Main,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
    ) as $Val);
  }

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MainCopyWith<$Res> get main {
    return $MainCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherModelImplCopyWith<$Res>
    implements $WeatherModelCopyWith<$Res> {
  factory _$$WeatherModelImplCopyWith(
          _$WeatherModelImpl value, $Res Function(_$WeatherModelImpl) then) =
      __$$WeatherModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, Main main, List<Weather> weather});

  @override
  $MainCopyWith<$Res> get main;
}

/// @nodoc
class __$$WeatherModelImplCopyWithImpl<$Res>
    extends _$WeatherModelCopyWithImpl<$Res, _$WeatherModelImpl>
    implements _$$WeatherModelImplCopyWith<$Res> {
  __$$WeatherModelImplCopyWithImpl(
      _$WeatherModelImpl _value, $Res Function(_$WeatherModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? main = null,
    Object? weather = null,
  }) {
    return _then(_$WeatherModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as Main,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherModelImpl implements _WeatherModel {
  const _$WeatherModelImpl(
      {required this.name,
      required this.main,
      required final List<Weather> weather})
      : _weather = weather;

  factory _$WeatherModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherModelImplFromJson(json);

  @override
  final String name;
  @override
  final Main main;
  final List<Weather> _weather;
  @override
  List<Weather> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  String toString() {
    return 'WeatherModel(name: $name, main: $main, weather: $weather)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.main, main) || other.main == main) &&
            const DeepCollectionEquality().equals(other._weather, _weather));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, main, const DeepCollectionEquality().hash(_weather));

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      __$$WeatherModelImplCopyWithImpl<_$WeatherModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherModelImplToJson(
      this,
    );
  }
}

abstract class _WeatherModel implements WeatherModel {
  const factory _WeatherModel(
      {required final String name,
      required final Main main,
      required final List<Weather> weather}) = _$WeatherModelImpl;

  factory _WeatherModel.fromJson(Map<String, dynamic> json) =
      _$WeatherModelImpl.fromJson;

  @override
  String get name;
  @override
  Main get main;
  @override
  List<Weather> get weather;

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Main _$MainFromJson(Map<String, dynamic> json) {
  return _Main.fromJson(json);
}

/// @nodoc
mixin _$Main {
  double get temp => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_min')
  double get tempMin => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_max')
  double get tempMax => throw _privateConstructorUsedError;

  /// Serializes this Main to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Main
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainCopyWith<Main> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainCopyWith<$Res> {
  factory $MainCopyWith(Main value, $Res Function(Main) then) =
      _$MainCopyWithImpl<$Res, Main>;
  @useResult
  $Res call(
      {double temp,
      @JsonKey(name: 'temp_min') double tempMin,
      @JsonKey(name: 'temp_max') double tempMax});
}

/// @nodoc
class _$MainCopyWithImpl<$Res, $Val extends Main>
    implements $MainCopyWith<$Res> {
  _$MainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Main
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? tempMin = null,
    Object? tempMax = null,
  }) {
    return _then(_value.copyWith(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: null == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: null == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainImplCopyWith<$Res> implements $MainCopyWith<$Res> {
  factory _$$MainImplCopyWith(
          _$MainImpl value, $Res Function(_$MainImpl) then) =
      __$$MainImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double temp,
      @JsonKey(name: 'temp_min') double tempMin,
      @JsonKey(name: 'temp_max') double tempMax});
}

/// @nodoc
class __$$MainImplCopyWithImpl<$Res>
    extends _$MainCopyWithImpl<$Res, _$MainImpl>
    implements _$$MainImplCopyWith<$Res> {
  __$$MainImplCopyWithImpl(_$MainImpl _value, $Res Function(_$MainImpl) _then)
      : super(_value, _then);

  /// Create a copy of Main
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? tempMin = null,
    Object? tempMax = null,
  }) {
    return _then(_$MainImpl(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: null == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: null == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainImpl implements _Main {
  const _$MainImpl(
      {required this.temp,
      @JsonKey(name: 'temp_min') required this.tempMin,
      @JsonKey(name: 'temp_max') required this.tempMax});

  factory _$MainImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainImplFromJson(json);

  @override
  final double temp;
  @override
  @JsonKey(name: 'temp_min')
  final double tempMin;
  @override
  @JsonKey(name: 'temp_max')
  final double tempMax;

  @override
  String toString() {
    return 'Main(temp: $temp, tempMin: $tempMin, tempMax: $tempMax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainImpl &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.tempMin, tempMin) || other.tempMin == tempMin) &&
            (identical(other.tempMax, tempMax) || other.tempMax == tempMax));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, temp, tempMin, tempMax);

  /// Create a copy of Main
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainImplCopyWith<_$MainImpl> get copyWith =>
      __$$MainImplCopyWithImpl<_$MainImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainImplToJson(
      this,
    );
  }
}

abstract class _Main implements Main {
  const factory _Main(
      {required final double temp,
      @JsonKey(name: 'temp_min') required final double tempMin,
      @JsonKey(name: 'temp_max') required final double tempMax}) = _$MainImpl;

  factory _Main.fromJson(Map<String, dynamic> json) = _$MainImpl.fromJson;

  @override
  double get temp;
  @override
  @JsonKey(name: 'temp_min')
  double get tempMin;
  @override
  @JsonKey(name: 'temp_max')
  double get tempMax;

  /// Create a copy of Main
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainImplCopyWith<_$MainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return _Weather.fromJson(json);
}

/// @nodoc
mixin _$Weather {
  int get id => throw _privateConstructorUsedError;
  String get main => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  /// Serializes this Weather to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res, Weather>;
  @useResult
  $Res call({int id, String main, String description, String icon});
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res, $Val extends Weather>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? main = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherImplCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$$WeatherImplCopyWith(
          _$WeatherImpl value, $Res Function(_$WeatherImpl) then) =
      __$$WeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String main, String description, String icon});
}

/// @nodoc
class __$$WeatherImplCopyWithImpl<$Res>
    extends _$WeatherCopyWithImpl<$Res, _$WeatherImpl>
    implements _$$WeatherImplCopyWith<$Res> {
  __$$WeatherImplCopyWithImpl(
      _$WeatherImpl _value, $Res Function(_$WeatherImpl) _then)
      : super(_value, _then);

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? main = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_$WeatherImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherImpl implements _Weather {
  const _$WeatherImpl(
      {required this.id,
      required this.main,
      required this.description,
      required this.icon});

  factory _$WeatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherImplFromJson(json);

  @override
  final int id;
  @override
  final String main;
  @override
  final String description;
  @override
  final String icon;

  @override
  String toString() {
    return 'Weather(id: $id, main: $main, description: $description, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, main, description, icon);

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherImplCopyWith<_$WeatherImpl> get copyWith =>
      __$$WeatherImplCopyWithImpl<_$WeatherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherImplToJson(
      this,
    );
  }
}

abstract class _Weather implements Weather {
  const factory _Weather(
      {required final int id,
      required final String main,
      required final String description,
      required final String icon}) = _$WeatherImpl;

  factory _Weather.fromJson(Map<String, dynamic> json) = _$WeatherImpl.fromJson;

  @override
  int get id;
  @override
  String get main;
  @override
  String get description;
  @override
  String get icon;

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherImplCopyWith<_$WeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ForecastModel _$ForecastModelFromJson(Map<String, dynamic> json) {
  return _ForecastModel.fromJson(json);
}

/// @nodoc
mixin _$ForecastModel {
  List<ForecastItem> get list => throw _privateConstructorUsedError;

  /// Serializes this ForecastModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForecastModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForecastModelCopyWith<ForecastModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastModelCopyWith<$Res> {
  factory $ForecastModelCopyWith(
          ForecastModel value, $Res Function(ForecastModel) then) =
      _$ForecastModelCopyWithImpl<$Res, ForecastModel>;
  @useResult
  $Res call({List<ForecastItem> list});
}

/// @nodoc
class _$ForecastModelCopyWithImpl<$Res, $Val extends ForecastModel>
    implements $ForecastModelCopyWith<$Res> {
  _$ForecastModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForecastModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ForecastItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForecastModelImplCopyWith<$Res>
    implements $ForecastModelCopyWith<$Res> {
  factory _$$ForecastModelImplCopyWith(
          _$ForecastModelImpl value, $Res Function(_$ForecastModelImpl) then) =
      __$$ForecastModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ForecastItem> list});
}

/// @nodoc
class __$$ForecastModelImplCopyWithImpl<$Res>
    extends _$ForecastModelCopyWithImpl<$Res, _$ForecastModelImpl>
    implements _$$ForecastModelImplCopyWith<$Res> {
  __$$ForecastModelImplCopyWithImpl(
      _$ForecastModelImpl _value, $Res Function(_$ForecastModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForecastModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$ForecastModelImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ForecastItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastModelImpl implements _ForecastModel {
  const _$ForecastModelImpl({required final List<ForecastItem> list})
      : _list = list;

  factory _$ForecastModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastModelImplFromJson(json);

  final List<ForecastItem> _list;
  @override
  List<ForecastItem> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'ForecastModel(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastModelImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  /// Create a copy of ForecastModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastModelImplCopyWith<_$ForecastModelImpl> get copyWith =>
      __$$ForecastModelImplCopyWithImpl<_$ForecastModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastModelImplToJson(
      this,
    );
  }
}

abstract class _ForecastModel implements ForecastModel {
  const factory _ForecastModel({required final List<ForecastItem> list}) =
      _$ForecastModelImpl;

  factory _ForecastModel.fromJson(Map<String, dynamic> json) =
      _$ForecastModelImpl.fromJson;

  @override
  List<ForecastItem> get list;

  /// Create a copy of ForecastModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForecastModelImplCopyWith<_$ForecastModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ForecastItem _$ForecastItemFromJson(Map<String, dynamic> json) {
  return _ForecastItem.fromJson(json);
}

/// @nodoc
mixin _$ForecastItem {
  int get dt => throw _privateConstructorUsedError;
  Main get main => throw _privateConstructorUsedError;
  List<Weather> get weather => throw _privateConstructorUsedError;

  /// Serializes this ForecastItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForecastItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForecastItemCopyWith<ForecastItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastItemCopyWith<$Res> {
  factory $ForecastItemCopyWith(
          ForecastItem value, $Res Function(ForecastItem) then) =
      _$ForecastItemCopyWithImpl<$Res, ForecastItem>;
  @useResult
  $Res call({int dt, Main main, List<Weather> weather});

  $MainCopyWith<$Res> get main;
}

/// @nodoc
class _$ForecastItemCopyWithImpl<$Res, $Val extends ForecastItem>
    implements $ForecastItemCopyWith<$Res> {
  _$ForecastItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForecastItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? main = null,
    Object? weather = null,
  }) {
    return _then(_value.copyWith(
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as Main,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
    ) as $Val);
  }

  /// Create a copy of ForecastItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MainCopyWith<$Res> get main {
    return $MainCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastItemImplCopyWith<$Res>
    implements $ForecastItemCopyWith<$Res> {
  factory _$$ForecastItemImplCopyWith(
          _$ForecastItemImpl value, $Res Function(_$ForecastItemImpl) then) =
      __$$ForecastItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int dt, Main main, List<Weather> weather});

  @override
  $MainCopyWith<$Res> get main;
}

/// @nodoc
class __$$ForecastItemImplCopyWithImpl<$Res>
    extends _$ForecastItemCopyWithImpl<$Res, _$ForecastItemImpl>
    implements _$$ForecastItemImplCopyWith<$Res> {
  __$$ForecastItemImplCopyWithImpl(
      _$ForecastItemImpl _value, $Res Function(_$ForecastItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForecastItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? main = null,
    Object? weather = null,
  }) {
    return _then(_$ForecastItemImpl(
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as Main,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastItemImpl implements _ForecastItem {
  const _$ForecastItemImpl(
      {required this.dt,
      required this.main,
      required final List<Weather> weather})
      : _weather = weather;

  factory _$ForecastItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastItemImplFromJson(json);

  @override
  final int dt;
  @override
  final Main main;
  final List<Weather> _weather;
  @override
  List<Weather> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  String toString() {
    return 'ForecastItem(dt: $dt, main: $main, weather: $weather)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastItemImpl &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.main, main) || other.main == main) &&
            const DeepCollectionEquality().equals(other._weather, _weather));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, dt, main, const DeepCollectionEquality().hash(_weather));

  /// Create a copy of ForecastItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastItemImplCopyWith<_$ForecastItemImpl> get copyWith =>
      __$$ForecastItemImplCopyWithImpl<_$ForecastItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastItemImplToJson(
      this,
    );
  }
}

abstract class _ForecastItem implements ForecastItem {
  const factory _ForecastItem(
      {required final int dt,
      required final Main main,
      required final List<Weather> weather}) = _$ForecastItemImpl;

  factory _ForecastItem.fromJson(Map<String, dynamic> json) =
      _$ForecastItemImpl.fromJson;

  @override
  int get dt;
  @override
  Main get main;
  @override
  List<Weather> get weather;

  /// Create a copy of ForecastItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForecastItemImplCopyWith<_$ForecastItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
