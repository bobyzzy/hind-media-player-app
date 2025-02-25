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
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageSource source) pickImage,
    required TResult Function(String category, int id) deleteFavoritePlayback,
    required TResult Function(String category, int id) addFavoritePlayback,
    required TResult Function() getFavorites,
    required TResult Function() getSubscription,
    required TResult Function() getMe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageSource source)? pickImage,
    TResult? Function(String category, int id)? deleteFavoritePlayback,
    TResult? Function(String category, int id)? addFavoritePlayback,
    TResult? Function()? getFavorites,
    TResult? Function()? getSubscription,
    TResult? Function()? getMe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageSource source)? pickImage,
    TResult Function(String category, int id)? deleteFavoritePlayback,
    TResult Function(String category, int id)? addFavoritePlayback,
    TResult Function()? getFavorites,
    TResult Function()? getSubscription,
    TResult Function()? getMe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickImageProfileEvent value) pickImage,
    required TResult Function(_DeleteFavoritePlaybackProfileEvent value)
        deleteFavoritePlayback,
    required TResult Function(_AddFavoritePlaybackProfileEvent value)
        addFavoritePlayback,
    required TResult Function(_GetFavoritesProfileEvent value) getFavorites,
    required TResult Function(_GetSubscriptionProfileEvent value)
        getSubscription,
    required TResult Function(_GetMeProfileEvent value) getMe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PickImageProfileEvent value)? pickImage,
    TResult? Function(_DeleteFavoritePlaybackProfileEvent value)?
        deleteFavoritePlayback,
    TResult? Function(_AddFavoritePlaybackProfileEvent value)?
        addFavoritePlayback,
    TResult? Function(_GetFavoritesProfileEvent value)? getFavorites,
    TResult? Function(_GetSubscriptionProfileEvent value)? getSubscription,
    TResult? Function(_GetMeProfileEvent value)? getMe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickImageProfileEvent value)? pickImage,
    TResult Function(_DeleteFavoritePlaybackProfileEvent value)?
        deleteFavoritePlayback,
    TResult Function(_AddFavoritePlaybackProfileEvent value)?
        addFavoritePlayback,
    TResult Function(_GetFavoritesProfileEvent value)? getFavorites,
    TResult Function(_GetSubscriptionProfileEvent value)? getSubscription,
    TResult Function(_GetMeProfileEvent value)? getMe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PickImageProfileEventImplCopyWith<$Res> {
  factory _$$PickImageProfileEventImplCopyWith(
          _$PickImageProfileEventImpl value,
          $Res Function(_$PickImageProfileEventImpl) then) =
      __$$PickImageProfileEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ImageSource source});
}

/// @nodoc
class __$$PickImageProfileEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$PickImageProfileEventImpl>
    implements _$$PickImageProfileEventImplCopyWith<$Res> {
  __$$PickImageProfileEventImplCopyWithImpl(_$PickImageProfileEventImpl _value,
      $Res Function(_$PickImageProfileEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
  }) {
    return _then(_$PickImageProfileEventImpl(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ImageSource,
    ));
  }
}

/// @nodoc

class _$PickImageProfileEventImpl implements _PickImageProfileEvent {
  const _$PickImageProfileEventImpl({required this.source});

  @override
  final ImageSource source;

