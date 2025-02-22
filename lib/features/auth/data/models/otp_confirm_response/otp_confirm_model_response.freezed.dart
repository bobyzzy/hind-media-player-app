// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_confirm_model_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OtpConfirmResponseModel _$OtpConfirmResponseModelFromJson(
    Map<String, dynamic> json) {
  return _OtpConfirmResponseModel.fromJson(json);
}

/// @nodoc
mixin _$OtpConfirmResponseModel {
  @JsonKey(name: 'has_account')
  bool get hasAccount => throw _privateConstructorUsedError;
  String get access => throw _privateConstructorUsedError;
  String get refresh => throw _privateConstructorUsedError;

  /// Serializes this OtpConfirmResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OtpConfirmResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtpConfirmResponseModelCopyWith<OtpConfirmResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpConfirmResponseModelCopyWith<$Res> {
  factory $OtpConfirmResponseModelCopyWith(OtpConfirmResponseModel value,
          $Res Function(OtpConfirmResponseModel) then) =
      _$OtpConfirmResponseModelCopyWithImpl<$Res, OtpConfirmResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'has_account') bool hasAccount,
      String access,
      String refresh});
}

/// @nodoc
class _$OtpConfirmResponseModelCopyWithImpl<$Res,
        $Val extends OtpConfirmResponseModel>
    implements $OtpConfirmResponseModelCopyWith<$Res> {
  _$OtpConfirmResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpConfirmResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasAccount = null,
    Object? access = null,
    Object? refresh = null,
  }) {
    return _then(_value.copyWith(
      hasAccount: null == hasAccount
          ? _value.hasAccount
          : hasAccount // ignore: cast_nullable_to_non_nullable
              as bool,
      access: null == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String,
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtpConfirmResponseModelImplCopyWith<$Res>
    implements $OtpConfirmResponseModelCopyWith<$Res> {
  factory _$$OtpConfirmResponseModelImplCopyWith(
          _$OtpConfirmResponseModelImpl value,
          $Res Function(_$OtpConfirmResponseModelImpl) then) =
      __$$OtpConfirmResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'has_account') bool hasAccount,
      String access,
      String refresh});
}

/// @nodoc
class __$$OtpConfirmResponseModelImplCopyWithImpl<$Res>
    extends _$OtpConfirmResponseModelCopyWithImpl<$Res,
        _$OtpConfirmResponseModelImpl>
    implements _$$OtpConfirmResponseModelImplCopyWith<$Res> {
  __$$OtpConfirmResponseModelImplCopyWithImpl(
      _$OtpConfirmResponseModelImpl _value,
      $Res Function(_$OtpConfirmResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpConfirmResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasAccount = null,
    Object? access = null,
    Object? refresh = null,
  }) {
    return _then(_$OtpConfirmResponseModelImpl(
      hasAccount: null == hasAccount
          ? _value.hasAccount
          : hasAccount // ignore: cast_nullable_to_non_nullable
              as bool,
      access: null == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String,
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtpConfirmResponseModelImpl implements _OtpConfirmResponseModel {
  const _$OtpConfirmResponseModelImpl(
      {@JsonKey(name: 'has_account') required this.hasAccount,
      required this.access,
      required this.refresh});

  factory _$OtpConfirmResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtpConfirmResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'has_account')
  final bool hasAccount;
  @override
  final String access;
  @override
  final String refresh;

  @override
  String toString() {
    return 'OtpConfirmResponseModel(hasAccount: $hasAccount, access: $access, refresh: $refresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpConfirmResponseModelImpl &&
            (identical(other.hasAccount, hasAccount) ||
                other.hasAccount == hasAccount) &&
            (identical(other.access, access) || other.access == access) &&
            (identical(other.refresh, refresh) || other.refresh == refresh));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, hasAccount, access, refresh);

  /// Create a copy of OtpConfirmResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpConfirmResponseModelImplCopyWith<_$OtpConfirmResponseModelImpl>
      get copyWith => __$$OtpConfirmResponseModelImplCopyWithImpl<
          _$OtpConfirmResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtpConfirmResponseModelImplToJson(
      this,
    );
  }
}

abstract class _OtpConfirmResponseModel implements OtpConfirmResponseModel {
  const factory _OtpConfirmResponseModel(
      {@JsonKey(name: 'has_account') required final bool hasAccount,
      required final String access,
      required final String refresh}) = _$OtpConfirmResponseModelImpl;

  factory _OtpConfirmResponseModel.fromJson(Map<String, dynamic> json) =
      _$OtpConfirmResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'has_account')
  bool get hasAccount;
  @override
  String get access;
  @override
  String get refresh;

  /// Create a copy of OtpConfirmResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpConfirmResponseModelImplCopyWith<_$OtpConfirmResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
