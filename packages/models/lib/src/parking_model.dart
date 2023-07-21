import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';

part 'parking_model.freezed.dart';

@freezed
class ParkingModel with _$ParkingModel {
  const factory ParkingModel({
    required String id,
    required List<FloorModel> floors,
    @Default('') String name,
  }) = _ParkingModel;

  const ParkingModel._();

  int get totalSlots => floors.map((e) => e.totalSlots).reduce((value, element) => value + element);

  int get totalFreeSlots =>
      floors.map((e) => e.totalFreeSlots).reduce((value, element) => value + element);

  int get floorsNumber => floors.length;
}
