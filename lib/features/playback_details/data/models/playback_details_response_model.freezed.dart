// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playback_details_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlaybackDetailsResponseModel _$PlaybackDetailsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _PlaybackDetailsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PlaybackDetailsResponseModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  String? get rating => throw _privateConstructorUsedError;
  int? get year => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_name')
  String? get genreName => throw _privateConstructorUsedError;
  @JsonKey(name: 'short_description')
  String? get description => throw _privateConstructorUsedError;
  List<SeasonsDataModel>? get seasons => throw _privateConstructorUsedError;
  List<PlaybackTrailersDataModel>? get trailers =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaybackDetailsResponseModelCopyWith<PlaybackDetailsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaybackDetailsResponseModelCopyWith<$Res> {
  factory $PlaybackDetailsResponseModelCopyWith(
          PlaybackDetailsResponseModel value,
          $Res Function(PlaybackDetailsResponseModel) then) =
      _$PlaybackDetailsResponseModelCopyWithImpl<$Res,
          PlaybackDetailsResponseModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String thumbnail,
      String? duration,
      String? rating,
      int? year,
      String category,
      @JsonKey(name: 'genre_name') String? genreName,
      @JsonKey(name: 'short_description') String? description,
      List<SeasonsDataModel>? seasons,
      List<PlaybackTrailersDataModel>? trailers});
}

/// @nodoc
class _$PlaybackDetailsResponseModelCopyWithImpl<$Res,
        $Val extends PlaybackDetailsResponseModel>
    implements $PlaybackDetailsResponseModelCopyWith<$Res> {
  _$PlaybackDetailsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? thumbnail = null,
    Object? duration = freezed,
    Object? rating = freezed,
    Object? year = freezed,
    Object? category = null,
    Object? genreName = freezed,
    Object? description = freezed,
    Object? seasons = freezed,
    Object? trailers = freezed,
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
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      genreName: freezed == genreName
          ? _value.genreName
          : genreName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      seasons: freezed == seasons
          ? _value.seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as List<SeasonsDataModel>?,
      trailers: freezed == trailers
          ? _value.trailers
          : trailers // ignore: cast_nullable_to_non_nullable
              as List<PlaybackTrailersDataModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaybackDetailsResponseModelImplCopyWith<$Res>
    implements $PlaybackDetailsResponseModelCopyWith<$Res> {
  factory _$$PlaybackDetailsResponseModelImplCopyWith(
          _$PlaybackDetailsResponseModelImpl value,
          $Res Function(_$PlaybackDetailsResponseModelImpl) then) =
      __$$PlaybackDetailsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String thumbnail,
      String? duration,
      String? rating,
      int? year,
      String category,
      @JsonKey(name: 'genre_name') String? genreName,
      @JsonKey(name: 'short_description') String? description,
      List<SeasonsDataModel>? seasons,
      List<PlaybackTrailersDataModel>? trailers});
}

