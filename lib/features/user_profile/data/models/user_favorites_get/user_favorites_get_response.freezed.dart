// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_favorites_get_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserFavoritesGetResponseModel _$UserFavoritesGetResponseModelFromJson(
    Map<String, dynamic> json) {
  return _UserFavoritesGetResponse.fromJson(json);
}

/// @nodoc
mixin _$UserFavoritesGetResponseModel {
  List<FavoritePlaybackDataModel> get movie =>
      throw _privateConstructorUsedError;
  List<FavoritePlaybackDataModel> get series =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'tv_shows')
  List<FavoritePlaybackDataModel> get tvShou =>
      throw _privateConstructorUsedError;
  List<FavoritePlaybackDataModel> get soundtrack =>
      throw _privateConstructorUsedError;

  /// Serializes this UserFavoritesGetResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserFavoritesGetResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserFavoritesGetResponseModelCopyWith<UserFavoritesGetResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFavoritesGetResponseModelCopyWith<$Res> {
  factory $UserFavoritesGetResponseModelCopyWith(
          UserFavoritesGetResponseModel value,
          $Res Function(UserFavoritesGetResponseModel) then) =
      _$UserFavoritesGetResponseModelCopyWithImpl<$Res,
          UserFavoritesGetResponseModel>;
  @useResult
  $Res call(
      {List<FavoritePlaybackDataModel> movie,
      List<FavoritePlaybackDataModel> series,
      @JsonKey(name: 'tv_shows') List<FavoritePlaybackDataModel> tvShou,
      List<FavoritePlaybackDataModel> soundtrack});
}

/// @nodoc
class _$UserFavoritesGetResponseModelCopyWithImpl<$Res,
        $Val extends UserFavoritesGetResponseModel>
    implements $UserFavoritesGetResponseModelCopyWith<$Res> {
  _$UserFavoritesGetResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserFavoritesGetResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = null,
    Object? series = null,
    Object? tvShou = null,
    Object? soundtrack = null,
  }) {
    return _then(_value.copyWith(
      movie: null == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as List<FavoritePlaybackDataModel>,
      series: null == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as List<FavoritePlaybackDataModel>,
      tvShou: null == tvShou
          ? _value.tvShou
          : tvShou // ignore: cast_nullable_to_non_nullable
              as List<FavoritePlaybackDataModel>,
      soundtrack: null == soundtrack
          ? _value.soundtrack
          : soundtrack // ignore: cast_nullable_to_non_nullable
              as List<FavoritePlaybackDataModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserFavoritesGetResponseImplCopyWith<$Res>
    implements $UserFavoritesGetResponseModelCopyWith<$Res> {
  factory _$$UserFavoritesGetResponseImplCopyWith(
          _$UserFavoritesGetResponseImpl value,
          $Res Function(_$UserFavoritesGetResponseImpl) then) =
      __$$UserFavoritesGetResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<FavoritePlaybackDataModel> movie,
      List<FavoritePlaybackDataModel> series,
      @JsonKey(name: 'tv_shows') List<FavoritePlaybackDataModel> tvShou,
      List<FavoritePlaybackDataModel> soundtrack});
}

/// @nodoc
class __$$UserFavoritesGetResponseImplCopyWithImpl<$Res>
    extends _$UserFavoritesGetResponseModelCopyWithImpl<$Res,
        _$UserFavoritesGetResponseImpl>
    implements _$$UserFavoritesGetResponseImplCopyWith<$Res> {
  __$$UserFavoritesGetResponseImplCopyWithImpl(
      _$UserFavoritesGetResponseImpl _value,
      $Res Function(_$UserFavoritesGetResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserFavoritesGetResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = null,
    Object? series = null,
    Object? tvShou = null,
    Object? soundtrack = null,
  }) {
    return _then(_$UserFavoritesGetResponseImpl(
      movie: null == movie
          ? _value._movie
          : movie // ignore: cast_nullable_to_non_nullable
              as List<FavoritePlaybackDataModel>,
      series: null == series
          ? _value._series
          : series // ignore: cast_nullable_to_non_nullable
              as List<FavoritePlaybackDataModel>,
      tvShou: null == tvShou
          ? _value._tvShou
          : tvShou // ignore: cast_nullable_to_non_nullable
              as List<FavoritePlaybackDataModel>,
      soundtrack: null == soundtrack
          ? _value._soundtrack
          : soundtrack // ignore: cast_nullable_to_non_nullable
              as List<FavoritePlaybackDataModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserFavoritesGetResponseImpl implements _UserFavoritesGetResponse {
  const _$UserFavoritesGetResponseImpl(
      {required final List<FavoritePlaybackDataModel> movie,
      required final List<FavoritePlaybackDataModel> series,
      @JsonKey(name: 'tv_shows')
      required final List<FavoritePlaybackDataModel> tvShou,
      required final List<FavoritePlaybackDataModel> soundtrack})
      : _movie = movie,
        _series = series,
        _tvShou = tvShou,
        _soundtrack = soundtrack;

  factory _$UserFavoritesGetResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserFavoritesGetResponseImplFromJson(json);

  final List<FavoritePlaybackDataModel> _movie;
  @override
  List<FavoritePlaybackDataModel> get movie {
    if (_movie is EqualUnmodifiableListView) return _movie;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movie);
  }

  final List<FavoritePlaybackDataModel> _series;
  @override
  List<FavoritePlaybackDataModel> get series {
    if (_series is EqualUnmodifiableListView) return _series;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_series);
  }

  final List<FavoritePlaybackDataModel> _tvShou;
  @override
  @JsonKey(name: 'tv_shows')
  List<FavoritePlaybackDataModel> get tvShou {
    if (_tvShou is EqualUnmodifiableListView) return _tvShou;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tvShou);
  }

  final List<FavoritePlaybackDataModel> _soundtrack;
  @override
  List<FavoritePlaybackDataModel> get soundtrack {
    if (_soundtrack is EqualUnmodifiableListView) return _soundtrack;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_soundtrack);
  }

  @override
  String toString() {
    return 'UserFavoritesGetResponseModel(movie: $movie, series: $series, tvShou: $tvShou, soundtrack: $soundtrack)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserFavoritesGetResponseImpl &&
            const DeepCollectionEquality().equals(other._movie, _movie) &&
            const DeepCollectionEquality().equals(other._series, _series) &&
            const DeepCollectionEquality().equals(other._tvShou, _tvShou) &&
            const DeepCollectionEquality()
                .equals(other._soundtrack, _soundtrack));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_movie),
      const DeepCollectionEquality().hash(_series),
      const DeepCollectionEquality().hash(_tvShou),
      const DeepCollectionEquality().hash(_soundtrack));

  /// Create a copy of UserFavoritesGetResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserFavoritesGetResponseImplCopyWith<_$UserFavoritesGetResponseImpl>
      get copyWith => __$$UserFavoritesGetResponseImplCopyWithImpl<
          _$UserFavoritesGetResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserFavoritesGetResponseImplToJson(
      this,
    );
  }
}

