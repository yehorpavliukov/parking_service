import 'package:flutter_test/flutter_test.dart';

import 'mocks.dart';

void main() {
  test('parking model should return 3 for floorsNumber', () {
    expect(testParking.floorsNumber, 3);
  });
  
  test('parking model should return 3 for totalSlots', () {
    expect(testParking.totalSlots, 48);
  });
  
  test('parking model should return 36 for totalFreeSlots', () {
    expect(testParking.totalFreeSlots, 36);
  });
}
