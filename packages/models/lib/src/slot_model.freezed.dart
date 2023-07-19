// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slot_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SlotModel {
  String get id => throw _privateConstructorUsedError;
  bool get isBusy => throw _privateConstructorUsedError;
  SlotType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SlotModelCopyWith<SlotModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotModelCopyWith<$Res> {
  factory $SlotModelCopyWith(SlotModel value, $Res Function(SlotModel) then) =
      _$SlotModelCopyWithImpl<$Res, SlotModel>;
  @useResult
  $Res call({String id, bool isBusy, SlotType type});
}

/// @nodoc
class _$SlotModelCopyWithImpl<$Res, $Val extends SlotModel>
    implements $SlotModelCopyWith<$Res> {
  _$SlotModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isBusy = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isBusy: null == isBusy
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SlotType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SlotModelCopyWith<$Res> implements $SlotModelCopyWith<$Res> {
  factory _$$_SlotModelCopyWith(
          _$_SlotModel value, $Res Function(_$_SlotModel) then) =
      __$$_SlotModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, bool isBusy, SlotType type});
}

/// @nodoc
class __$$_SlotModelCopyWithImpl<$Res>
    extends _$SlotModelCopyWithImpl<$Res, _$_SlotModel>
    implements _$$_SlotModelCopyWith<$Res> {
  __$$_SlotModelCopyWithImpl(
      _$_SlotModel _value, $Res Function(_$_SlotModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isBusy = null,
    Object? type = null,
  }) {
    return _then(_$_SlotModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isBusy: null == isBusy
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SlotType,
    ));
  }
}

/// @nodoc

class _$_SlotModel implements _SlotModel {
  const _$_SlotModel(
      {required this.id, required this.isBusy, required this.type});

  @override
  final String id;
  @override
  final bool isBusy;
  @override
  final SlotType type;

  @override
  String toString() {
    return 'SlotModel(id: $id, isBusy: $isBusy, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SlotModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isBusy, isBusy) || other.isBusy == isBusy) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, isBusy, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SlotModelCopyWith<_$_SlotModel> get copyWith =>
      __$$_SlotModelCopyWithImpl<_$_SlotModel>(this, _$identity);
}

abstract class _SlotModel implements SlotModel {
  const factory _SlotModel(
      {required final String id,
      required final bool isBusy,
      required final SlotType type}) = _$_SlotModel;

  @override
  String get id;
  @override
  bool get isBusy;
  @override
  SlotType get type;
  @override
  @JsonKey(ignore: true)
  _$$_SlotModelCopyWith<_$_SlotModel> get copyWith =>
      throw _privateConstructorUsedError;
}