  @override
  String toString() {
    return 'ProfileEvent.pickImage(source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickImageProfileEventImpl &&
            (identical(other.source, source) || other.source == source));
  }

  @override
  int get hashCode => Object.hash(runtimeType, source);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PickImageProfileEventImplCopyWith<_$PickImageProfileEventImpl>
      get copyWith => __$$PickImageProfileEventImplCopyWithImpl<
          _$PickImageProfileEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageSource source) pickImage,
    required TResult Function(String category, int id) deleteFavoritePlayback,
    required TResult Function(String category, int id) addFavoritePlayback,
    required TResult Function() getFavorites,
    required TResult Function() getSubscription,
    required TResult Function() getMe,
  }) {
    return pickImage(source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageSource source)? pickImage,
    TResult? Function(String category, int id)? deleteFavoritePlayback,
    TResult? Function(String category, int id)? addFavoritePlayback,
    TResult? Function()? getFavorites,
    TResult? Function()? getSubscription,
    TResult? Function()? getMe,
  }) {
    return pickImage?.call(source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageSource source)? pickImage,
    TResult Function(String category, int id)? deleteFavoritePlayback,
    TResult Function(String category, int id)? addFavoritePlayback,
    TResult Function()? getFavorites,
    TResult Function()? getSubscription,
    TResult Function()? getMe,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage(source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickImageProfileEvent value) pickImage,
    required TResult Function(_DeleteFavoritePlaybackProfileEvent value)
        deleteFavoritePlayback,
    required TResult Function(_AddFavoritePlaybackProfileEvent value)
        addFavoritePlayback,
    required TResult Function(_GetFavoritesProfileEvent value) getFavorites,
    required TResult Function(_GetSubscriptionProfileEvent value)
        getSubscription,
    required TResult Function(_GetMeProfileEvent value) getMe,
  }) {
    return pickImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PickImageProfileEvent value)? pickImage,
    TResult? Function(_DeleteFavoritePlaybackProfileEvent value)?
        deleteFavoritePlayback,
    TResult? Function(_AddFavoritePlaybackProfileEvent value)?
        addFavoritePlayback,
    TResult? Function(_GetFavoritesProfileEvent value)? getFavorites,
    TResult? Function(_GetSubscriptionProfileEvent value)? getSubscription,
    TResult? Function(_GetMeProfileEvent value)? getMe,
  }) {
    return pickImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickImageProfileEvent value)? pickImage,
    TResult Function(_DeleteFavoritePlaybackProfileEvent value)?
        deleteFavoritePlayback,
    TResult Function(_AddFavoritePlaybackProfileEvent value)?
        addFavoritePlayback,
    TResult Function(_GetFavoritesProfileEvent value)? getFavorites,
    TResult Function(_GetSubscriptionProfileEvent value)? getSubscription,
    TResult Function(_GetMeProfileEvent value)? getMe,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage(this);
    }
    return orElse();
  }
}

abstract class _PickImageProfileEvent implements ProfileEvent {
  const factory _PickImageProfileEvent({required final ImageSource source}) =
      _$PickImageProfileEventImpl;

  ImageSource get source;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PickImageProfileEventImplCopyWith<_$PickImageProfileEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteFavoritePlaybackProfileEventImplCopyWith<$Res> {
  factory _$$DeleteFavoritePlaybackProfileEventImplCopyWith(
          _$DeleteFavoritePlaybackProfileEventImpl value,
          $Res Function(_$DeleteFavoritePlaybackProfileEventImpl) then) =
      __$$DeleteFavoritePlaybackProfileEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String category, int id});
}

/// @nodoc
class __$$DeleteFavoritePlaybackProfileEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res,
        _$DeleteFavoritePlaybackProfileEventImpl>
    implements _$$DeleteFavoritePlaybackProfileEventImplCopyWith<$Res> {
  __$$DeleteFavoritePlaybackProfileEventImplCopyWithImpl(
      _$DeleteFavoritePlaybackProfileEventImpl _value,
      $Res Function(_$DeleteFavoritePlaybackProfileEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? id = null,
  }) {
    return _then(_$DeleteFavoritePlaybackProfileEventImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteFavoritePlaybackProfileEventImpl
    implements _DeleteFavoritePlaybackProfileEvent {
  const _$DeleteFavoritePlaybackProfileEventImpl(
      {required this.category, required this.id});

  @override
  final String category;
  @override
  final int id;

  @override
  String toString() {
    return 'ProfileEvent.deleteFavoritePlayback(category: $category, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFavoritePlaybackProfileEventImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, id);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFavoritePlaybackProfileEventImplCopyWith<
          _$DeleteFavoritePlaybackProfileEventImpl>
      get copyWith => __$$DeleteFavoritePlaybackProfileEventImplCopyWithImpl<
          _$DeleteFavoritePlaybackProfileEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageSource source) pickImage,
    required TResult Function(String category, int id) deleteFavoritePlayback,
    required TResult Function(String category, int id) addFavoritePlayback,
    required TResult Function() getFavorites,
    required TResult Function() getSubscription,
    required TResult Function() getMe,
  }) {
    return deleteFavoritePlayback(category, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageSource source)? pickImage,
    TResult? Function(String category, int id)? deleteFavoritePlayback,
    TResult? Function(String category, int id)? addFavoritePlayback,
    TResult? Function()? getFavorites,
    TResult? Function()? getSubscription,
    TResult? Function()? getMe,
  }) {
    return deleteFavoritePlayback?.call(category, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageSource source)? pickImage,
    TResult Function(String category, int id)? deleteFavoritePlayback,
    TResult Function(String category, int id)? addFavoritePlayback,
    TResult Function()? getFavorites,
    TResult Function()? getSubscription,
    TResult Function()? getMe,
    required TResult orElse(),
  }) {
    if (deleteFavoritePlayback != null) {
      return deleteFavoritePlayback(category, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickImageProfileEvent value) pickImage,
    required TResult Function(_DeleteFavoritePlaybackProfileEvent value)
        deleteFavoritePlayback,
    required TResult Function(_AddFavoritePlaybackProfileEvent value)
        addFavoritePlayback,
    required TResult Function(_GetFavoritesProfileEvent value) getFavorites,
    required TResult Function(_GetSubscriptionProfileEvent value)
        getSubscription,
    required TResult Function(_GetMeProfileEvent value) getMe,
  }) {
    return deleteFavoritePlayback(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PickImageProfileEvent value)? pickImage,
    TResult? Function(_DeleteFavoritePlaybackProfileEvent value)?
        deleteFavoritePlayback,
    TResult? Function(_AddFavoritePlaybackProfileEvent value)?
        addFavoritePlayback,
    TResult? Function(_GetFavoritesProfileEvent value)? getFavorites,
    TResult? Function(_GetSubscriptionProfileEvent value)? getSubscription,
    TResult? Function(_GetMeProfileEvent value)? getMe,
  }) {
    return deleteFavoritePlayback?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickImageProfileEvent value)? pickImage,
    TResult Function(_DeleteFavoritePlaybackProfileEvent value)?
        deleteFavoritePlayback,
    TResult Function(_AddFavoritePlaybackProfileEvent value)?
        addFavoritePlayback,
    TResult Function(_GetFavoritesProfileEvent value)? getFavorites,
    TResult Function(_GetSubscriptionProfileEvent value)? getSubscription,
    TResult Function(_GetMeProfileEvent value)? getMe,
    required TResult orElse(),
  }) {
    if (deleteFavoritePlayback != null) {
      return deleteFavoritePlayback(this);
    }
    return orElse();
  }
}

