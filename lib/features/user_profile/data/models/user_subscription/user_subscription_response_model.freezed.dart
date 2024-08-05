// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_subscription_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserSubscriptionResponseModel _$UserSubscriptionResponseModelFromJson(
    Map<String, dynamic> json) {
  return _UserSubscriptionResponseModel.fromJson(json);
}

/// @nodoc
mixin _$UserSubscriptionResponseModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  int get period => throw _privateConstructorUsedError;
  @JsonKey(name: 'tariff_period_type')
  String get periodType => throw _privateConstructorUsedError;
  List<BenefitsDataModel> get benefits => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserSubscriptionResponseModelCopyWith<UserSubscriptionResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSubscriptionResponseModelCopyWith<$Res> {
  factory $UserSubscriptionResponseModelCopyWith(
          UserSubscriptionResponseModel value,
          $Res Function(UserSubscriptionResponseModel) then) =
      _$UserSubscriptionResponseModelCopyWithImpl<$Res,
          UserSubscriptionResponseModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      int price,
      int period,
      @JsonKey(name: 'tariff_period_type') String periodType,
      List<BenefitsDataModel> benefits});
}

/// @nodoc
class _$UserSubscriptionResponseModelCopyWithImpl<$Res,
        $Val extends UserSubscriptionResponseModel>
    implements $UserSubscriptionResponseModelCopyWith<$Res> {
  _$UserSubscriptionResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? period = null,
    Object? periodType = null,
    Object? benefits = null,
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
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as int,
      periodType: null == periodType
          ? _value.periodType
          : periodType // ignore: cast_nullable_to_non_nullable
              as String,
      benefits: null == benefits
          ? _value.benefits
          : benefits // ignore: cast_nullable_to_non_nullable
              as List<BenefitsDataModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserSubscriptionResponseModelImplCopyWith<$Res>
    implements $UserSubscriptionResponseModelCopyWith<$Res> {
  factory _$$UserSubscriptionResponseModelImplCopyWith(
          _$UserSubscriptionResponseModelImpl value,
          $Res Function(_$UserSubscriptionResponseModelImpl) then) =
      __$$UserSubscriptionResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int price,
      int period,
      @JsonKey(name: 'tariff_period_type') String periodType,
      List<BenefitsDataModel> benefits});
}

/// @nodoc
class __$$UserSubscriptionResponseModelImplCopyWithImpl<$Res>
    extends _$UserSubscriptionResponseModelCopyWithImpl<$Res,
        _$UserSubscriptionResponseModelImpl>
    implements _$$UserSubscriptionResponseModelImplCopyWith<$Res> {
  __$$UserSubscriptionResponseModelImplCopyWithImpl(
      _$UserSubscriptionResponseModelImpl _value,
      $Res Function(_$UserSubscriptionResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? period = null,
    Object? periodType = null,
    Object? benefits = null,
  }) {
    return _then(_$UserSubscriptionResponseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as int,
      periodType: null == periodType
          ? _value.periodType
          : periodType // ignore: cast_nullable_to_non_nullable
              as String,
      benefits: null == benefits
          ? _value._benefits
          : benefits // ignore: cast_nullable_to_non_nullable
              as List<BenefitsDataModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserSubscriptionResponseModelImpl
    implements _UserSubscriptionResponseModel {
  const _$UserSubscriptionResponseModelImpl(
      {required this.id,
      required this.name,
      required this.price,
      required this.period,
      @JsonKey(name: 'tariff_period_type') required this.periodType,
      required final List<BenefitsDataModel> benefits})
      : _benefits = benefits;

  factory _$UserSubscriptionResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UserSubscriptionResponseModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int price;
  @override
  final int period;
  @override
  @JsonKey(name: 'tariff_period_type')
  final String periodType;
  final List<BenefitsDataModel> _benefits;
  @override
  List<BenefitsDataModel> get benefits {
    if (_benefits is EqualUnmodifiableListView) return _benefits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_benefits);
  }

  @override
  String toString() {
    return 'UserSubscriptionResponseModel(id: $id, name: $name, price: $price, period: $period, periodType: $periodType, benefits: $benefits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSubscriptionResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.periodType, periodType) ||
                other.periodType == periodType) &&
            const DeepCollectionEquality().equals(other._benefits, _benefits));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, price, period,
      periodType, const DeepCollectionEquality().hash(_benefits));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSubscriptionResponseModelImplCopyWith<
          _$UserSubscriptionResponseModelImpl>
      get copyWith => __$$UserSubscriptionResponseModelImplCopyWithImpl<
          _$UserSubscriptionResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserSubscriptionResponseModelImplToJson(
      this,
    );
  }
}

