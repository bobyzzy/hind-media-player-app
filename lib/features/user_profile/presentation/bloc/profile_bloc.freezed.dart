// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileState {
  Status get status => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;
  List<FavoritePlaybackDataEntity> get favorites =>
      throw _privateConstructorUsedError;
  List<SubscriptionResponseEntity> get subcription =>
      throw _privateConstructorUsedError;
  List<UserGetMeEntity> get userData => throw _privateConstructorUsedError;
  File? get file => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {Status status,
      Failure failure,
      List<FavoritePlaybackDataEntity> favorites,
      List<SubscriptionResponseEntity> subcription,
      List<UserGetMeEntity> userData,
      File? file});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? favorites = null,
    Object? subcription = null,
    Object? userData = null,
    Object? file = freezed,
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
      favorites: null == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<FavoritePlaybackDataEntity>,
      subcription: null == subcription
          ? _value.subcription
          : subcription // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionResponseEntity>,
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as List<UserGetMeEntity>,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileStateImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileStateImplCopyWith(
          _$ProfileStateImpl value, $Res Function(_$ProfileStateImpl) then) =
      __$$ProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      Failure failure,
      List<FavoritePlaybackDataEntity> favorites,
      List<SubscriptionResponseEntity> subcription,
      List<UserGetMeEntity> userData,
      File? file});
}

/// @nodoc
class __$$ProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateImpl>
    implements _$$ProfileStateImplCopyWith<$Res> {
  __$$ProfileStateImplCopyWithImpl(
      _$ProfileStateImpl _value, $Res Function(_$ProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? favorites = null,
    Object? subcription = null,
    Object? userData = null,
    Object? file = freezed,
  }) {
    return _then(_$ProfileStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      favorites: null == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<FavoritePlaybackDataEntity>,
      subcription: null == subcription
          ? _value._subcription
          : subcription // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionResponseEntity>,
      userData: null == userData
          ? _value._userData
          : userData // ignore: cast_nullable_to_non_nullable
              as List<UserGetMeEntity>,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$ProfileStateImpl implements _ProfileState {
  const _$ProfileStateImpl(
      {this.status = Status.initial,
      this.failure = const UknownFailue(),
      final List<FavoritePlaybackDataEntity> favorites = const [],
      final List<SubscriptionResponseEntity> subcription = const [],
      final List<UserGetMeEntity> userData = const [],
      this.file})
      : _favorites = favorites,
        _subcription = subcription,
        _userData = userData;

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final Failure failure;
  final List<FavoritePlaybackDataEntity> _favorites;
  @override
  @JsonKey()
  List<FavoritePlaybackDataEntity> get favorites {
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  final List<SubscriptionResponseEntity> _subcription;
  @override
  @JsonKey()
  List<SubscriptionResponseEntity> get subcription {
    if (_subcription is EqualUnmodifiableListView) return _subcription;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subcription);
  }

  final List<UserGetMeEntity> _userData;
  @override
  @JsonKey()
  List<UserGetMeEntity> get userData {
    if (_userData is EqualUnmodifiableListView) return _userData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userData);
  }

  @override
  final File? file;

  @override
  String toString() {
    return 'ProfileState(status: $status, failure: $failure, favorites: $favorites, subcription: $subcription, userData: $userData, file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites) &&
            const DeepCollectionEquality()
                .equals(other._subcription, _subcription) &&
            const DeepCollectionEquality().equals(other._userData, _userData) &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      failure,
      const DeepCollectionEquality().hash(_favorites),
      const DeepCollectionEquality().hash(_subcription),
      const DeepCollectionEquality().hash(_userData),
      file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      __$$ProfileStateImplCopyWithImpl<_$ProfileStateImpl>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {final Status status,
      final Failure failure,
      final List<FavoritePlaybackDataEntity> favorites,
      final List<SubscriptionResponseEntity> subcription,
      final List<UserGetMeEntity> userData,
      final File? file}) = _$ProfileStateImpl;

  @override
  Status get status;
  @override
  Failure get failure;
  @override
  List<FavoritePlaybackDataEntity> get favorites;
  @override
  List<SubscriptionResponseEntity> get subcription;
  @override
  List<UserGetMeEntity> get userData;
  @override
  File? get file;
  @override
  @JsonKey(ignore: true)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