abstract class _DeleteFavoritePlaybackProfileEvent implements ProfileEvent {
  const factory _DeleteFavoritePlaybackProfileEvent(
      {required final String category,
      required final int id}) = _$DeleteFavoritePlaybackProfileEventImpl;

  String get category;
  int get id;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteFavoritePlaybackProfileEventImplCopyWith<
          _$DeleteFavoritePlaybackProfileEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddFavoritePlaybackProfileEventImplCopyWith<$Res> {
  factory _$$AddFavoritePlaybackProfileEventImplCopyWith(
          _$AddFavoritePlaybackProfileEventImpl value,
          $Res Function(_$AddFavoritePlaybackProfileEventImpl) then) =
      __$$AddFavoritePlaybackProfileEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String category, int id});
}

/// @nodoc
class __$$AddFavoritePlaybackProfileEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res,
        _$AddFavoritePlaybackProfileEventImpl>
    implements _$$AddFavoritePlaybackProfileEventImplCopyWith<$Res> {
  __$$AddFavoritePlaybackProfileEventImplCopyWithImpl(
      _$AddFavoritePlaybackProfileEventImpl _value,
      $Res Function(_$AddFavoritePlaybackProfileEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? id = null,
  }) {
    return _then(_$AddFavoritePlaybackProfileEventImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddFavoritePlaybackProfileEventImpl
    implements _AddFavoritePlaybackProfileEvent {
  const _$AddFavoritePlaybackProfileEventImpl(
      {required this.category, required this.id});

  @override
  final String category;
  @override
  final int id;

  @override
  String toString() {
    return 'ProfileEvent.addFavoritePlayback(category: $category, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFavoritePlaybackProfileEventImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, id);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFavoritePlaybackProfileEventImplCopyWith<
          _$AddFavoritePlaybackProfileEventImpl>
      get copyWith => __$$AddFavoritePlaybackProfileEventImplCopyWithImpl<
          _$AddFavoritePlaybackProfileEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageSource source) pickImage,
    required TResult Function(String category, int id) deleteFavoritePlayback,
    required TResult Function(String category, int id) addFavoritePlayback,
    required TResult Function() getFavorites,
    required TResult Function() getSubscription,
    required TResult Function() getMe,
  }) {
    return addFavoritePlayback(category, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageSource source)? pickImage,
    TResult? Function(String category, int id)? deleteFavoritePlayback,
    TResult? Function(String category, int id)? addFavoritePlayback,
    TResult? Function()? getFavorites,
    TResult? Function()? getSubscription,
    TResult? Function()? getMe,
  }) {
    return addFavoritePlayback?.call(category, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageSource source)? pickImage,
    TResult Function(String category, int id)? deleteFavoritePlayback,
    TResult Function(String category, int id)? addFavoritePlayback,
    TResult Function()? getFavorites,
    TResult Function()? getSubscription,
    TResult Function()? getMe,
    required TResult orElse(),
  }) {
    if (addFavoritePlayback != null) {
      return addFavoritePlayback(category, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickImageProfileEvent value) pickImage,
    required TResult Function(_DeleteFavoritePlaybackProfileEvent value)
        deleteFavoritePlayback,
    required TResult Function(_AddFavoritePlaybackProfileEvent value)
        addFavoritePlayback,
    required TResult Function(_GetFavoritesProfileEvent value) getFavorites,
    required TResult Function(_GetSubscriptionProfileEvent value)
        getSubscription,
    required TResult Function(_GetMeProfileEvent value) getMe,
  }) {
    return addFavoritePlayback(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PickImageProfileEvent value)? pickImage,
    TResult? Function(_DeleteFavoritePlaybackProfileEvent value)?
        deleteFavoritePlayback,
    TResult? Function(_AddFavoritePlaybackProfileEvent value)?
        addFavoritePlayback,
    TResult? Function(_GetFavoritesProfileEvent value)? getFavorites,
    TResult? Function(_GetSubscriptionProfileEvent value)? getSubscription,
    TResult? Function(_GetMeProfileEvent value)? getMe,
  }) {
    return addFavoritePlayback?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickImageProfileEvent value)? pickImage,
    TResult Function(_DeleteFavoritePlaybackProfileEvent value)?
        deleteFavoritePlayback,
    TResult Function(_AddFavoritePlaybackProfileEvent value)?
        addFavoritePlayback,
    TResult Function(_GetFavoritesProfileEvent value)? getFavorites,
    TResult Function(_GetSubscriptionProfileEvent value)? getSubscription,
    TResult Function(_GetMeProfileEvent value)? getMe,
    required TResult orElse(),
  }) {
    if (addFavoritePlayback != null) {
      return addFavoritePlayback(this);
    }
    return orElse();
  }
}

