// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppSettingsEntity {
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  bool get isConnected => throw _privateConstructorUsedError;

  /// Create a copy of AppSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppSettingsEntityCopyWith<AppSettingsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingsEntityCopyWith<$Res> {
  factory $AppSettingsEntityCopyWith(
          AppSettingsEntity value, $Res Function(AppSettingsEntity) then) =
      _$AppSettingsEntityCopyWithImpl<$Res, AppSettingsEntity>;
  @useResult
  $Res call({ThemeMode themeMode, bool isConnected});
}

/// @nodoc
class _$AppSettingsEntityCopyWithImpl<$Res, $Val extends AppSettingsEntity>
    implements $AppSettingsEntityCopyWith<$Res> {
  _$AppSettingsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? isConnected = null,
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppSettingsEntityImplCopyWith<$Res>
    implements $AppSettingsEntityCopyWith<$Res> {
  factory _$$AppSettingsEntityImplCopyWith(_$AppSettingsEntityImpl value,
          $Res Function(_$AppSettingsEntityImpl) then) =
      __$$AppSettingsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeMode themeMode, bool isConnected});
}

/// @nodoc
class __$$AppSettingsEntityImplCopyWithImpl<$Res>
    extends _$AppSettingsEntityCopyWithImpl<$Res, _$AppSettingsEntityImpl>
    implements _$$AppSettingsEntityImplCopyWith<$Res> {
  __$$AppSettingsEntityImplCopyWithImpl(_$AppSettingsEntityImpl _value,
      $Res Function(_$AppSettingsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? isConnected = null,
  }) {
    return _then(_$AppSettingsEntityImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AppSettingsEntityImpl implements _AppSettingsEntity {
  const _$AppSettingsEntityImpl(
      {this.themeMode = ThemeMode.system, this.isConnected = true});

  @override
  @JsonKey()
  final ThemeMode themeMode;
  @override
  @JsonKey()
  final bool isConnected;

  @override
  String toString() {
    return 'AppSettingsEntity(themeMode: $themeMode, isConnected: $isConnected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSettingsEntityImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode, isConnected);

  /// Create a copy of AppSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingsEntityImplCopyWith<_$AppSettingsEntityImpl> get copyWith =>
      __$$AppSettingsEntityImplCopyWithImpl<_$AppSettingsEntityImpl>(
          this, _$identity);
}

abstract class _AppSettingsEntity implements AppSettingsEntity {
  const factory _AppSettingsEntity(
      {final ThemeMode themeMode,
      final bool isConnected}) = _$AppSettingsEntityImpl;

  @override
  ThemeMode get themeMode;
  @override
  bool get isConnected;

  /// Create a copy of AppSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppSettingsEntityImplCopyWith<_$AppSettingsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
