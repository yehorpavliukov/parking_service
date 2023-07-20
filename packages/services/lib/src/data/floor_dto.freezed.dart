// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'floor_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FloorDto _$FloorDtoFromJson(Map<String, dynamic> json) {
  return _FloorDto.fromJson(json);
}

/// @nodoc
mixin _$FloorDto {
  List<SlotDto> get slots => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FloorDtoCopyWith<FloorDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FloorDtoCopyWith<$Res> {
  factory $FloorDtoCopyWith(FloorDto value, $Res Function(FloorDto) then) =
      _$FloorDtoCopyWithImpl<$Res, FloorDto>;
  @useResult
  $Res call({List<SlotDto> slots, String id, String name});
}

/// @nodoc
class _$FloorDtoCopyWithImpl<$Res, $Val extends FloorDto>
    implements $FloorDtoCopyWith<$Res> {
  _$FloorDtoCopyWithImpl(this._value, this._then);

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
              as List<SlotDto>,
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
abstract class _$$_FloorDtoCopyWith<$Res> implements $FloorDtoCopyWith<$Res> {
  factory _$$_FloorDtoCopyWith(
          _$_FloorDto value, $Res Function(_$_FloorDto) then) =
      __$$_FloorDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SlotDto> slots, String id, String name});
}

/// @nodoc
class __$$_FloorDtoCopyWithImpl<$Res>
    extends _$FloorDtoCopyWithImpl<$Res, _$_FloorDto>
    implements _$$_FloorDtoCopyWith<$Res> {
  __$$_FloorDtoCopyWithImpl(
      _$_FloorDto _value, $Res Function(_$_FloorDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slots = null,
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_FloorDto(
      slots: null == slots
          ? _value._slots
          : slots // ignore: cast_nullable_to_non_nullable
              as List<SlotDto>,
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
@JsonSerializable()
class _$_FloorDto implements _FloorDto {
  const _$_FloorDto(
      {required final List<SlotDto> slots, required this.id, this.name = ''})
      : _slots = slots;

  factory _$_FloorDto.fromJson(Map<String, dynamic> json) =>
      _$$_FloorDtoFromJson(json);

  final List<SlotDto> _slots;
  @override
  List<SlotDto> get slots {
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
    return 'FloorDto(slots: $slots, id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FloorDto &&
            const DeepCollectionEquality().equals(other._slots, _slots) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_slots), id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FloorDtoCopyWith<_$_FloorDto> get copyWith =>
      __$$_FloorDtoCopyWithImpl<_$_FloorDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FloorDtoToJson(
      this,
    );
  }
}

abstract class _FloorDto implements FloorDto {
  const factory _FloorDto(
      {required final List<SlotDto> slots,
      required final String id,
      final String name}) = _$_FloorDto;

  factory _FloorDto.fromJson(Map<String, dynamic> json) = _$_FloorDto.fromJson;

  @override
  List<SlotDto> get slots;
  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_FloorDtoCopyWith<_$_FloorDto> get copyWith =>
      throw _privateConstructorUsedError;
}