abstract class _AddFavoritePlaybackProfileEvent implements ProfileEvent {
  const factory _AddFavoritePlaybackProfileEvent(
      {required final String category,
      required final int id}) = _$AddFavoritePlaybackProfileEventImpl;

  String get category;
  int get id;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddFavoritePlaybackProfileEventImplCopyWith<
          _$AddFavoritePlaybackProfileEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetFavoritesProfileEventImplCopyWith<$Res> {
  factory _$$GetFavoritesProfileEventImplCopyWith(
          _$GetFavoritesProfileEventImpl value,
          $Res Function(_$GetFavoritesProfileEventImpl) then) =
      __$$GetFavoritesProfileEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetFavoritesProfileEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$GetFavoritesProfileEventImpl>
    implements _$$GetFavoritesProfileEventImplCopyWith<$Res> {
  __$$GetFavoritesProfileEventImplCopyWithImpl(
      _$GetFavoritesProfileEventImpl _value,
      $Res Function(_$GetFavoritesProfileEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetFavoritesProfileEventImpl implements _GetFavoritesProfileEvent {
  const _$GetFavoritesProfileEventImpl();

  @override
  String toString() {
    return 'ProfileEvent.getFavorites()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFavoritesProfileEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageSource source) pickImage,
    required TResult Function(String category, int id) deleteFavoritePlayback,
    required TResult Function(String category, int id) addFavoritePlayback,
    required TResult Function() getFavorites,
    required TResult Function() getSubscription,
    required TResult Function() getMe,
  }) {
    return getFavorites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageSource source)? pickImage,
    TResult? Function(String category, int id)? deleteFavoritePlayback,
    TResult? Function(String category, int id)? addFavoritePlayback,
    TResult? Function()? getFavorites,
    TResult? Function()? getSubscription,
    TResult? Function()? getMe,
  }) {
    return getFavorites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageSource source)? pickImage,
    TResult Function(String category, int id)? deleteFavoritePlayback,
    TResult Function(String category, int id)? addFavoritePlayback,
    TResult Function()? getFavorites,
    TResult Function()? getSubscription,
    TResult Function()? getMe,
    required TResult orElse(),
  }) {
    if (getFavorites != null) {
      return getFavorites();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickImageProfileEvent value) pickImage,
    required TResult Function(_DeleteFavoritePlaybackProfileEvent value)
        deleteFavoritePlayback,
    required TResult Function(_AddFavoritePlaybackProfileEvent value)
        addFavoritePlayback,
    required TResult Function(_GetFavoritesProfileEvent value) getFavorites,
    required TResult Function(_GetSubscriptionProfileEvent value)
        getSubscription,
    required TResult Function(_GetMeProfileEvent value) getMe,
  }) {
    return getFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PickImageProfileEvent value)? pickImage,
    TResult? Function(_DeleteFavoritePlaybackProfileEvent value)?
        deleteFavoritePlayback,
    TResult? Function(_AddFavoritePlaybackProfileEvent value)?
        addFavoritePlayback,
    TResult? Function(_GetFavoritesProfileEvent value)? getFavorites,
    TResult? Function(_GetSubscriptionProfileEvent value)? getSubscription,
    TResult? Function(_GetMeProfileEvent value)? getMe,
  }) {
    return getFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickImageProfileEvent value)? pickImage,
    TResult Function(_DeleteFavoritePlaybackProfileEvent value)?
        deleteFavoritePlayback,
    TResult Function(_AddFavoritePlaybackProfileEvent value)?
        addFavoritePlayback,
    TResult Function(_GetFavoritesProfileEvent value)? getFavorites,
    TResult Function(_GetSubscriptionProfileEvent value)? getSubscription,
    TResult Function(_GetMeProfileEvent value)? getMe,
    required TResult orElse(),
  }) {
    if (getFavorites != null) {
      return getFavorites(this);
    }
    return orElse();
  }
}

