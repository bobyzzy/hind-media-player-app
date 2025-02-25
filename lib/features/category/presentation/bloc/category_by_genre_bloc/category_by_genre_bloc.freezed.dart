// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_by_genre_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryByGenreEvent {
  String get id => throw _privateConstructorUsedError;
  String get pageID => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String pageID) fetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String pageID)? fetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String pageID)? fetchData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDataEvent value) fetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDataEvent value)? fetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDataEvent value)? fetchData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CategoryByGenreEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryByGenreEventCopyWith<CategoryByGenreEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryByGenreEventCopyWith<$Res> {
  factory $CategoryByGenreEventCopyWith(CategoryByGenreEvent value,
          $Res Function(CategoryByGenreEvent) then) =
      _$CategoryByGenreEventCopyWithImpl<$Res, CategoryByGenreEvent>;
  @useResult
  $Res call({String id, String pageID});
}

/// @nodoc
class _$CategoryByGenreEventCopyWithImpl<$Res,
        $Val extends CategoryByGenreEvent>
    implements $CategoryByGenreEventCopyWith<$Res> {
  _$CategoryByGenreEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryByGenreEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pageID = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pageID: null == pageID
          ? _value.pageID
          : pageID // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchDataEventImplCopyWith<$Res>
    implements $CategoryByGenreEventCopyWith<$Res> {
  factory _$$FetchDataEventImplCopyWith(_$FetchDataEventImpl value,
          $Res Function(_$FetchDataEventImpl) then) =
      __$$FetchDataEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String pageID});
}

/// @nodoc
class __$$FetchDataEventImplCopyWithImpl<$Res>
    extends _$CategoryByGenreEventCopyWithImpl<$Res, _$FetchDataEventImpl>
    implements _$$FetchDataEventImplCopyWith<$Res> {
  __$$FetchDataEventImplCopyWithImpl(
      _$FetchDataEventImpl _value, $Res Function(_$FetchDataEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryByGenreEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pageID = null,
  }) {
    return _then(_$FetchDataEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pageID: null == pageID
          ? _value.pageID
          : pageID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchDataEventImpl implements _FetchDataEvent {
  const _$FetchDataEventImpl({required this.id, required this.pageID});

  @override
  final String id;
  @override
  final String pageID;

  @override
  String toString() {
    return 'CategoryByGenreEvent.fetchData(id: $id, pageID: $pageID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchDataEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pageID, pageID) || other.pageID == pageID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, pageID);

  /// Create a copy of CategoryByGenreEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchDataEventImplCopyWith<_$FetchDataEventImpl> get copyWith =>
      __$$FetchDataEventImplCopyWithImpl<_$FetchDataEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String pageID) fetchData,
  }) {
    return fetchData(id, pageID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String pageID)? fetchData,
  }) {
    return fetchData?.call(id, pageID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String pageID)? fetchData,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData(id, pageID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDataEvent value) fetchData,
  }) {
    return fetchData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDataEvent value)? fetchData,
  }) {
    return fetchData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDataEvent value)? fetchData,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData(this);
    }
    return orElse();
  }
}

abstract class _FetchDataEvent implements CategoryByGenreEvent {
  const factory _FetchDataEvent(
      {required final String id,
      required final String pageID}) = _$FetchDataEventImpl;

  @override
  String get id;
  @override
  String get pageID;

  /// Create a copy of CategoryByGenreEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchDataEventImplCopyWith<_$FetchDataEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryByGenreState {
  Status get status => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;
  List<CategoryDataEntity> get data => throw _privateConstructorUsedError;
  String get errorMassege => throw _privateConstructorUsedError;

  /// Create a copy of CategoryByGenreState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryByGenreStateCopyWith<CategoryByGenreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryByGenreStateCopyWith<$Res> {
  factory $CategoryByGenreStateCopyWith(CategoryByGenreState value,
          $Res Function(CategoryByGenreState) then) =
      _$CategoryByGenreStateCopyWithImpl<$Res, CategoryByGenreState>;
  @useResult
  $Res call(
      {Status status,
      Failure failure,
      List<CategoryDataEntity> data,
      String errorMassege});
}

/// @nodoc
class _$CategoryByGenreStateCopyWithImpl<$Res,
        $Val extends CategoryByGenreState>
    implements $CategoryByGenreStateCopyWith<$Res> {
  _$CategoryByGenreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryByGenreState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? data = null,
    Object? errorMassege = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CategoryDataEntity>,
      errorMassege: null == errorMassege
          ? _value.errorMassege
          : errorMassege // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryByGenreStateImplCopyWith<$Res>
    implements $CategoryByGenreStateCopyWith<$Res> {
  factory _$$CategoryByGenreStateImplCopyWith(_$CategoryByGenreStateImpl value,
          $Res Function(_$CategoryByGenreStateImpl) then) =
      __$$CategoryByGenreStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      Failure failure,
      List<CategoryDataEntity> data,
      String errorMassege});
}

/// @nodoc
class __$$CategoryByGenreStateImplCopyWithImpl<$Res>
    extends _$CategoryByGenreStateCopyWithImpl<$Res, _$CategoryByGenreStateImpl>
    implements _$$CategoryByGenreStateImplCopyWith<$Res> {
  __$$CategoryByGenreStateImplCopyWithImpl(_$CategoryByGenreStateImpl _value,
      $Res Function(_$CategoryByGenreStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryByGenreState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? data = null,
    Object? errorMassege = null,
  }) {
    return _then(_$CategoryByGenreStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CategoryDataEntity>,
      errorMassege: null == errorMassege
          ? _value.errorMassege
          : errorMassege // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CategoryByGenreStateImpl implements _CategoryByGenreState {
  const _$CategoryByGenreStateImpl(
      {this.status = Status.initial,
      this.failure = const UknownFailue(),
      final List<CategoryDataEntity> data = const [],
      this.errorMassege = ''})
      : _data = data;

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final Failure failure;
  final List<CategoryDataEntity> _data;
  @override
  @JsonKey()
  List<CategoryDataEntity> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final String errorMassege;

  @override
  String toString() {
    return 'CategoryByGenreState(status: $status, failure: $failure, data: $data, errorMassege: $errorMassege)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryByGenreStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.errorMassege, errorMassege) ||
                other.errorMassege == errorMassege));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, failure,
      const DeepCollectionEquality().hash(_data), errorMassege);

  /// Create a copy of CategoryByGenreState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryByGenreStateImplCopyWith<_$CategoryByGenreStateImpl>
      get copyWith =>
          __$$CategoryByGenreStateImplCopyWithImpl<_$CategoryByGenreStateImpl>(
              this, _$identity);
}

abstract class _CategoryByGenreState implements CategoryByGenreState {
  const factory _CategoryByGenreState(
      {final Status status,
      final Failure failure,
      final List<CategoryDataEntity> data,
      final String errorMassege}) = _$CategoryByGenreStateImpl;

  @override
  Status get status;
  @override
  Failure get failure;
  @override
  List<CategoryDataEntity> get data;
  @override
  String get errorMassege;

  /// Create a copy of CategoryByGenreState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryByGenreStateImplCopyWith<_$CategoryByGenreStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
