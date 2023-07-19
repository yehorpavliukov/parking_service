import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';

part 'slot_model.freezed.dart';

@freezed
class SlotModel with _$SlotModel {
  const factory SlotModel({
    required String id,
    required bool isBusy,
    required SlotType type,
  }) = _SlotModel;
}
