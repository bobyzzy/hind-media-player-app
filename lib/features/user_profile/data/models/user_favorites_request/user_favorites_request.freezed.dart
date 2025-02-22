// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_favorites_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserFavoritesRequestModel _$UserFavoritesRequestModelFromJson(
    Map<String, dynamic> json) {
  return _UserFavoritesRequestModel.fromJson(json);
}

/// @nodoc
mixin _$UserFavoritesRequestModel {
  @JsonKey(name: 'file_category')
  String get fileCategory => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_id')
  int get fileId => throw _privateConstructorUsedError;

  /// Serializes this UserFavoritesRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserFavoritesRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserFavoritesRequestModelCopyWith<UserFavoritesRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFavoritesRequestModelCopyWith<$Res> {
  factory $UserFavoritesRequestModelCopyWith(UserFavoritesRequestModel value,
          $Res Function(UserFavoritesRequestModel) then) =
      _$UserFavoritesRequestModelCopyWithImpl<$Res, UserFavoritesRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'file_category') String fileCategory,
      @JsonKey(name: 'file_id') int fileId});
}

/// @nodoc
class _$UserFavoritesRequestModelCopyWithImpl<$Res,
        $Val extends UserFavoritesRequestModel>
    implements $UserFavoritesRequestModelCopyWith<$Res> {
  _$UserFavoritesRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserFavoritesRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileCategory = null,
    Object? fileId = null,
  }) {
    return _then(_value.copyWith(
      fileCategory: null == fileCategory
          ? _value.fileCategory
          : fileCategory // ignore: cast_nullable_to_non_nullable
              as String,
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserFavoritesRequestModelImplCopyWith<$Res>
    implements $UserFavoritesRequestModelCopyWith<$Res> {
  factory _$$UserFavoritesRequestModelImplCopyWith(
          _$UserFavoritesRequestModelImpl value,
          $Res Function(_$UserFavoritesRequestModelImpl) then) =
      __$$UserFavoritesRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'file_category') String fileCategory,
      @JsonKey(name: 'file_id') int fileId});
}

/// @nodoc
class __$$UserFavoritesRequestModelImplCopyWithImpl<$Res>
    extends _$UserFavoritesRequestModelCopyWithImpl<$Res,
        _$UserFavoritesRequestModelImpl>
    implements _$$UserFavoritesRequestModelImplCopyWith<$Res> {
  __$$UserFavoritesRequestModelImplCopyWithImpl(
      _$UserFavoritesRequestModelImpl _value,
      $Res Function(_$UserFavoritesRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserFavoritesRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileCategory = null,
    Object? fileId = null,
  }) {
    return _then(_$UserFavoritesRequestModelImpl(
      fileCategory: null == fileCategory
          ? _value.fileCategory
          : fileCategory // ignore: cast_nullable_to_non_nullable
              as String,
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserFavoritesRequestModelImpl implements _UserFavoritesRequestModel {
  const _$UserFavoritesRequestModelImpl(
      {@JsonKey(name: 'file_category') required this.fileCategory,
      @JsonKey(name: 'file_id') required this.fileId});

  factory _$UserFavoritesRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserFavoritesRequestModelImplFromJson(json);

  @override
  @JsonKey(name: 'file_category')
  final String fileCategory;
  @override
  @JsonKey(name: 'file_id')
  final int fileId;

  @override
  String toString() {
    return 'UserFavoritesRequestModel(fileCategory: $fileCategory, fileId: $fileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserFavoritesRequestModelImpl &&
            (identical(other.fileCategory, fileCategory) ||
                other.fileCategory == fileCategory) &&
            (identical(other.fileId, fileId) || other.fileId == fileId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fileCategory, fileId);

  /// Create a copy of UserFavoritesRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserFavoritesRequestModelImplCopyWith<_$UserFavoritesRequestModelImpl>
      get copyWith => __$$UserFavoritesRequestModelImplCopyWithImpl<
          _$UserFavoritesRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserFavoritesRequestModelImplToJson(
      this,
    );
  }
}

abstract class _UserFavoritesRequestModel implements UserFavoritesRequestModel {
  const factory _UserFavoritesRequestModel(
          {@JsonKey(name: 'file_category') required final String fileCategory,
          @JsonKey(name: 'file_id') required final int fileId}) =
      _$UserFavoritesRequestModelImpl;

  factory _UserFavoritesRequestModel.fromJson(Map<String, dynamic> json) =
      _$UserFavoritesRequestModelImpl.fromJson;

  @override
  @JsonKey(name: 'file_category')
  String get fileCategory;
  @override
  @JsonKey(name: 'file_id')
  int get fileId;

  /// Create a copy of UserFavoritesRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserFavoritesRequestModelImplCopyWith<_$UserFavoritesRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