abstract class _GetFavoritesProfileEvent implements ProfileEvent {
  const factory _GetFavoritesProfileEvent() = _$GetFavoritesProfileEventImpl;
}

/// @nodoc
abstract class _$$GetSubscriptionProfileEventImplCopyWith<$Res> {
  factory _$$GetSubscriptionProfileEventImplCopyWith(
          _$GetSubscriptionProfileEventImpl value,
          $Res Function(_$GetSubscriptionProfileEventImpl) then) =
      __$$GetSubscriptionProfileEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetSubscriptionProfileEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$GetSubscriptionProfileEventImpl>
    implements _$$GetSubscriptionProfileEventImplCopyWith<$Res> {
  __$$GetSubscriptionProfileEventImplCopyWithImpl(
      _$GetSubscriptionProfileEventImpl _value,
      $Res Function(_$GetSubscriptionProfileEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetSubscriptionProfileEventImpl
    implements _GetSubscriptionProfileEvent {
  const _$GetSubscriptionProfileEventImpl();

  @override
  String toString() {
    return 'ProfileEvent.getSubscription()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSubscriptionProfileEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageSource source) pickImage,
    required TResult Function(String category, int id) deleteFavoritePlayback,
    required TResult Function(String category, int id) addFavoritePlayback,
    required TResult Function() getFavorites,
    required TResult Function() getSubscription,
    required TResult Function() getMe,
  }) {
    return getSubscription();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageSource source)? pickImage,
    TResult? Function(String category, int id)? deleteFavoritePlayback,
    TResult? Function(String category, int id)? addFavoritePlayback,
    TResult? Function()? getFavorites,
    TResult? Function()? getSubscription,
    TResult? Function()? getMe,
  }) {
    return getSubscription?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageSource source)? pickImage,
    TResult Function(String category, int id)? deleteFavoritePlayback,
    TResult Function(String category, int id)? addFavoritePlayback,
    TResult Function()? getFavorites,
    TResult Function()? getSubscription,
    TResult Function()? getMe,
    required TResult orElse(),
  }) {
    if (getSubscription != null) {
      return getSubscription();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickImageProfileEvent value) pickImage,
    required TResult Function(_DeleteFavoritePlaybackProfileEvent value)
        deleteFavoritePlayback,
    required TResult Function(_AddFavoritePlaybackProfileEvent value)
        addFavoritePlayback,
    required TResult Function(_GetFavoritesProfileEvent value) getFavorites,
    required TResult Function(_GetSubscriptionProfileEvent value)
        getSubscription,
    required TResult Function(_GetMeProfileEvent value) getMe,
  }) {
    return getSubscription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PickImageProfileEvent value)? pickImage,
    TResult? Function(_DeleteFavoritePlaybackProfileEvent value)?
        deleteFavoritePlayback,
    TResult? Function(_AddFavoritePlaybackProfileEvent value)?
        addFavoritePlayback,
    TResult? Function(_GetFavoritesProfileEvent value)? getFavorites,
    TResult? Function(_GetSubscriptionProfileEvent value)? getSubscription,
    TResult? Function(_GetMeProfileEvent value)? getMe,
  }) {
    return getSubscription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickImageProfileEvent value)? pickImage,
    TResult Function(_DeleteFavoritePlaybackProfileEvent value)?
        deleteFavoritePlayback,
    TResult Function(_AddFavoritePlaybackProfileEvent value)?
        addFavoritePlayback,
    TResult Function(_GetFavoritesProfileEvent value)? getFavorites,
    TResult Function(_GetSubscriptionProfileEvent value)? getSubscription,
    TResult Function(_GetMeProfileEvent value)? getMe,
    required TResult orElse(),
  }) {
    if (getSubscription != null) {
      return getSubscription(this);
    }
    return orElse();
  }
}

