// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_favorites_delete_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserFavoritesDeleteRequestModel _$UserFavoritesDeleteRequestModelFromJson(
    Map<String, dynamic> json) {
  return _UserFavoritesDeleteRequestModel.fromJson(json);
}

/// @nodoc
mixin _$UserFavoritesDeleteRequestModel {
  @JsonKey(name: 'file_category')
  String get fileCategory => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_id')
  int get fileId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserFavoritesDeleteRequestModelCopyWith<UserFavoritesDeleteRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFavoritesDeleteRequestModelCopyWith<$Res> {
  factory $UserFavoritesDeleteRequestModelCopyWith(
          UserFavoritesDeleteRequestModel value,
          $Res Function(UserFavoritesDeleteRequestModel) then) =
      _$UserFavoritesDeleteRequestModelCopyWithImpl<$Res,
          UserFavoritesDeleteRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'file_category') String fileCategory,
      @JsonKey(name: 'file_id') int fileId});
}

/// @nodoc
class _$UserFavoritesDeleteRequestModelCopyWithImpl<$Res,
        $Val extends UserFavoritesDeleteRequestModel>
    implements $UserFavoritesDeleteRequestModelCopyWith<$Res> {
  _$UserFavoritesDeleteRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$UserFavoritesDeleteRequestModelImplCopyWith<$Res>
    implements $UserFavoritesDeleteRequestModelCopyWith<$Res> {
  factory _$$UserFavoritesDeleteRequestModelImplCopyWith(
          _$UserFavoritesDeleteRequestModelImpl value,
          $Res Function(_$UserFavoritesDeleteRequestModelImpl) then) =
      __$$UserFavoritesDeleteRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'file_category') String fileCategory,
      @JsonKey(name: 'file_id') int fileId});
}

/// @nodoc
class __$$UserFavoritesDeleteRequestModelImplCopyWithImpl<$Res>
    extends _$UserFavoritesDeleteRequestModelCopyWithImpl<$Res,
        _$UserFavoritesDeleteRequestModelImpl>
    implements _$$UserFavoritesDeleteRequestModelImplCopyWith<$Res> {
  __$$UserFavoritesDeleteRequestModelImplCopyWithImpl(
      _$UserFavoritesDeleteRequestModelImpl _value,
      $Res Function(_$UserFavoritesDeleteRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileCategory = null,
    Object? fileId = null,
  }) {
    return _then(_$UserFavoritesDeleteRequestModelImpl(
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
class _$UserFavoritesDeleteRequestModelImpl
    implements _UserFavoritesDeleteRequestModel {
  const _$UserFavoritesDeleteRequestModelImpl(
      {@JsonKey(name: 'file_category') required this.fileCategory,
      @JsonKey(name: 'file_id') required this.fileId});

  factory _$UserFavoritesDeleteRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UserFavoritesDeleteRequestModelImplFromJson(json);

  @override
  @JsonKey(name: 'file_category')
  final String fileCategory;
  @override
  @JsonKey(name: 'file_id')
  final int fileId;

  @override
  String toString() {
    return 'UserFavoritesDeleteRequestModel(fileCategory: $fileCategory, fileId: $fileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserFavoritesDeleteRequestModelImpl &&
            (identical(other.fileCategory, fileCategory) ||
                other.fileCategory == fileCategory) &&
            (identical(other.fileId, fileId) || other.fileId == fileId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fileCategory, fileId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserFavoritesDeleteRequestModelImplCopyWith<
          _$UserFavoritesDeleteRequestModelImpl>
      get copyWith => __$$UserFavoritesDeleteRequestModelImplCopyWithImpl<
          _$UserFavoritesDeleteRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserFavoritesDeleteRequestModelImplToJson(
      this,
    );
  }
}

abstract class _UserFavoritesDeleteRequestModel
    implements UserFavoritesDeleteRequestModel {
  const factory _UserFavoritesDeleteRequestModel(
          {@JsonKey(name: 'file_category') required final String fileCategory,
          @JsonKey(name: 'file_id') required final int fileId}) =
      _$UserFavoritesDeleteRequestModelImpl;

  factory _UserFavoritesDeleteRequestModel.fromJson(Map<String, dynamic> json) =
      _$UserFavoritesDeleteRequestModelImpl.fromJson;

  @override
  @JsonKey(name: 'file_category')
  String get fileCategory;
  @override
  @JsonKey(name: 'file_id')
  int get fileId;
  @override
  @JsonKey(ignore: true)
  _$$UserFavoritesDeleteRequestModelImplCopyWith<
          _$UserFavoritesDeleteRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
