// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, String otp,
            ValueChanged<bool> onSuccess, ValueChanged<Failure> onError)
        logIn,
    required TResult Function() logOut,
    required TResult Function() checkAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, String otp,
            ValueChanged<bool> onSuccess, ValueChanged<Failure> onError)?
        logIn,
    TResult? Function()? logOut,
    TResult? Function()? checkAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, String otp,
            ValueChanged<bool> onSuccess, ValueChanged<Failure> onError)?
        logIn,
    TResult Function()? logOut,
    TResult Function()? checkAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogInEvent value) logIn,
    required TResult Function(_LogOutEvent value) logOut,
    required TResult Function(_CheckAuthEvent value) checkAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LogInEvent value)? logIn,
    TResult? Function(_LogOutEvent value)? logOut,
    TResult? Function(_CheckAuthEvent value)? checkAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogInEvent value)? logIn,
    TResult Function(_LogOutEvent value)? logOut,
    TResult Function(_CheckAuthEvent value)? checkAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LogInEventImplCopyWith<$Res> {
  factory _$$LogInEventImplCopyWith(
          _$LogInEventImpl value, $Res Function(_$LogInEventImpl) then) =
      __$$LogInEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String phoneNumber,
      String otp,
      ValueChanged<bool> onSuccess,
      ValueChanged<Failure> onError});
}

/// @nodoc
class __$$LogInEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogInEventImpl>
    implements _$$LogInEventImplCopyWith<$Res> {
  __$$LogInEventImplCopyWithImpl(
      _$LogInEventImpl _value, $Res Function(_$LogInEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? otp = null,
    Object? onSuccess = null,
    Object? onError = null,
  }) {
    return _then(_$LogInEventImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      onSuccess: null == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as ValueChanged<bool>,
      onError: null == onError
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as ValueChanged<Failure>,
    ));
  }
}

/// @nodoc

class _$LogInEventImpl with DiagnosticableTreeMixin implements _LogInEvent {
  const _$LogInEventImpl(
      {required this.phoneNumber,
      required this.otp,
      required this.onSuccess,
      required this.onError});

  @override
  final String phoneNumber;
  @override
  final String otp;
  @override
  final ValueChanged<bool> onSuccess;
  @override
  final ValueChanged<Failure> onError;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.logIn(phoneNumber: $phoneNumber, otp: $otp, onSuccess: $onSuccess, onError: $onError)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.logIn'))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('otp', otp))
      ..add(DiagnosticsProperty('onSuccess', onSuccess))
      ..add(DiagnosticsProperty('onError', onError));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogInEventImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess) &&
            (identical(other.onError, onError) || other.onError == onError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, phoneNumber, otp, onSuccess, onError);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LogInEventImplCopyWith<_$LogInEventImpl> get copyWith =>
      __$$LogInEventImplCopyWithImpl<_$LogInEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, String otp,
            ValueChanged<bool> onSuccess, ValueChanged<Failure> onError)
        logIn,
    required TResult Function() logOut,
    required TResult Function() checkAuth,
  }) {
    return logIn(phoneNumber, otp, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, String otp,
            ValueChanged<bool> onSuccess, ValueChanged<Failure> onError)?
        logIn,
    TResult? Function()? logOut,
    TResult? Function()? checkAuth,
  }) {
    return logIn?.call(phoneNumber, otp, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, String otp,
            ValueChanged<bool> onSuccess, ValueChanged<Failure> onError)?
        logIn,
    TResult Function()? logOut,
    TResult Function()? checkAuth,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(phoneNumber, otp, onSuccess, onError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogInEvent value) logIn,
    required TResult Function(_LogOutEvent value) logOut,
    required TResult Function(_CheckAuthEvent value) checkAuth,
  }) {
    return logIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LogInEvent value)? logIn,
    TResult? Function(_LogOutEvent value)? logOut,
    TResult? Function(_CheckAuthEvent value)? checkAuth,
  }) {
    return logIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogInEvent value)? logIn,
    TResult Function(_LogOutEvent value)? logOut,
    TResult Function(_CheckAuthEvent value)? checkAuth,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(this);
    }
    return orElse();
  }
}

abstract class _LogInEvent implements AuthEvent {
  const factory _LogInEvent(
      {required final String phoneNumber,
      required final String otp,
      required final ValueChanged<bool> onSuccess,
      required final ValueChanged<Failure> onError}) = _$LogInEventImpl;

