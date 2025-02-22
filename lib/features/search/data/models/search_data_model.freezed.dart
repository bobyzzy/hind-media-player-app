// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchDataModel _$SearchDataModelFromJson(Map<String, dynamic> json) {
  return _SearchDataModel.fromJson(json);
}

/// @nodoc
mixin _$SearchDataModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get rating => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_name')
  String get genreName => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;

  /// Serializes this SearchDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchDataModelCopyWith<SearchDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchDataModelCopyWith<$Res> {
  factory $SearchDataModelCopyWith(
          SearchDataModel value, $Res Function(SearchDataModel) then) =
      _$SearchDataModelCopyWithImpl<$Res, SearchDataModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String rating,
      String thumbnail,
      int year,
      @JsonKey(name: 'genre_name') String genreName,
      String category});
}

/// @nodoc
class _$SearchDataModelCopyWithImpl<$Res, $Val extends SearchDataModel>
    implements $SearchDataModelCopyWith<$Res> {
  _$SearchDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? rating = null,
    Object? thumbnail = null,
    Object? year = null,
    Object? genreName = null,
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
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchDataModelImplCopyWith<$Res>
    implements $SearchDataModelCopyWith<$Res> {
  factory _$$SearchDataModelImplCopyWith(_$SearchDataModelImpl value,
          $Res Function(_$SearchDataModelImpl) then) =
      __$$SearchDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String rating,
      String thumbnail,
      int year,
      @JsonKey(name: 'genre_name') String genreName,
      String category});
}

/// @nodoc
class __$$SearchDataModelImplCopyWithImpl<$Res>
    extends _$SearchDataModelCopyWithImpl<$Res, _$SearchDataModelImpl>
    implements _$$SearchDataModelImplCopyWith<$Res> {
  __$$SearchDataModelImplCopyWithImpl(
      _$SearchDataModelImpl _value, $Res Function(_$SearchDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? rating = null,
    Object? thumbnail = null,
    Object? year = null,
    Object? genreName = null,
    Object? category = null,
  }) {
    return _then(_$SearchDataModelImpl(
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
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchDataModelImpl implements _SearchDataModel {
  const _$SearchDataModelImpl(
      {required this.id,
      required this.title,
      required this.rating,
      required this.thumbnail,
      required this.year,
      @JsonKey(name: 'genre_name') required this.genreName,
      required this.category});

  factory _$SearchDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchDataModelImplFromJson(json);

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
  final String category;

  @override
  String toString() {
    return 'SearchDataModel(id: $id, title: $title, rating: $rating, thumbnail: $thumbnail, year: $year, genreName: $genreName, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.genreName, genreName) ||
                other.genreName == genreName) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, rating, thumbnail, year, genreName, category);

  /// Create a copy of SearchDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchDataModelImplCopyWith<_$SearchDataModelImpl> get copyWith =>
      __$$SearchDataModelImplCopyWithImpl<_$SearchDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchDataModelImplToJson(
      this,
    );
  }
}

abstract class _SearchDataModel implements SearchDataModel {
  const factory _SearchDataModel(
      {required final int id,
      required final String title,
      required final String rating,
      required final String thumbnail,
      required final int year,
      @JsonKey(name: 'genre_name') required final String genreName,
      required final String category}) = _$SearchDataModelImpl;

  factory _SearchDataModel.fromJson(Map<String, dynamic> json) =
      _$SearchDataModelImpl.fromJson;

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
  String get category;

  /// Create a copy of SearchDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchDataModelImplCopyWith<_$SearchDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
