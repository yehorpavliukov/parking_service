// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ParkingModel {
  String get id => throw _privateConstructorUsedError;
  List<FloorModel> get floors => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParkingModelCopyWith<ParkingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParkingModelCopyWith<$Res> {
  factory $ParkingModelCopyWith(
          ParkingModel value, $Res Function(ParkingModel) then) =
      _$ParkingModelCopyWithImpl<$Res, ParkingModel>;
  @useResult
  $Res call({String id, List<FloorModel> floors, String name});
}

/// @nodoc
class _$ParkingModelCopyWithImpl<$Res, $Val extends ParkingModel>
    implements $ParkingModelCopyWith<$Res> {
  _$ParkingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? floors = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      floors: null == floors
          ? _value.floors
          : floors // ignore: cast_nullable_to_non_nullable
              as List<FloorModel>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ParkingModelCopyWith<$Res>
    implements $ParkingModelCopyWith<$Res> {
  factory _$$_ParkingModelCopyWith(
          _$_ParkingModel value, $Res Function(_$_ParkingModel) then) =
      __$$_ParkingModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, List<FloorModel> floors, String name});
}

/// @nodoc
class __$$_ParkingModelCopyWithImpl<$Res>
    extends _$ParkingModelCopyWithImpl<$Res, _$_ParkingModel>
    implements _$$_ParkingModelCopyWith<$Res> {
  __$$_ParkingModelCopyWithImpl(
      _$_ParkingModel _value, $Res Function(_$_ParkingModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? floors = null,
    Object? name = null,
  }) {
    return _then(_$_ParkingModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      floors: null == floors
          ? _value._floors
          : floors // ignore: cast_nullable_to_non_nullable
              as List<FloorModel>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ParkingModel extends _ParkingModel {
  const _$_ParkingModel(
      {required this.id,
      required final List<FloorModel> floors,
      this.name = ''})
      : _floors = floors,
        super._();

  @override
  final String id;
  final List<FloorModel> _floors;
  @override
  List<FloorModel> get floors {
    if (_floors is EqualUnmodifiableListView) return _floors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_floors);
  }

  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'ParkingModel(id: $id, floors: $floors, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParkingModel &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._floors, _floors) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_floors), name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParkingModelCopyWith<_$_ParkingModel> get copyWith =>
      __$$_ParkingModelCopyWithImpl<_$_ParkingModel>(this, _$identity);
}

abstract class _ParkingModel extends ParkingModel {
  const factory _ParkingModel(
      {required final String id,
      required final List<FloorModel> floors,
      final String name}) = _$_ParkingModel;
  const _ParkingModel._() : super._();

  @override
  String get id;
  @override
  List<FloorModel> get floors;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_ParkingModelCopyWith<_$_ParkingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