  String get phoneNumber;
  String get otp;
  ValueChanged<bool> get onSuccess;
  ValueChanged<Failure> get onError;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LogInEventImplCopyWith<_$LogInEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogOutEventImplCopyWith<$Res> {
  factory _$$LogOutEventImplCopyWith(
          _$LogOutEventImpl value, $Res Function(_$LogOutEventImpl) then) =
      __$$LogOutEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogOutEventImpl>
    implements _$$LogOutEventImplCopyWith<$Res> {
  __$$LogOutEventImplCopyWithImpl(
      _$LogOutEventImpl _value, $Res Function(_$LogOutEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogOutEventImpl with DiagnosticableTreeMixin implements _LogOutEvent {
  const _$LogOutEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.logOut()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthEvent.logOut'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, String otp,
            ValueChanged<bool> onSuccess, ValueChanged<Failure> onError)
        logIn,
    required TResult Function() logOut,
    required TResult Function() checkAuth,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, String otp,
            ValueChanged<bool> onSuccess, ValueChanged<Failure> onError)?
        logIn,
    TResult? Function()? logOut,
    TResult? Function()? checkAuth,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, String otp,
            ValueChanged<bool> onSuccess, ValueChanged<Failure> onError)?
        logIn,
    TResult Function()? logOut,
    TResult Function()? checkAuth,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogInEvent value) logIn,
    required TResult Function(_LogOutEvent value) logOut,
    required TResult Function(_CheckAuthEvent value) checkAuth,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LogInEvent value)? logIn,
    TResult? Function(_LogOutEvent value)? logOut,
    TResult? Function(_CheckAuthEvent value)? checkAuth,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogInEvent value)? logIn,
    TResult Function(_LogOutEvent value)? logOut,
    TResult Function(_CheckAuthEvent value)? checkAuth,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _LogOutEvent implements AuthEvent {
  const factory _LogOutEvent() = _$LogOutEventImpl;
}

/// @nodoc
abstract class _$$CheckAuthEventImplCopyWith<$Res> {
  factory _$$CheckAuthEventImplCopyWith(_$CheckAuthEventImpl value,
          $Res Function(_$CheckAuthEventImpl) then) =
      __$$CheckAuthEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckAuthEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckAuthEventImpl>
    implements _$$CheckAuthEventImplCopyWith<$Res> {
  __$$CheckAuthEventImplCopyWithImpl(
      _$CheckAuthEventImpl _value, $Res Function(_$CheckAuthEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckAuthEventImpl
    with DiagnosticableTreeMixin
    implements _CheckAuthEvent {
  const _$CheckAuthEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.checkAuth()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthEvent.checkAuth'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckAuthEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, String otp,
            ValueChanged<bool> onSuccess, ValueChanged<Failure> onError)
        logIn,
    required TResult Function() logOut,
    required TResult Function() checkAuth,
  }) {
    return checkAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, String otp,
            ValueChanged<bool> onSuccess, ValueChanged<Failure> onError)?
        logIn,
    TResult? Function()? logOut,
    TResult? Function()? checkAuth,
  }) {
    return checkAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, String otp,
            ValueChanged<bool> onSuccess, ValueChanged<Failure> onError)?
        logIn,
    TResult Function()? logOut,
    TResult Function()? checkAuth,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogInEvent value) logIn,
    required TResult Function(_LogOutEvent value) logOut,
    required TResult Function(_CheckAuthEvent value) checkAuth,
  }) {
    return checkAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LogInEvent value)? logIn,
    TResult? Function(_LogOutEvent value)? logOut,
    TResult? Function(_CheckAuthEvent value)? checkAuth,
  }) {
    return checkAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogInEvent value)? logIn,
    TResult Function(_LogOutEvent value)? logOut,
    TResult Function(_CheckAuthEvent value)? checkAuth,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth(this);
    }
    return orElse();
  }
}

abstract class _CheckAuthEvent implements AuthEvent {
  const factory _CheckAuthEvent() = _$CheckAuthEventImpl;
}

/// @nodoc
mixin _$AuthState {
  AuthStatus get authStatus => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({AuthStatus authStatus, Status status, Failure failure});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authStatus = null,
    Object? status = null,
    Object? failure = null,
  }) {
    return _then(_value.copyWith(
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthStatus authStatus, Status status, Failure failure});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authStatus = null,
    Object? status = null,
    Object? failure = null,
  }) {
    return _then(_$AuthStateImpl(
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl with DiagnosticableTreeMixin implements _AuthState {
  const _$AuthStateImpl(
      {this.authStatus = AuthStatus.INITIAL,
      this.status = Status.initial,
      this.failure = const UknownFailue()});

  @override
  @JsonKey()
  final AuthStatus authStatus;
  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final Failure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState(authStatus: $authStatus, status: $status, failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState'))
      ..add(DiagnosticsProperty('authStatus', authStatus))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authStatus, status, failure);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final AuthStatus authStatus,
      final Status status,
      final Failure failure}) = _$AuthStateImpl;

  @override
  AuthStatus get authStatus;
  @override
  Status get status;
  @override
  Failure get failure;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
