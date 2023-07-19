import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';

void main() {
  const testSlot = SlotModel(id: 'id', isBusy: false, type: SlotType.large);
  test('slot model should return data for Slot', () {
    expect(testSlot.id, 'id');
    expect(testSlot.isBusy, isFalse);
    expect(testSlot.type, SlotType.large);
  });
}
