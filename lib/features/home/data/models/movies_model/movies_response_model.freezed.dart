// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MoviesResponseModel _$MoviesResponseModelFromJson(Map<String, dynamic> json) {
  return _MoviesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MoviesResponseModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  String? get rating => throw _privateConstructorUsedError;
  int? get year => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_name')
  String? get genreName => throw _privateConstructorUsedError;
  @JsonKey(name: 'short_description')
  String? get shortDescription => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;

  /// Serializes this MoviesResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MoviesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MoviesResponseModelCopyWith<MoviesResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesResponseModelCopyWith<$Res> {
  factory $MoviesResponseModelCopyWith(
          MoviesResponseModel value, $Res Function(MoviesResponseModel) then) =
      _$MoviesResponseModelCopyWithImpl<$Res, MoviesResponseModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String thumbnail,
      String? rating,
      int? year,
      @JsonKey(name: 'genre_name') String? genreName,
      @JsonKey(name: 'short_description') String? shortDescription,
      String category});
}

/// @nodoc
class _$MoviesResponseModelCopyWithImpl<$Res, $Val extends MoviesResponseModel>
    implements $MoviesResponseModelCopyWith<$Res> {
  _$MoviesResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MoviesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? thumbnail = null,
    Object? rating = freezed,
    Object? year = freezed,
    Object? genreName = freezed,
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
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      genreName: freezed == genreName
          ? _value.genreName
          : genreName // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$MoviesResponseModelImplCopyWith<$Res>
    implements $MoviesResponseModelCopyWith<$Res> {
  factory _$$MoviesResponseModelImplCopyWith(_$MoviesResponseModelImpl value,
          $Res Function(_$MoviesResponseModelImpl) then) =
      __$$MoviesResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String thumbnail,
      String? rating,
      int? year,
      @JsonKey(name: 'genre_name') String? genreName,
      @JsonKey(name: 'short_description') String? shortDescription,
      String category});
}

/// @nodoc
class __$$MoviesResponseModelImplCopyWithImpl<$Res>
    extends _$MoviesResponseModelCopyWithImpl<$Res, _$MoviesResponseModelImpl>
    implements _$$MoviesResponseModelImplCopyWith<$Res> {
  __$$MoviesResponseModelImplCopyWithImpl(_$MoviesResponseModelImpl _value,
      $Res Function(_$MoviesResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MoviesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? thumbnail = null,
    Object? rating = freezed,
    Object? year = freezed,
    Object? genreName = freezed,
    Object? shortDescription = freezed,
    Object? category = null,
  }) {
    return _then(_$MoviesResponseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      genreName: freezed == genreName
          ? _value.genreName
          : genreName // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$MoviesResponseModelImpl implements _MoviesResponseModel {
  const _$MoviesResponseModelImpl(
      {required this.id,
      required this.title,
      required this.thumbnail,
      this.rating,
      this.year,
      @JsonKey(name: 'genre_name') this.genreName,
      @JsonKey(name: 'short_description') this.shortDescription,
      required this.category});

  factory _$MoviesResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoviesResponseModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String thumbnail;
  @override
  final String? rating;
  @override
  final int? year;
  @override
  @JsonKey(name: 'genre_name')
  final String? genreName;
  @override
  @JsonKey(name: 'short_description')
  final String? shortDescription;
  @override
  final String category;

  @override
  String toString() {
    return 'MoviesResponseModel(id: $id, title: $title, thumbnail: $thumbnail, rating: $rating, year: $year, genreName: $genreName, shortDescription: $shortDescription, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.genreName, genreName) ||
                other.genreName == genreName) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, thumbnail, rating,
      year, genreName, shortDescription, category);

  /// Create a copy of MoviesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesResponseModelImplCopyWith<_$MoviesResponseModelImpl> get copyWith =>
      __$$MoviesResponseModelImplCopyWithImpl<_$MoviesResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoviesResponseModelImplToJson(
      this,
    );
  }
}

abstract class _MoviesResponseModel implements MoviesResponseModel {
  const factory _MoviesResponseModel(
      {required final int id,
      required final String title,
      required final String thumbnail,
      final String? rating,
      final int? year,
      @JsonKey(name: 'genre_name') final String? genreName,
      @JsonKey(name: 'short_description') final String? shortDescription,
      required final String category}) = _$MoviesResponseModelImpl;

  factory _MoviesResponseModel.fromJson(Map<String, dynamic> json) =
      _$MoviesResponseModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get thumbnail;
  @override
  String? get rating;
  @override
  int? get year;
  @override
  @JsonKey(name: 'genre_name')
  String? get genreName;
  @override
  @JsonKey(name: 'short_description')
  String? get shortDescription;
  @override
  String get category;

  /// Create a copy of MoviesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoviesResponseModelImplCopyWith<_$MoviesResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