/// @nodoc
class __$$PlaybackDetailsResponseModelImplCopyWithImpl<$Res>
    extends _$PlaybackDetailsResponseModelCopyWithImpl<$Res,
        _$PlaybackDetailsResponseModelImpl>
    implements _$$PlaybackDetailsResponseModelImplCopyWith<$Res> {
  __$$PlaybackDetailsResponseModelImplCopyWithImpl(
      _$PlaybackDetailsResponseModelImpl _value,
      $Res Function(_$PlaybackDetailsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? thumbnail = null,
    Object? duration = freezed,
    Object? rating = freezed,
    Object? year = freezed,
    Object? category = null,
    Object? genreName = freezed,
    Object? description = freezed,
    Object? seasons = freezed,
    Object? trailers = freezed,
  }) {
    return _then(_$PlaybackDetailsResponseModelImpl(
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
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      genreName: freezed == genreName
          ? _value.genreName
          : genreName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      seasons: freezed == seasons
          ? _value._seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as List<SeasonsDataModel>?,
      trailers: freezed == trailers
          ? _value._trailers
          : trailers // ignore: cast_nullable_to_non_nullable
              as List<PlaybackTrailersDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaybackDetailsResponseModelImpl
    implements _PlaybackDetailsResponseModel {
  const _$PlaybackDetailsResponseModelImpl(
      {required this.id,
      required this.title,
      required this.thumbnail,
      this.duration,
      this.rating,
      this.year,
      required this.category,
      @JsonKey(name: 'genre_name') required this.genreName,
      @JsonKey(name: 'short_description') this.description,
      final List<SeasonsDataModel>? seasons,
      required final List<PlaybackTrailersDataModel>? trailers})
      : _seasons = seasons,
        _trailers = trailers;

  factory _$PlaybackDetailsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PlaybackDetailsResponseModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String thumbnail;
  @override
  final String? duration;
  @override
  final String? rating;
  @override
  final int? year;
  @override
  final String category;
  @override
  @JsonKey(name: 'genre_name')
  final String? genreName;
  @override
  @JsonKey(name: 'short_description')
  final String? description;
  final List<SeasonsDataModel>? _seasons;
  @override
  List<SeasonsDataModel>? get seasons {
    final value = _seasons;
    if (value == null) return null;
    if (_seasons is EqualUnmodifiableListView) return _seasons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PlaybackTrailersDataModel>? _trailers;
  @override
  List<PlaybackTrailersDataModel>? get trailers {
    final value = _trailers;
    if (value == null) return null;
    if (_trailers is EqualUnmodifiableListView) return _trailers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PlaybackDetailsResponseModel(id: $id, title: $title, thumbnail: $thumbnail, duration: $duration, rating: $rating, year: $year, category: $category, genreName: $genreName, description: $description, seasons: $seasons, trailers: $trailers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaybackDetailsResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.genreName, genreName) ||
                other.genreName == genreName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._seasons, _seasons) &&
            const DeepCollectionEquality().equals(other._trailers, _trailers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      thumbnail,
      duration,
      rating,
      year,
      category,
      genreName,
      description,
      const DeepCollectionEquality().hash(_seasons),
      const DeepCollectionEquality().hash(_trailers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaybackDetailsResponseModelImplCopyWith<
          _$PlaybackDetailsResponseModelImpl>
      get copyWith => __$$PlaybackDetailsResponseModelImplCopyWithImpl<
          _$PlaybackDetailsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaybackDetailsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _PlaybackDetailsResponseModel
    implements PlaybackDetailsResponseModel {
  const factory _PlaybackDetailsResponseModel(
          {required final int id,
          required final String title,
          required final String thumbnail,
          final String? duration,
          final String? rating,
          final int? year,
          required final String category,
          @JsonKey(name: 'genre_name') required final String? genreName,
          @JsonKey(name: 'short_description') final String? description,
          final List<SeasonsDataModel>? seasons,
          required final List<PlaybackTrailersDataModel>? trailers}) =
      _$PlaybackDetailsResponseModelImpl;

  factory _PlaybackDetailsResponseModel.fromJson(Map<String, dynamic> json) =
      _$PlaybackDetailsResponseModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get thumbnail;
  @override
  String? get duration;
  @override
  String? get rating;
  @override
  int? get year;
  @override
  String get category;
  @override
  @JsonKey(name: 'genre_name')
  String? get genreName;
  @override
  @JsonKey(name: 'short_description')
  String? get description;
  @override
  List<SeasonsDataModel>? get seasons;
  @override
  List<PlaybackTrailersDataModel>? get trailers;
  @override
  @JsonKey(ignore: true)
  _$$PlaybackDetailsResponseModelImplCopyWith<
          _$PlaybackDetailsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SeasonsDataModel _$SeasonsDataModelFromJson(Map<String, dynamic> json) {
  return _SeasonsDataModel.fromJson(json);
}

/// @nodoc
mixin _$SeasonsDataModel {
  int get number => throw _privateConstructorUsedError;
  List<EpisodeModel>? get episodes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeasonsDataModelCopyWith<SeasonsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeasonsDataModelCopyWith<$Res> {
  factory $SeasonsDataModelCopyWith(
          SeasonsDataModel value, $Res Function(SeasonsDataModel) then) =
      _$SeasonsDataModelCopyWithImpl<$Res, SeasonsDataModel>;
  @useResult
  $Res call({int number, List<EpisodeModel>? episodes});
}

/// @nodoc
class _$SeasonsDataModelCopyWithImpl<$Res, $Val extends SeasonsDataModel>
    implements $SeasonsDataModelCopyWith<$Res> {
  _$SeasonsDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? episodes = freezed,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      episodes: freezed == episodes
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<EpisodeModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeasonsDataModelImplCopyWith<$Res>
    implements $SeasonsDataModelCopyWith<$Res> {
  factory _$$SeasonsDataModelImplCopyWith(_$SeasonsDataModelImpl value,
          $Res Function(_$SeasonsDataModelImpl) then) =
      __$$SeasonsDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int number, List<EpisodeModel>? episodes});
}

/// @nodoc
class __$$SeasonsDataModelImplCopyWithImpl<$Res>
    extends _$SeasonsDataModelCopyWithImpl<$Res, _$SeasonsDataModelImpl>
    implements _$$SeasonsDataModelImplCopyWith<$Res> {
  __$$SeasonsDataModelImplCopyWithImpl(_$SeasonsDataModelImpl _value,
      $Res Function(_$SeasonsDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? episodes = freezed,
  }) {
    return _then(_$SeasonsDataModelImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      episodes: freezed == episodes
          ? _value._episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<EpisodeModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SeasonsDataModelImpl implements _SeasonsDataModel {
  const _$SeasonsDataModelImpl(
      {required this.number, final List<EpisodeModel>? episodes})
      : _episodes = episodes;

  factory _$SeasonsDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeasonsDataModelImplFromJson(json);

  @override
  final int number;
  final List<EpisodeModel>? _episodes;
  @override
  List<EpisodeModel>? get episodes {
    final value = _episodes;
    if (value == null) return null;
    if (_episodes is EqualUnmodifiableListView) return _episodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SeasonsDataModel(number: $number, episodes: $episodes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeasonsDataModelImpl &&
            (identical(other.number, number) || other.number == number) &&
            const DeepCollectionEquality().equals(other._episodes, _episodes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, number, const DeepCollectionEquality().hash(_episodes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeasonsDataModelImplCopyWith<_$SeasonsDataModelImpl> get copyWith =>
      __$$SeasonsDataModelImplCopyWithImpl<_$SeasonsDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeasonsDataModelImplToJson(
      this,
    );
  }
}

abstract class _SeasonsDataModel implements SeasonsDataModel {
  const factory _SeasonsDataModel(
      {required final int number,
      final List<EpisodeModel>? episodes}) = _$SeasonsDataModelImpl;

  factory _SeasonsDataModel.fromJson(Map<String, dynamic> json) =
      _$SeasonsDataModelImpl.fromJson;

  @override
  int get number;
  @override
  List<EpisodeModel>? get episodes;
  @override
  @JsonKey(ignore: true)
  _$$SeasonsDataModelImplCopyWith<_$SeasonsDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EpisodeModel _$EpisodeModelFromJson(Map<String, dynamic> json) {
  return _EpisodeModel.fromJson(json);
}

/// @nodoc
mixin _$EpisodeModel {
  int get number => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get file => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodeModelCopyWith<EpisodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeModelCopyWith<$Res> {
  factory $EpisodeModelCopyWith(
          EpisodeModel value, $Res Function(EpisodeModel) then) =
      _$EpisodeModelCopyWithImpl<$Res, EpisodeModel>;
  @useResult
  $Res call({int number, String title, String? file, String? thumbnail});
}

/// @nodoc
class _$EpisodeModelCopyWithImpl<$Res, $Val extends EpisodeModel>
    implements $EpisodeModelCopyWith<$Res> {
  _$EpisodeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? title = null,
    Object? file = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpisodeModelImplCopyWith<$Res>
    implements $EpisodeModelCopyWith<$Res> {
  factory _$$EpisodeModelImplCopyWith(
          _$EpisodeModelImpl value, $Res Function(_$EpisodeModelImpl) then) =
      __$$EpisodeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int number, String title, String? file, String? thumbnail});
}

/// @nodoc
class __$$EpisodeModelImplCopyWithImpl<$Res>
    extends _$EpisodeModelCopyWithImpl<$Res, _$EpisodeModelImpl>
    implements _$$EpisodeModelImplCopyWith<$Res> {
  __$$EpisodeModelImplCopyWithImpl(
      _$EpisodeModelImpl _value, $Res Function(_$EpisodeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? title = null,
    Object? file = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_$EpisodeModelImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EpisodeModelImpl implements _EpisodeModel {
  const _$EpisodeModelImpl(
      {required this.number, required this.title, this.file, this.thumbnail});

  factory _$EpisodeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpisodeModelImplFromJson(json);

  @override
  final int number;
  @override
  final String title;
  @override
  final String? file;
  @override
  final String? thumbnail;

  @override
  String toString() {
    return 'EpisodeModel(number: $number, title: $title, file: $file, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeModelImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, title, file, thumbnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodeModelImplCopyWith<_$EpisodeModelImpl> get copyWith =>
      __$$EpisodeModelImplCopyWithImpl<_$EpisodeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpisodeModelImplToJson(
      this,
    );
  }
}

abstract class _EpisodeModel implements EpisodeModel {
  const factory _EpisodeModel(
      {required final int number,
      required final String title,
      final String? file,
      final String? thumbnail}) = _$EpisodeModelImpl;

  factory _EpisodeModel.fromJson(Map<String, dynamic> json) =
      _$EpisodeModelImpl.fromJson;

  @override
  int get number;
  @override
  String get title;
  @override
  String? get file;
  @override
  String? get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$EpisodeModelImplCopyWith<_$EpisodeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlaybackTrailersDataModel _$PlaybackTrailersDataModelFromJson(
    Map<String, dynamic> json) {
  return _PlaybackTrailersDataModel.fromJson(json);
}

/// @nodoc
mixin _$PlaybackTrailersDataModel {
  String get url => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaybackTrailersDataModelCopyWith<PlaybackTrailersDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaybackTrailersDataModelCopyWith<$Res> {
  factory $PlaybackTrailersDataModelCopyWith(PlaybackTrailersDataModel value,
          $Res Function(PlaybackTrailersDataModel) then) =
      _$PlaybackTrailersDataModelCopyWithImpl<$Res, PlaybackTrailersDataModel>;
  @useResult
  $Res call({String url, String title});
}

/// @nodoc
class _$PlaybackTrailersDataModelCopyWithImpl<$Res,
        $Val extends PlaybackTrailersDataModel>
    implements $PlaybackTrailersDataModelCopyWith<$Res> {
  _$PlaybackTrailersDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaybackTrailersDataModelImplCopyWith<$Res>
    implements $PlaybackTrailersDataModelCopyWith<$Res> {
  factory _$$PlaybackTrailersDataModelImplCopyWith(
          _$PlaybackTrailersDataModelImpl value,
          $Res Function(_$PlaybackTrailersDataModelImpl) then) =
      __$$PlaybackTrailersDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String title});
}

/// @nodoc
class __$$PlaybackTrailersDataModelImplCopyWithImpl<$Res>
    extends _$PlaybackTrailersDataModelCopyWithImpl<$Res,
        _$PlaybackTrailersDataModelImpl>
    implements _$$PlaybackTrailersDataModelImplCopyWith<$Res> {
  __$$PlaybackTrailersDataModelImplCopyWithImpl(
      _$PlaybackTrailersDataModelImpl _value,
      $Res Function(_$PlaybackTrailersDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? title = null,
  }) {
    return _then(_$PlaybackTrailersDataModelImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaybackTrailersDataModelImpl implements _PlaybackTrailersDataModel {
  const _$PlaybackTrailersDataModelImpl(
      {required this.url, required this.title});

  factory _$PlaybackTrailersDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaybackTrailersDataModelImplFromJson(json);

  @override
  final String url;
  @override
  final String title;

  @override
  String toString() {
    return 'PlaybackTrailersDataModel(url: $url, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaybackTrailersDataModelImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaybackTrailersDataModelImplCopyWith<_$PlaybackTrailersDataModelImpl>
      get copyWith => __$$PlaybackTrailersDataModelImplCopyWithImpl<
          _$PlaybackTrailersDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaybackTrailersDataModelImplToJson(
      this,
    );
  }
}

abstract class _PlaybackTrailersDataModel implements PlaybackTrailersDataModel {
  const factory _PlaybackTrailersDataModel(
      {required final String url,
      required final String title}) = _$PlaybackTrailersDataModelImpl;

  factory _PlaybackTrailersDataModel.fromJson(Map<String, dynamic> json) =
      _$PlaybackTrailersDataModelImpl.fromJson;

  @override
  String get url;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$PlaybackTrailersDataModelImplCopyWith<_$PlaybackTrailersDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
