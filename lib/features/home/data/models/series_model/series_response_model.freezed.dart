// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'series_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SeriesResponseModel _$SeriesResponseModelFromJson(Map<String, dynamic> json) {
  return _SeriesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SeriesResponseModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get rating => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_name')
  String get genreName => throw _privateConstructorUsedError;
  @JsonKey(name: 'short_description')
  String? get shortDescription => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeriesResponseModelCopyWith<SeriesResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriesResponseModelCopyWith<$Res> {
  factory $SeriesResponseModelCopyWith(
          SeriesResponseModel value, $Res Function(SeriesResponseModel) then) =
      _$SeriesResponseModelCopyWithImpl<$Res, SeriesResponseModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String rating,
      String thumbnail,
      int year,
      @JsonKey(name: 'genre_name') String genreName,
      @JsonKey(name: 'short_description') String? shortDescription,
      String category});
}

/// @nodoc
class _$SeriesResponseModelCopyWithImpl<$Res, $Val extends SeriesResponseModel>
    implements $SeriesResponseModelCopyWith<$Res> {
  _$SeriesResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? rating = null,
    Object? thumbnail = null,
    Object? year = null,
    Object? genreName = null,
    Object? shortDescription = freezed,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      genreName: null == genreName
          ? _value.genreName
          : genreName // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeriesResponseModelImplCopyWith<$Res>
    implements $SeriesResponseModelCopyWith<$Res> {
  factory _$$SeriesResponseModelImplCopyWith(_$SeriesResponseModelImpl value,
          $Res Function(_$SeriesResponseModelImpl) then) =
      __$$SeriesResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String rating,
      String thumbnail,
      int year,
      @JsonKey(name: 'genre_name') String genreName,
      @JsonKey(name: 'short_description') String? shortDescription,
      String category});
}

/// @nodoc
class __$$SeriesResponseModelImplCopyWithImpl<$Res>
    extends _$SeriesResponseModelCopyWithImpl<$Res, _$SeriesResponseModelImpl>
    implements _$$SeriesResponseModelImplCopyWith<$Res> {
  __$$SeriesResponseModelImplCopyWithImpl(_$SeriesResponseModelImpl _value,
      $Res Function(_$SeriesResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? rating = null,
    Object? thumbnail = null,
    Object? year = null,
    Object? genreName = null,
    Object? shortDescription = freezed,
    Object? category = null,
  }) {
    return _then(_$SeriesResponseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      genreName: null == genreName
          ? _value.genreName
          : genreName // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SeriesResponseModelImpl implements _SeriesResponseModel {
  const _$SeriesResponseModelImpl(
      {required this.id,
      required this.title,
      required this.rating,
      required this.thumbnail,
      required this.year,
      @JsonKey(name: 'genre_name') required this.genreName,
      @JsonKey(name: 'short_description') this.shortDescription,
      required this.category});

  factory _$SeriesResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeriesResponseModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String rating;
  @override
  final String thumbnail;
  @override
  final int year;
  @override
  @JsonKey(name: 'genre_name')
  final String genreName;
  @override
  @JsonKey(name: 'short_description')
  final String? shortDescription;
  @override
  final String category;

  @override
  String toString() {
    return 'SeriesResponseModel(id: $id, title: $title, rating: $rating, thumbnail: $thumbnail, year: $year, genreName: $genreName, shortDescription: $shortDescription, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeriesResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.genreName, genreName) ||
                other.genreName == genreName) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, rating, thumbnail,
      year, genreName, shortDescription, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeriesResponseModelImplCopyWith<_$SeriesResponseModelImpl> get copyWith =>
      __$$SeriesResponseModelImplCopyWithImpl<_$SeriesResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeriesResponseModelImplToJson(
      this,
    );
  }
}

abstract class _SeriesResponseModel implements SeriesResponseModel {
  const factory _SeriesResponseModel(
      {required final int id,
      required final String title,
      required final String rating,
      required final String thumbnail,
      required final int year,
      @JsonKey(name: 'genre_name') required final String genreName,
      @JsonKey(name: 'short_description') final String? shortDescription,
      required final String category}) = _$SeriesResponseModelImpl;

  factory _SeriesResponseModel.fromJson(Map<String, dynamic> json) =
      _$SeriesResponseModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get rating;
  @override
  String get thumbnail;
  @override
  int get year;
  @override
  @JsonKey(name: 'genre_name')
  String get genreName;
  @override
  @JsonKey(name: 'short_description')
  String? get shortDescription;
  @override
  String get category;
  @override
  @JsonKey(ignore: true)
  _$$SeriesResponseModelImplCopyWith<_$SeriesResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
