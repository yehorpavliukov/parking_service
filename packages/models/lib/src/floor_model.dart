import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';

part 'floor_model.freezed.dart';

@freezed
class FloorModel with _$FloorModel {
  const factory FloorModel({
    required List<SlotModel> slots,
    required String id,
    @Default('') String name,
  }) = _FloorModel;

  const FloorModel._();

  List<SlotModel> get smallSlots =>
      slots.where((element) => element.type == SlotType.small).toList();

  List<SlotModel> get freeSmallSlots => smallSlots.where((element) => !element.isBusy).toList();

  List<SlotModel> get mediumSLots =>
      slots.where((element) => element.type == SlotType.medium).toList();

  List<SlotModel> get freeMediumSlots => mediumSLots.where((element) => !element.isBusy).toList();

  List<SlotModel> get largeSlots =>
      slots.where((element) => element.type == SlotType.large).toList();

  List<SlotModel> get freeLargeSlots => largeSlots.where((element) => !element.isBusy).toList();

  List<SlotModel> get xLargeSlots =>
      slots.where((element) => element.type == SlotType.xLarge).toList();

  List<SlotModel> get freeXLargeSlots => xLargeSlots.where((element) => !element.isBusy).toList();

  int get totalSlots => slots.length;

  int get totalFreeSlots => slots.where((element) => !element.isBusy).length;

  int get smallSlotsNumber => smallSlots.length;

  int get freeSmallSlotsNumber => freeSmallSlots.length;

  int get mediumSlotsNumber => mediumSLots.length;

  int get freeMediumSlotsNumber => freeMediumSlots.length;

  int get largeSlotsNumber => largeSlots.length;

  int get freeLargeSlotsNumber => freeLargeSlots.length;

  int get xLargeSlotsNumber => xLargeSlots.length;

  int get freeXLargeSlotsNumber => freeXLargeSlots.length;

  bool get isBusy => slots.every((element) => element.isBusy);
}
