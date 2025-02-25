// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticker_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TickerState {
  TimerStatus get timerStatus => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;

  /// Create a copy of TickerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TickerStateCopyWith<TickerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TickerStateCopyWith<$Res> {
  factory $TickerStateCopyWith(
          TickerState value, $Res Function(TickerState) then) =
      _$TickerStateCopyWithImpl<$Res, TickerState>;
  @useResult
  $Res call({TimerStatus timerStatus, int duration});
}

/// @nodoc
class _$TickerStateCopyWithImpl<$Res, $Val extends TickerState>
    implements $TickerStateCopyWith<$Res> {
  _$TickerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TickerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timerStatus = null,
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      timerStatus: null == timerStatus
          ? _value.timerStatus
          : timerStatus // ignore: cast_nullable_to_non_nullable
              as TimerStatus,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TickerStateImplCopyWith<$Res>
    implements $TickerStateCopyWith<$Res> {
  factory _$$TickerStateImplCopyWith(
          _$TickerStateImpl value, $Res Function(_$TickerStateImpl) then) =
      __$$TickerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TimerStatus timerStatus, int duration});
}

/// @nodoc
class __$$TickerStateImplCopyWithImpl<$Res>
    extends _$TickerStateCopyWithImpl<$Res, _$TickerStateImpl>
    implements _$$TickerStateImplCopyWith<$Res> {
  __$$TickerStateImplCopyWithImpl(
      _$TickerStateImpl _value, $Res Function(_$TickerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TickerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timerStatus = null,
    Object? duration = null,
  }) {
    return _then(_$TickerStateImpl(
      timerStatus: null == timerStatus
          ? _value.timerStatus
          : timerStatus // ignore: cast_nullable_to_non_nullable
              as TimerStatus,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TickerStateImpl with DiagnosticableTreeMixin implements _TickerState {
  const _$TickerStateImpl(
      {this.timerStatus = TimerStatus.INITIAL, required this.duration});

  @override
  @JsonKey()
  final TimerStatus timerStatus;
  @override
  final int duration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TickerState(timerStatus: $timerStatus, duration: $duration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TickerState'))
      ..add(DiagnosticsProperty('timerStatus', timerStatus))
      ..add(DiagnosticsProperty('duration', duration));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TickerStateImpl &&
            (identical(other.timerStatus, timerStatus) ||
                other.timerStatus == timerStatus) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timerStatus, duration);

  /// Create a copy of TickerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TickerStateImplCopyWith<_$TickerStateImpl> get copyWith =>
      __$$TickerStateImplCopyWithImpl<_$TickerStateImpl>(this, _$identity);
}

abstract class _TickerState implements TickerState {
  const factory _TickerState(
      {final TimerStatus timerStatus,
      required final int duration}) = _$TickerStateImpl;

  @override
  TimerStatus get timerStatus;
  @override
  int get duration;

  /// Create a copy of TickerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TickerStateImplCopyWith<_$TickerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
