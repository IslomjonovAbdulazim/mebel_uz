// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'furniture_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FurnitureModel _$FurnitureModelFromJson(Map<String, dynamic> json) {
  return _FurnitureModel.fromJson(json);
}

/// @nodoc
mixin _$FurnitureModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;

  /// Serializes this FurnitureModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FurnitureModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FurnitureModelCopyWith<FurnitureModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FurnitureModelCopyWith<$Res> {
  factory $FurnitureModelCopyWith(
          FurnitureModel value, $Res Function(FurnitureModel) then) =
      _$FurnitureModelCopyWithImpl<$Res, FurnitureModel>;
  @useResult
  $Res call({int id, String name, int price, List<String> images});
}

/// @nodoc
class _$FurnitureModelCopyWithImpl<$Res, $Val extends FurnitureModel>
    implements $FurnitureModelCopyWith<$Res> {
  _$FurnitureModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FurnitureModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? images = null,
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
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FurnitureModelImplCopyWith<$Res>
    implements $FurnitureModelCopyWith<$Res> {
  factory _$$FurnitureModelImplCopyWith(_$FurnitureModelImpl value,
          $Res Function(_$FurnitureModelImpl) then) =
      __$$FurnitureModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, int price, List<String> images});
}

/// @nodoc
class __$$FurnitureModelImplCopyWithImpl<$Res>
    extends _$FurnitureModelCopyWithImpl<$Res, _$FurnitureModelImpl>
    implements _$$FurnitureModelImplCopyWith<$Res> {
  __$$FurnitureModelImplCopyWithImpl(
      _$FurnitureModelImpl _value, $Res Function(_$FurnitureModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FurnitureModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? images = null,
  }) {
    return _then(_$FurnitureModelImpl(
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
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FurnitureModelImpl implements _FurnitureModel {
  const _$FurnitureModelImpl(
      {required this.id,
      required this.name,
      required this.price,
      required final List<String> images})
      : _images = images;

  factory _$FurnitureModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FurnitureModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int price;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'FurnitureModel(id: $id, name: $name, price: $price, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FurnitureModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, price,
      const DeepCollectionEquality().hash(_images));

  /// Create a copy of FurnitureModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FurnitureModelImplCopyWith<_$FurnitureModelImpl> get copyWith =>
      __$$FurnitureModelImplCopyWithImpl<_$FurnitureModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FurnitureModelImplToJson(
      this,
    );
  }
}

abstract class _FurnitureModel implements FurnitureModel {
  const factory _FurnitureModel(
      {required final int id,
      required final String name,
      required final int price,
      required final List<String> images}) = _$FurnitureModelImpl;

  factory _FurnitureModel.fromJson(Map<String, dynamic> json) =
      _$FurnitureModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get price;
  @override
  List<String> get images;

  /// Create a copy of FurnitureModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FurnitureModelImplCopyWith<_$FurnitureModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
