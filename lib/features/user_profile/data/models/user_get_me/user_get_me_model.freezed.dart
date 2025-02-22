// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_get_me_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserGetMeModel _$UserGetMeModelFromJson(Map<String, dynamic> json) {
  return _UserGetMeModel.fromJson(json);
}

/// @nodoc
mixin _$UserGetMeModel {
  @JsonKey(name: 'phone_number')
  String get phoneNumber => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;

  /// Serializes this UserGetMeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserGetMeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserGetMeModelCopyWith<UserGetMeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserGetMeModelCopyWith<$Res> {
  factory $UserGetMeModelCopyWith(
          UserGetMeModel value, $Res Function(UserGetMeModel) then) =
      _$UserGetMeModelCopyWithImpl<$Res, UserGetMeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'phone_number') String phoneNumber,
      String gender,
      String? avatar});
}

/// @nodoc
class _$UserGetMeModelCopyWithImpl<$Res, $Val extends UserGetMeModel>
    implements $UserGetMeModelCopyWith<$Res> {
  _$UserGetMeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserGetMeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? gender = null,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserGetMeModelImplCopyWith<$Res>
    implements $UserGetMeModelCopyWith<$Res> {
  factory _$$UserGetMeModelImplCopyWith(_$UserGetMeModelImpl value,
          $Res Function(_$UserGetMeModelImpl) then) =
      __$$UserGetMeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'phone_number') String phoneNumber,
      String gender,
      String? avatar});
}

/// @nodoc
class __$$UserGetMeModelImplCopyWithImpl<$Res>
    extends _$UserGetMeModelCopyWithImpl<$Res, _$UserGetMeModelImpl>
    implements _$$UserGetMeModelImplCopyWith<$Res> {
  __$$UserGetMeModelImplCopyWithImpl(
      _$UserGetMeModelImpl _value, $Res Function(_$UserGetMeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserGetMeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? gender = null,
    Object? avatar = freezed,
  }) {
    return _then(_$UserGetMeModelImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserGetMeModelImpl implements _UserGetMeModel {
  const _$UserGetMeModelImpl(
      {@JsonKey(name: 'phone_number') required this.phoneNumber,
      required this.gender,
      required this.avatar});

  factory _$UserGetMeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserGetMeModelImplFromJson(json);

  @override
  @JsonKey(name: 'phone_number')
  final String phoneNumber;
  @override
  final String gender;
  @override
  final String? avatar;

  @override
  String toString() {
    return 'UserGetMeModel(phoneNumber: $phoneNumber, gender: $gender, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserGetMeModelImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, gender, avatar);

  /// Create a copy of UserGetMeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserGetMeModelImplCopyWith<_$UserGetMeModelImpl> get copyWith =>
      __$$UserGetMeModelImplCopyWithImpl<_$UserGetMeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserGetMeModelImplToJson(
      this,
    );
  }
}

abstract class _UserGetMeModel implements UserGetMeModel {
  const factory _UserGetMeModel(
      {@JsonKey(name: 'phone_number') required final String phoneNumber,
      required final String gender,
      required final String? avatar}) = _$UserGetMeModelImpl;

  factory _UserGetMeModel.fromJson(Map<String, dynamic> json) =
      _$UserGetMeModelImpl.fromJson;

  @override
  @JsonKey(name: 'phone_number')
  String get phoneNumber;
  @override
  String get gender;
  @override
  String? get avatar;

  /// Create a copy of UserGetMeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserGetMeModelImplCopyWith<_$UserGetMeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
