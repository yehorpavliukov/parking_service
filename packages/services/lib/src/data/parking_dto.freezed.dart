// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parking_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ParkingDto _$ParkingDtoFromJson(Map<String, dynamic> json) {
  return _ParkingDto.fromJson(json);
}

/// @nodoc
mixin _$ParkingDto {
  String get id => throw _privateConstructorUsedError;
  List<FloorDto> get floors => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParkingDtoCopyWith<ParkingDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParkingDtoCopyWith<$Res> {
  factory $ParkingDtoCopyWith(
          ParkingDto value, $Res Function(ParkingDto) then) =
      _$ParkingDtoCopyWithImpl<$Res, ParkingDto>;
  @useResult
  $Res call({String id, List<FloorDto> floors, String name});
}

/// @nodoc
class _$ParkingDtoCopyWithImpl<$Res, $Val extends ParkingDto>
    implements $ParkingDtoCopyWith<$Res> {
  _$ParkingDtoCopyWithImpl(this._value, this._then);

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
              as List<FloorDto>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ParkingDtoCopyWith<$Res>
    implements $ParkingDtoCopyWith<$Res> {
  factory _$$_ParkingDtoCopyWith(
          _$_ParkingDto value, $Res Function(_$_ParkingDto) then) =
      __$$_ParkingDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, List<FloorDto> floors, String name});
}

/// @nodoc
class __$$_ParkingDtoCopyWithImpl<$Res>
    extends _$ParkingDtoCopyWithImpl<$Res, _$_ParkingDto>
    implements _$$_ParkingDtoCopyWith<$Res> {
  __$$_ParkingDtoCopyWithImpl(
      _$_ParkingDto _value, $Res Function(_$_ParkingDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? floors = null,
    Object? name = null,
  }) {
    return _then(_$_ParkingDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      floors: null == floors
          ? _value._floors
          : floors // ignore: cast_nullable_to_non_nullable
              as List<FloorDto>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ParkingDto implements _ParkingDto {
  const _$_ParkingDto(
      {required this.id, required final List<FloorDto> floors, this.name = ''})
      : _floors = floors;

  factory _$_ParkingDto.fromJson(Map<String, dynamic> json) =>
      _$$_ParkingDtoFromJson(json);

  @override
  final String id;
  final List<FloorDto> _floors;
  @override
  List<FloorDto> get floors {
    if (_floors is EqualUnmodifiableListView) return _floors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_floors);
  }

  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'ParkingDto(id: $id, floors: $floors, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParkingDto &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._floors, _floors) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_floors), name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParkingDtoCopyWith<_$_ParkingDto> get copyWith =>
      __$$_ParkingDtoCopyWithImpl<_$_ParkingDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParkingDtoToJson(
      this,
    );
  }
}

abstract class _ParkingDto implements ParkingDto {
  const factory _ParkingDto(
      {required final String id,
      required final List<FloorDto> floors,
      final String name}) = _$_ParkingDto;

  factory _ParkingDto.fromJson(Map<String, dynamic> json) =
      _$_ParkingDto.fromJson;

  @override
  String get id;
  @override
  List<FloorDto> get floors;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_ParkingDtoCopyWith<_$_ParkingDto> get copyWith =>
      throw _privateConstructorUsedError;
}
