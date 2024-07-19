// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playback_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlaybackState {
  Status get status => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  Failure? get error => throw _privateConstructorUsedError;
  PlaybackDetailsResponseEntity? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaybackStateCopyWith<PlaybackState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaybackStateCopyWith<$Res> {
  factory $PlaybackStateCopyWith(
          PlaybackState value, $Res Function(PlaybackState) then) =
      _$PlaybackStateCopyWithImpl<$Res, PlaybackState>;
  @useResult
  $Res call(
      {Status status,
      String errorMessage,
      Failure? error,
      PlaybackDetailsResponseEntity? data});
}

/// @nodoc
class _$PlaybackStateCopyWithImpl<$Res, $Val extends PlaybackState>
    implements $PlaybackStateCopyWith<$Res> {
  _$PlaybackStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = null,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PlaybackDetailsResponseEntity?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaybackStateImplCopyWith<$Res>
    implements $PlaybackStateCopyWith<$Res> {
  factory _$$PlaybackStateImplCopyWith(
          _$PlaybackStateImpl value, $Res Function(_$PlaybackStateImpl) then) =
      __$$PlaybackStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      String errorMessage,
      Failure? error,
      PlaybackDetailsResponseEntity? data});
}

/// @nodoc
class __$$PlaybackStateImplCopyWithImpl<$Res>
    extends _$PlaybackStateCopyWithImpl<$Res, _$PlaybackStateImpl>
    implements _$$PlaybackStateImplCopyWith<$Res> {
  __$$PlaybackStateImplCopyWithImpl(
      _$PlaybackStateImpl _value, $Res Function(_$PlaybackStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = null,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_$PlaybackStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PlaybackDetailsResponseEntity?,
    ));
  }
}

/// @nodoc

class _$PlaybackStateImpl implements _PlaybackState {
  _$PlaybackStateImpl(
      {this.status = Status.initial,
      this.errorMessage = '',
      this.error,
      this.data});

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  final Failure? error;
  @override
  final PlaybackDetailsResponseEntity? data;

  @override
  String toString() {
    return 'PlaybackState(status: $status, errorMessage: $errorMessage, error: $error, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaybackStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, errorMessage, error, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaybackStateImplCopyWith<_$PlaybackStateImpl> get copyWith =>
      __$$PlaybackStateImplCopyWithImpl<_$PlaybackStateImpl>(this, _$identity);
}

abstract class _PlaybackState implements PlaybackState {
  factory _PlaybackState(
      {final Status status,
      final String errorMessage,
      final Failure? error,
      final PlaybackDetailsResponseEntity? data}) = _$PlaybackStateImpl;

  @override
  Status get status;
  @override
  String get errorMessage;
  @override
  Failure? get error;
  @override
  PlaybackDetailsResponseEntity? get data;
  @override
  @JsonKey(ignore: true)
  _$$PlaybackStateImplCopyWith<_$PlaybackStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
