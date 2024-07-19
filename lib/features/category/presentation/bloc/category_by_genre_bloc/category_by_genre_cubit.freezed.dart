// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_by_genre_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryByGenreState {
  Status get status => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;
  List<CategoryDataEntity> get data => throw _privateConstructorUsedError;
  String get errorMassege => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
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
  @override
  @JsonKey(ignore: true)
  _$$CategoryByGenreStateImplCopyWith<_$CategoryByGenreStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
