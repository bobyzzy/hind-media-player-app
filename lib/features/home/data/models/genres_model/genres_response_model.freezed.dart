// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'genres_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GenresResponseModel _$GenresResponseModelFromJson(Map<String, dynamic> json) {
  return _GenresResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GenresResponseModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this GenresResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GenresResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenresResponseModelCopyWith<GenresResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenresResponseModelCopyWith<$Res> {
  factory $GenresResponseModelCopyWith(
          GenresResponseModel value, $Res Function(GenresResponseModel) then) =
      _$GenresResponseModelCopyWithImpl<$Res, GenresResponseModel>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$GenresResponseModelCopyWithImpl<$Res, $Val extends GenresResponseModel>
    implements $GenresResponseModelCopyWith<$Res> {
  _$GenresResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenresResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenresResponseModelImplCopyWith<$Res>
    implements $GenresResponseModelCopyWith<$Res> {
  factory _$$GenresResponseModelImplCopyWith(_$GenresResponseModelImpl value,
          $Res Function(_$GenresResponseModelImpl) then) =
      __$$GenresResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$GenresResponseModelImplCopyWithImpl<$Res>
    extends _$GenresResponseModelCopyWithImpl<$Res, _$GenresResponseModelImpl>
    implements _$$GenresResponseModelImplCopyWith<$Res> {
  __$$GenresResponseModelImplCopyWithImpl(_$GenresResponseModelImpl _value,
      $Res Function(_$GenresResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenresResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$GenresResponseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenresResponseModelImpl implements _GenresResponseModel {
  const _$GenresResponseModelImpl({required this.id, required this.name});

  factory _$GenresResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenresResponseModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'GenresResponseModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenresResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of GenresResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenresResponseModelImplCopyWith<_$GenresResponseModelImpl> get copyWith =>
      __$$GenresResponseModelImplCopyWithImpl<_$GenresResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenresResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GenresResponseModel implements GenresResponseModel {
  const factory _GenresResponseModel(
      {required final int id,
      required final String name}) = _$GenresResponseModelImpl;

  factory _GenresResponseModel.fromJson(Map<String, dynamic> json) =
      _$GenresResponseModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of GenresResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenresResponseModelImplCopyWith<_$GenresResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
