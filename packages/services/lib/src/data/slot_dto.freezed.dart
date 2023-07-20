// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slot_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SlotDto _$SlotDtoFromJson(Map<String, dynamic> json) {
  return _SlotDto.fromJson(json);
}

/// @nodoc
mixin _$SlotDto {
  String get id => throw _privateConstructorUsedError;
  bool get isBusy => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SlotDtoCopyWith<SlotDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotDtoCopyWith<$Res> {
  factory $SlotDtoCopyWith(SlotDto value, $Res Function(SlotDto) then) =
      _$SlotDtoCopyWithImpl<$Res, SlotDto>;
  @useResult
  $Res call({String id, bool isBusy, String type});
}

/// @nodoc
class _$SlotDtoCopyWithImpl<$Res, $Val extends SlotDto>
    implements $SlotDtoCopyWith<$Res> {
  _$SlotDtoCopyWithImpl(this._value, this._then);

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
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SlotDtoCopyWith<$Res> implements $SlotDtoCopyWith<$Res> {
  factory _$$_SlotDtoCopyWith(
          _$_SlotDto value, $Res Function(_$_SlotDto) then) =
      __$$_SlotDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, bool isBusy, String type});
}

/// @nodoc
class __$$_SlotDtoCopyWithImpl<$Res>
    extends _$SlotDtoCopyWithImpl<$Res, _$_SlotDto>
    implements _$$_SlotDtoCopyWith<$Res> {
  __$$_SlotDtoCopyWithImpl(_$_SlotDto _value, $Res Function(_$_SlotDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isBusy = null,
    Object? type = null,
  }) {
    return _then(_$_SlotDto(
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
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SlotDto implements _SlotDto {
  const _$_SlotDto(
      {required this.id, required this.isBusy, required this.type});

  factory _$_SlotDto.fromJson(Map<String, dynamic> json) =>
      _$$_SlotDtoFromJson(json);

  @override
  final String id;
  @override
  final bool isBusy;
  @override
  final String type;

  @override
  String toString() {
    return 'SlotDto(id: $id, isBusy: $isBusy, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SlotDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isBusy, isBusy) || other.isBusy == isBusy) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, isBusy, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SlotDtoCopyWith<_$_SlotDto> get copyWith =>
      __$$_SlotDtoCopyWithImpl<_$_SlotDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SlotDtoToJson(
      this,
    );
  }
}

abstract class _SlotDto implements SlotDto {
  const factory _SlotDto(
      {required final String id,
      required final bool isBusy,
      required final String type}) = _$_SlotDto;

  factory _SlotDto.fromJson(Map<String, dynamic> json) = _$_SlotDto.fromJson;

  @override
  String get id;
  @override
  bool get isBusy;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_SlotDtoCopyWith<_$_SlotDto> get copyWith =>
      throw _privateConstructorUsedError;
}