abstract class _UserFavoritesGetResponse
    implements UserFavoritesGetResponseModel {
  const factory _UserFavoritesGetResponse(
          {required final List<FavoritePlaybackDataModel> movie,
          required final List<FavoritePlaybackDataModel> series,
          @JsonKey(name: 'tv_shows')
          required final List<FavoritePlaybackDataModel> tvShou,
          required final List<FavoritePlaybackDataModel> soundtrack}) =
      _$UserFavoritesGetResponseImpl;

  factory _UserFavoritesGetResponse.fromJson(Map<String, dynamic> json) =
      _$UserFavoritesGetResponseImpl.fromJson;

  @override
  List<FavoritePlaybackDataModel> get movie;
  @override
  List<FavoritePlaybackDataModel> get series;
  @override
  @JsonKey(name: 'tv_shows')
  List<FavoritePlaybackDataModel> get tvShou;
  @override
  List<FavoritePlaybackDataModel> get soundtrack;

  /// Create a copy of UserFavoritesGetResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserFavoritesGetResponseImplCopyWith<_$UserFavoritesGetResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FavoritePlaybackDataModel _$FavoritePlaybackDataModelFromJson(
    Map<String, dynamic> json) {
  return _FavoritePlaybackDataModel.fromJson(json);
}

/// @nodoc
mixin _$FavoritePlaybackDataModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get rating => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  int? get year => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_name')
  String? get genreName => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: 'short_description')
  String? get shortDescription => throw _privateConstructorUsedError;

  /// Serializes this FavoritePlaybackDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FavoritePlaybackDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavoritePlaybackDataModelCopyWith<FavoritePlaybackDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritePlaybackDataModelCopyWith<$Res> {
  factory $FavoritePlaybackDataModelCopyWith(FavoritePlaybackDataModel value,
          $Res Function(FavoritePlaybackDataModel) then) =
      _$FavoritePlaybackDataModelCopyWithImpl<$Res, FavoritePlaybackDataModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String? rating,
      String? duration,
      int? year,
      @JsonKey(name: 'genre_name') String? genreName,
      String category,
      String thumbnail,
      @JsonKey(name: 'short_description') String? shortDescription});
}

