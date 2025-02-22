// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_genre_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryGenreModel _$CategoryGenreModelFromJson(Map<String, dynamic> json) {
  return _CategoryGenreModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryGenreModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get img => throw _privateConstructorUsedError;

  /// Serializes this CategoryGenreModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryGenreModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryGenreModelCopyWith<CategoryGenreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryGenreModelCopyWith<$Res> {
  factory $CategoryGenreModelCopyWith(
          CategoryGenreModel value, $Res Function(CategoryGenreModel) then) =
      _$CategoryGenreModelCopyWithImpl<$Res, CategoryGenreModel>;
  @useResult
  $Res call({int id, String name, String? img});
}

/// @nodoc
class _$CategoryGenreModelCopyWithImpl<$Res, $Val extends CategoryGenreModel>
    implements $CategoryGenreModelCopyWith<$Res> {
  _$CategoryGenreModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryGenreModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? img = freezed,
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
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryGenreModelImplCopyWith<$Res>
    implements $CategoryGenreModelCopyWith<$Res> {
  factory _$$CategoryGenreModelImplCopyWith(_$CategoryGenreModelImpl value,
          $Res Function(_$CategoryGenreModelImpl) then) =
      __$$CategoryGenreModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String? img});
}

/// @nodoc
class __$$CategoryGenreModelImplCopyWithImpl<$Res>
    extends _$CategoryGenreModelCopyWithImpl<$Res, _$CategoryGenreModelImpl>
    implements _$$CategoryGenreModelImplCopyWith<$Res> {
  __$$CategoryGenreModelImplCopyWithImpl(_$CategoryGenreModelImpl _value,
      $Res Function(_$CategoryGenreModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryGenreModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? img = freezed,
  }) {
    return _then(_$CategoryGenreModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryGenreModelImpl implements _CategoryGenreModel {
  const _$CategoryGenreModelImpl(
      {required this.id, required this.name, this.img});

  factory _$CategoryGenreModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryGenreModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? img;

  @override
  String toString() {
    return 'CategoryGenreModel(id: $id, name: $name, img: $img)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryGenreModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.img, img) || other.img == img));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, img);

  /// Create a copy of CategoryGenreModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryGenreModelImplCopyWith<_$CategoryGenreModelImpl> get copyWith =>
      __$$CategoryGenreModelImplCopyWithImpl<_$CategoryGenreModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryGenreModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryGenreModel implements CategoryGenreModel {
  const factory _CategoryGenreModel(
      {required final int id,
      required final String name,
      final String? img}) = _$CategoryGenreModelImpl;

  factory _CategoryGenreModel.fromJson(Map<String, dynamic> json) =
      _$CategoryGenreModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get img;

  /// Create a copy of CategoryGenreModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryGenreModelImplCopyWith<_$CategoryGenreModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
