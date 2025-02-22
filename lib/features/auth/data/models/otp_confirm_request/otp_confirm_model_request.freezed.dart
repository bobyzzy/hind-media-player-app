// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_confirm_model_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OtpConfirmRequestModel _$OtpConfirmRequestModelFromJson(
    Map<String, dynamic> json) {
  return _OtpConfirmRequestModel.fromJson(json);
}

/// @nodoc
mixin _$OtpConfirmRequestModel {
  @JsonKey(name: 'phone_number')
  int get phoneNumber => throw _privateConstructorUsedError;
  int get otp => throw _privateConstructorUsedError;

  /// Serializes this OtpConfirmRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OtpConfirmRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtpConfirmRequestModelCopyWith<OtpConfirmRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpConfirmRequestModelCopyWith<$Res> {
  factory $OtpConfirmRequestModelCopyWith(OtpConfirmRequestModel value,
          $Res Function(OtpConfirmRequestModel) then) =
      _$OtpConfirmRequestModelCopyWithImpl<$Res, OtpConfirmRequestModel>;
  @useResult
  $Res call({@JsonKey(name: 'phone_number') int phoneNumber, int otp});
}

/// @nodoc
class _$OtpConfirmRequestModelCopyWithImpl<$Res,
        $Val extends OtpConfirmRequestModel>
    implements $OtpConfirmRequestModelCopyWith<$Res> {
  _$OtpConfirmRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpConfirmRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? otp = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as int,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtpConfirmRequestModelImplCopyWith<$Res>
    implements $OtpConfirmRequestModelCopyWith<$Res> {
  factory _$$OtpConfirmRequestModelImplCopyWith(
          _$OtpConfirmRequestModelImpl value,
          $Res Function(_$OtpConfirmRequestModelImpl) then) =
      __$$OtpConfirmRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'phone_number') int phoneNumber, int otp});
}

/// @nodoc
class __$$OtpConfirmRequestModelImplCopyWithImpl<$Res>
    extends _$OtpConfirmRequestModelCopyWithImpl<$Res,
        _$OtpConfirmRequestModelImpl>
    implements _$$OtpConfirmRequestModelImplCopyWith<$Res> {
  __$$OtpConfirmRequestModelImplCopyWithImpl(
      _$OtpConfirmRequestModelImpl _value,
      $Res Function(_$OtpConfirmRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpConfirmRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? otp = null,
  }) {
    return _then(_$OtpConfirmRequestModelImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as int,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtpConfirmRequestModelImpl implements _OtpConfirmRequestModel {
  const _$OtpConfirmRequestModelImpl(
      {@JsonKey(name: 'phone_number') required this.phoneNumber,
      required this.otp});

  factory _$OtpConfirmRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtpConfirmRequestModelImplFromJson(json);

  @override
  @JsonKey(name: 'phone_number')
  final int phoneNumber;
  @override
  final int otp;

  @override
  String toString() {
    return 'OtpConfirmRequestModel(phoneNumber: $phoneNumber, otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpConfirmRequestModelImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, otp);

  /// Create a copy of OtpConfirmRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpConfirmRequestModelImplCopyWith<_$OtpConfirmRequestModelImpl>
      get copyWith => __$$OtpConfirmRequestModelImplCopyWithImpl<
          _$OtpConfirmRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtpConfirmRequestModelImplToJson(
      this,
    );
  }
}

abstract class _OtpConfirmRequestModel implements OtpConfirmRequestModel {
  const factory _OtpConfirmRequestModel(
      {@JsonKey(name: 'phone_number') required final int phoneNumber,
      required final int otp}) = _$OtpConfirmRequestModelImpl;

  factory _OtpConfirmRequestModel.fromJson(Map<String, dynamic> json) =
      _$OtpConfirmRequestModelImpl.fromJson;

  @override
  @JsonKey(name: 'phone_number')
  int get phoneNumber;
  @override
  int get otp;

  /// Create a copy of OtpConfirmRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpConfirmRequestModelImplCopyWith<_$OtpConfirmRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