abstract class _UserSubscriptionResponseModel
    implements UserSubscriptionResponseModel {
  const factory _UserSubscriptionResponseModel(
          {required final int id,
          required final String name,
          required final int price,
          required final int period,
          @JsonKey(name: 'tariff_period_type') required final String periodType,
          required final List<BenefitsDataModel> benefits}) =
      _$UserSubscriptionResponseModelImpl;

  factory _UserSubscriptionResponseModel.fromJson(Map<String, dynamic> json) =
      _$UserSubscriptionResponseModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get price;
  @override
  int get period;
  @override
  @JsonKey(name: 'tariff_period_type')
  String get periodType;
  @override
  List<BenefitsDataModel> get benefits;
  @override
  @JsonKey(ignore: true)
  _$$UserSubscriptionResponseModelImplCopyWith<
          _$UserSubscriptionResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BenefitsDataModel _$BenefitsDataModelFromJson(Map<String, dynamic> json) {
  return _BenefitsDataModel.fromJson(json);
}

/// @nodoc
mixin _$BenefitsDataModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BenefitsDataModelCopyWith<BenefitsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BenefitsDataModelCopyWith<$Res> {
  factory $BenefitsDataModelCopyWith(
          BenefitsDataModel value, $Res Function(BenefitsDataModel) then) =
      _$BenefitsDataModelCopyWithImpl<$Res, BenefitsDataModel>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$BenefitsDataModelCopyWithImpl<$Res, $Val extends BenefitsDataModel>
    implements $BenefitsDataModelCopyWith<$Res> {
  _$BenefitsDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$BenefitsDataModelImplCopyWith<$Res>
    implements $BenefitsDataModelCopyWith<$Res> {
  factory _$$BenefitsDataModelImplCopyWith(_$BenefitsDataModelImpl value,
          $Res Function(_$BenefitsDataModelImpl) then) =
      __$$BenefitsDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$BenefitsDataModelImplCopyWithImpl<$Res>
    extends _$BenefitsDataModelCopyWithImpl<$Res, _$BenefitsDataModelImpl>
    implements _$$BenefitsDataModelImplCopyWith<$Res> {
  __$$BenefitsDataModelImplCopyWithImpl(_$BenefitsDataModelImpl _value,
      $Res Function(_$BenefitsDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$BenefitsDataModelImpl(
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
class _$BenefitsDataModelImpl implements _BenefitsDataModel {
  const _$BenefitsDataModelImpl({required this.id, required this.name});

  factory _$BenefitsDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BenefitsDataModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'BenefitsDataModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BenefitsDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BenefitsDataModelImplCopyWith<_$BenefitsDataModelImpl> get copyWith =>
      __$$BenefitsDataModelImplCopyWithImpl<_$BenefitsDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BenefitsDataModelImplToJson(
      this,
    );
  }
}

abstract class _BenefitsDataModel implements BenefitsDataModel {
  const factory _BenefitsDataModel(
      {required final int id,
      required final String name}) = _$BenefitsDataModelImpl;

  factory _BenefitsDataModel.fromJson(Map<String, dynamic> json) =
      _$BenefitsDataModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$BenefitsDataModelImplCopyWith<_$BenefitsDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