abstract class _GetSubscriptionProfileEvent implements ProfileEvent {
  const factory _GetSubscriptionProfileEvent() =
      _$GetSubscriptionProfileEventImpl;
}

/// @nodoc
abstract class _$$GetMeProfileEventImplCopyWith<$Res> {
  factory _$$GetMeProfileEventImplCopyWith(_$GetMeProfileEventImpl value,
          $Res Function(_$GetMeProfileEventImpl) then) =
      __$$GetMeProfileEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMeProfileEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$GetMeProfileEventImpl>
    implements _$$GetMeProfileEventImplCopyWith<$Res> {
  __$$GetMeProfileEventImplCopyWithImpl(_$GetMeProfileEventImpl _value,
      $Res Function(_$GetMeProfileEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetMeProfileEventImpl implements _GetMeProfileEvent {
  const _$GetMeProfileEventImpl();

  @override
  String toString() {
    return 'ProfileEvent.getMe()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetMeProfileEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageSource source) pickImage,
    required TResult Function(String category, int id) deleteFavoritePlayback,
    required TResult Function(String category, int id) addFavoritePlayback,
    required TResult Function() getFavorites,
    required TResult Function() getSubscription,
    required TResult Function() getMe,
  }) {
    return getMe();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageSource source)? pickImage,
    TResult? Function(String category, int id)? deleteFavoritePlayback,
    TResult? Function(String category, int id)? addFavoritePlayback,
    TResult? Function()? getFavorites,
    TResult? Function()? getSubscription,
    TResult? Function()? getMe,
  }) {
    return getMe?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageSource source)? pickImage,
    TResult Function(String category, int id)? deleteFavoritePlayback,
    TResult Function(String category, int id)? addFavoritePlayback,
    TResult Function()? getFavorites,
    TResult Function()? getSubscription,
    TResult Function()? getMe,
    required TResult orElse(),
  }) {
    if (getMe != null) {
      return getMe();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickImageProfileEvent value) pickImage,
    required TResult Function(_DeleteFavoritePlaybackProfileEvent value)
        deleteFavoritePlayback,
    required TResult Function(_AddFavoritePlaybackProfileEvent value)
        addFavoritePlayback,
    required TResult Function(_GetFavoritesProfileEvent value) getFavorites,
    required TResult Function(_GetSubscriptionProfileEvent value)
        getSubscription,
    required TResult Function(_GetMeProfileEvent value) getMe,
  }) {
    return getMe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PickImageProfileEvent value)? pickImage,
    TResult? Function(_DeleteFavoritePlaybackProfileEvent value)?
        deleteFavoritePlayback,
    TResult? Function(_AddFavoritePlaybackProfileEvent value)?
        addFavoritePlayback,
    TResult? Function(_GetFavoritesProfileEvent value)? getFavorites,
    TResult? Function(_GetSubscriptionProfileEvent value)? getSubscription,
    TResult? Function(_GetMeProfileEvent value)? getMe,
  }) {
    return getMe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickImageProfileEvent value)? pickImage,
    TResult Function(_DeleteFavoritePlaybackProfileEvent value)?
        deleteFavoritePlayback,
    TResult Function(_AddFavoritePlaybackProfileEvent value)?
        addFavoritePlayback,
    TResult Function(_GetFavoritesProfileEvent value)? getFavorites,
    TResult Function(_GetSubscriptionProfileEvent value)? getSubscription,
    TResult Function(_GetMeProfileEvent value)? getMe,
    required TResult orElse(),
  }) {
    if (getMe != null) {
      return getMe(this);
    }
    return orElse();
  }
}

abstract class _GetMeProfileEvent implements ProfileEvent {
  const factory _GetMeProfileEvent() = _$GetMeProfileEventImpl;
}

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

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
