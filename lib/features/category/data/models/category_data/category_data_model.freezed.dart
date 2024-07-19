// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryDataResponseModel _$CategoryDataResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CategoryDataResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryDataResponseModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get rating => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  int? get year => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_name')
  String? get genreName => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryDataResponseModelCopyWith<CategoryDataResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDataResponseModelCopyWith<$Res> {
  factory $CategoryDataResponseModelCopyWith(CategoryDataResponseModel value,
          $Res Function(CategoryDataResponseModel) then) =
      _$CategoryDataResponseModelCopyWithImpl<$Res, CategoryDataResponseModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String? rating,
      String thumbnail,
      int? year,
      @JsonKey(name: 'genre_name') String? genreName,
      String? duration,
      String category});
}

/// @nodoc
class _$CategoryDataResponseModelCopyWithImpl<$Res,
        $Val extends CategoryDataResponseModel>
    implements $CategoryDataResponseModelCopyWith<$Res> {
  _$CategoryDataResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? rating = freezed,
    Object? thumbnail = null,
    Object? year = freezed,
    Object? genreName = freezed,
    Object? duration = freezed,
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
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      genreName: freezed == genreName
          ? _value.genreName
          : genreName // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryDataResponseModelImplCopyWith<$Res>
    implements $CategoryDataResponseModelCopyWith<$Res> {
  factory _$$CategoryDataResponseModelImplCopyWith(
          _$CategoryDataResponseModelImpl value,
          $Res Function(_$CategoryDataResponseModelImpl) then) =
      __$$CategoryDataResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String? rating,
      String thumbnail,
      int? year,
      @JsonKey(name: 'genre_name') String? genreName,
      String? duration,
      String category});
}

/// @nodoc
class __$$CategoryDataResponseModelImplCopyWithImpl<$Res>
    extends _$CategoryDataResponseModelCopyWithImpl<$Res,
        _$CategoryDataResponseModelImpl>
    implements _$$CategoryDataResponseModelImplCopyWith<$Res> {
  __$$CategoryDataResponseModelImplCopyWithImpl(
      _$CategoryDataResponseModelImpl _value,
      $Res Function(_$CategoryDataResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? rating = freezed,
    Object? thumbnail = null,
    Object? year = freezed,
    Object? genreName = freezed,
    Object? duration = freezed,
    Object? category = null,
  }) {
    return _then(_$CategoryDataResponseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      genreName: freezed == genreName
          ? _value.genreName
          : genreName // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
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
class _$CategoryDataResponseModelImpl implements _CategoryDataResponseModel {
  const _$CategoryDataResponseModelImpl(
      {required this.id,
      required this.title,
      required this.rating,
      required this.thumbnail,
      required this.year,
      @JsonKey(name: 'genre_name') this.genreName,
      this.duration,
      required this.category});

  factory _$CategoryDataResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryDataResponseModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String? rating;
  @override
  final String thumbnail;
  @override
  final int? year;
  @override
  @JsonKey(name: 'genre_name')
  final String? genreName;
  @override
  final String? duration;
  @override
  final String category;

  @override
  String toString() {
    return 'CategoryDataResponseModel(id: $id, title: $title, rating: $rating, thumbnail: $thumbnail, year: $year, genreName: $genreName, duration: $duration, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryDataResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.genreName, genreName) ||
                other.genreName == genreName) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, rating, thumbnail,
      year, genreName, duration, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryDataResponseModelImplCopyWith<_$CategoryDataResponseModelImpl>
      get copyWith => __$$CategoryDataResponseModelImplCopyWithImpl<
          _$CategoryDataResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryDataResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryDataResponseModel implements CategoryDataResponseModel {
  const factory _CategoryDataResponseModel(
      {required final int id,
      required final String title,
      required final String? rating,
      required final String thumbnail,
      required final int? year,
      @JsonKey(name: 'genre_name') final String? genreName,
      final String? duration,
      required final String category}) = _$CategoryDataResponseModelImpl;

  factory _CategoryDataResponseModel.fromJson(Map<String, dynamic> json) =
      _$CategoryDataResponseModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String? get rating;
  @override
  String get thumbnail;
  @override
  int? get year;
  @override
  @JsonKey(name: 'genre_name')
  String? get genreName;
  @override
  String? get duration;
  @override
  String get category;
  @override
  @JsonKey(ignore: true)
  _$$CategoryDataResponseModelImplCopyWith<_$CategoryDataResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