/// @nodoc
class _$FavoritePlaybackDataModelCopyWithImpl<$Res,
        $Val extends FavoritePlaybackDataModel>
    implements $FavoritePlaybackDataModelCopyWith<$Res> {
  _$FavoritePlaybackDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoritePlaybackDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? rating = freezed,
    Object? duration = freezed,
    Object? year = freezed,
    Object? genreName = freezed,
    Object? category = null,
    Object? thumbnail = null,
    Object? shortDescription = freezed,
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
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      genreName: freezed == genreName
          ? _value.genreName
          : genreName // ignore: cast_nullable_to_non_nullable
              as String?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoritePlaybackDataModelImplCopyWith<$Res>
    implements $FavoritePlaybackDataModelCopyWith<$Res> {
  factory _$$FavoritePlaybackDataModelImplCopyWith(
          _$FavoritePlaybackDataModelImpl value,
          $Res Function(_$FavoritePlaybackDataModelImpl) then) =
      __$$FavoritePlaybackDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String? rating,
      String? duration,
      int? year,
      @JsonKey(name: 'genre_name') String? genreName,
      String category,
      String thumbnail,
      @JsonKey(name: 'short_description') String? shortDescription});
}

/// @nodoc
class __$$FavoritePlaybackDataModelImplCopyWithImpl<$Res>
    extends _$FavoritePlaybackDataModelCopyWithImpl<$Res,
        _$FavoritePlaybackDataModelImpl>
    implements _$$FavoritePlaybackDataModelImplCopyWith<$Res> {
  __$$FavoritePlaybackDataModelImplCopyWithImpl(
      _$FavoritePlaybackDataModelImpl _value,
      $Res Function(_$FavoritePlaybackDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoritePlaybackDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? rating = freezed,
    Object? duration = freezed,
    Object? year = freezed,
    Object? genreName = freezed,
    Object? category = null,
    Object? thumbnail = null,
    Object? shortDescription = freezed,
  }) {
    return _then(_$FavoritePlaybackDataModelImpl(
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
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      genreName: freezed == genreName
          ? _value.genreName
          : genreName // ignore: cast_nullable_to_non_nullable
              as String?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavoritePlaybackDataModelImpl implements _FavoritePlaybackDataModel {
  const _$FavoritePlaybackDataModelImpl(
      {required this.id,
      required this.title,
      required this.rating,
      required this.duration,
      required this.year,
      @JsonKey(name: 'genre_name') required this.genreName,
      required this.category,
      required this.thumbnail,
      @JsonKey(name: 'short_description') required this.shortDescription});

  factory _$FavoritePlaybackDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoritePlaybackDataModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String? rating;
  @override
  final String? duration;
  @override
  final int? year;
  @override
  @JsonKey(name: 'genre_name')
  final String? genreName;
  @override
  final String category;
  @override
  final String thumbnail;
  @override
  @JsonKey(name: 'short_description')
  final String? shortDescription;

  @override
  String toString() {
    return 'FavoritePlaybackDataModel(id: $id, title: $title, rating: $rating, duration: $duration, year: $year, genreName: $genreName, category: $category, thumbnail: $thumbnail, shortDescription: $shortDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritePlaybackDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.genreName, genreName) ||
                other.genreName == genreName) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, rating, duration,
      year, genreName, category, thumbnail, shortDescription);

  /// Create a copy of FavoritePlaybackDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritePlaybackDataModelImplCopyWith<_$FavoritePlaybackDataModelImpl>
      get copyWith => __$$FavoritePlaybackDataModelImplCopyWithImpl<
          _$FavoritePlaybackDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoritePlaybackDataModelImplToJson(
      this,
    );
  }
}

abstract class _FavoritePlaybackDataModel implements FavoritePlaybackDataModel {
  const factory _FavoritePlaybackDataModel(
          {required final int id,
          required final String title,
          required final String? rating,
          required final String? duration,
          required final int? year,
          @JsonKey(name: 'genre_name') required final String? genreName,
          required final String category,
          required final String thumbnail,
          @JsonKey(name: 'short_description')
          required final String? shortDescription}) =
      _$FavoritePlaybackDataModelImpl;

  factory _FavoritePlaybackDataModel.fromJson(Map<String, dynamic> json) =
      _$FavoritePlaybackDataModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String? get rating;
  @override
  String? get duration;
  @override
  int? get year;
  @override
  @JsonKey(name: 'genre_name')
  String? get genreName;
  @override
  String get category;
  @override
  String get thumbnail;
  @override
  @JsonKey(name: 'short_description')
  String? get shortDescription;

  /// Create a copy of FavoritePlaybackDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoritePlaybackDataModelImplCopyWith<_$FavoritePlaybackDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
