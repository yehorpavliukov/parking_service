// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'floor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FloorModel {
  List<SlotModel> get slots => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FloorModelCopyWith<FloorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FloorModelCopyWith<$Res> {
  factory $FloorModelCopyWith(
          FloorModel value, $Res Function(FloorModel) then) =
      _$FloorModelCopyWithImpl<$Res, FloorModel>;
  @useResult
  $Res call({List<SlotModel> slots, String id, String name});
}

/// @nodoc
class _$FloorModelCopyWithImpl<$Res, $Val extends FloorModel>
    implements $FloorModelCopyWith<$Res> {
  _$FloorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slots = null,
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      slots: null == slots
          ? _value.slots
          : slots // ignore: cast_nullable_to_non_nullable
              as List<SlotModel>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FloorModelCopyWith<$Res>
    implements $FloorModelCopyWith<$Res> {
  factory _$$_FloorModelCopyWith(
          _$_FloorModel value, $Res Function(_$_FloorModel) then) =
      __$$_FloorModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SlotModel> slots, String id, String name});
}

/// @nodoc
class __$$_FloorModelCopyWithImpl<$Res>
    extends _$FloorModelCopyWithImpl<$Res, _$_FloorModel>
    implements _$$_FloorModelCopyWith<$Res> {
  __$$_FloorModelCopyWithImpl(
      _$_FloorModel _value, $Res Function(_$_FloorModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slots = null,
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_FloorModel(
      slots: null == slots
          ? _value._slots
          : slots // ignore: cast_nullable_to_non_nullable
              as List<SlotModel>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FloorModel extends _FloorModel {
  const _$_FloorModel(
      {required final List<SlotModel> slots, required this.id, this.name = ''})
      : _slots = slots,
        super._();

  final List<SlotModel> _slots;
  @override
  List<SlotModel> get slots {
    if (_slots is EqualUnmodifiableListView) return _slots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_slots);
  }

  @override
  final String id;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'FloorModel(slots: $slots, id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FloorModel &&
            const DeepCollectionEquality().equals(other._slots, _slots) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_slots), id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FloorModelCopyWith<_$_FloorModel> get copyWith =>
      __$$_FloorModelCopyWithImpl<_$_FloorModel>(this, _$identity);
}

abstract class _FloorModel extends FloorModel {
  const factory _FloorModel(
      {required final List<SlotModel> slots,
      required final String id,
      final String name}) = _$_FloorModel;
  const _FloorModel._() : super._();

  @override
  List<SlotModel> get slots;
  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_FloorModelCopyWith<_$_FloorModel> get copyWith =>
      throw _privateConstructorUsedError;
}
