// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banners_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BannerResponseModel _$BannerResponseModelFromJson(Map<String, dynamic> json) {
  return _BannerResponseModel.fromJson(json);
}

/// @nodoc
mixin _$BannerResponseModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'movie_or_series_id')
  int get movieOrSeriesId => throw _privateConstructorUsedError;
  @JsonKey(name: 'banner_type')
  String get bannerType => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerResponseModelCopyWith<BannerResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerResponseModelCopyWith<$Res> {
  factory $BannerResponseModelCopyWith(
          BannerResponseModel value, $Res Function(BannerResponseModel) then) =
      _$BannerResponseModelCopyWithImpl<$Res, BannerResponseModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'movie_or_series_id') int movieOrSeriesId,
      @JsonKey(name: 'banner_type') String bannerType,
      String image});
}

/// @nodoc
class _$BannerResponseModelCopyWithImpl<$Res, $Val extends BannerResponseModel>
    implements $BannerResponseModelCopyWith<$Res> {
  _$BannerResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? movieOrSeriesId = null,
    Object? bannerType = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      movieOrSeriesId: null == movieOrSeriesId
          ? _value.movieOrSeriesId
          : movieOrSeriesId // ignore: cast_nullable_to_non_nullable
              as int,
      bannerType: null == bannerType
          ? _value.bannerType
          : bannerType // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BannerResponseModelImplCopyWith<$Res>
    implements $BannerResponseModelCopyWith<$Res> {
  factory _$$BannerResponseModelImplCopyWith(_$BannerResponseModelImpl value,
          $Res Function(_$BannerResponseModelImpl) then) =
      __$$BannerResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'movie_or_series_id') int movieOrSeriesId,
      @JsonKey(name: 'banner_type') String bannerType,
      String image});
}

/// @nodoc
class __$$BannerResponseModelImplCopyWithImpl<$Res>
    extends _$BannerResponseModelCopyWithImpl<$Res, _$BannerResponseModelImpl>
    implements _$$BannerResponseModelImplCopyWith<$Res> {
  __$$BannerResponseModelImplCopyWithImpl(_$BannerResponseModelImpl _value,
      $Res Function(_$BannerResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? movieOrSeriesId = null,
    Object? bannerType = null,
    Object? image = null,
  }) {
    return _then(_$BannerResponseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      movieOrSeriesId: null == movieOrSeriesId
          ? _value.movieOrSeriesId
          : movieOrSeriesId // ignore: cast_nullable_to_non_nullable
              as int,
      bannerType: null == bannerType
          ? _value.bannerType
          : bannerType // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BannerResponseModelImpl implements _BannerResponseModel {
  const _$BannerResponseModelImpl(
      {required this.id,
      @JsonKey(name: 'movie_or_series_id') required this.movieOrSeriesId,
      @JsonKey(name: 'banner_type') required this.bannerType,
      required this.image});

  factory _$BannerResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerResponseModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'movie_or_series_id')
  final int movieOrSeriesId;
  @override
  @JsonKey(name: 'banner_type')
  final String bannerType;
  @override
  final String image;

  @override
  String toString() {
    return 'BannerResponseModel(id: $id, movieOrSeriesId: $movieOrSeriesId, bannerType: $bannerType, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.movieOrSeriesId, movieOrSeriesId) ||
                other.movieOrSeriesId == movieOrSeriesId) &&
            (identical(other.bannerType, bannerType) ||
                other.bannerType == bannerType) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, movieOrSeriesId, bannerType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerResponseModelImplCopyWith<_$BannerResponseModelImpl> get copyWith =>
      __$$BannerResponseModelImplCopyWithImpl<_$BannerResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerResponseModelImplToJson(
      this,
    );
  }
}

abstract class _BannerResponseModel implements BannerResponseModel {
  const factory _BannerResponseModel(
      {required final int id,
      @JsonKey(name: 'movie_or_series_id') required final int movieOrSeriesId,
      @JsonKey(name: 'banner_type') required final String bannerType,
      required final String image}) = _$BannerResponseModelImpl;

  factory _BannerResponseModel.fromJson(Map<String, dynamic> json) =
      _$BannerResponseModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'movie_or_series_id')
  int get movieOrSeriesId;
  @override
  @JsonKey(name: 'banner_type')
  String get bannerType;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$BannerResponseModelImplCopyWith<_$BannerResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
