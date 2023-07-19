import 'package:flutter_test/flutter_test.dart';

import 'mocks.dart';

void main() {
 
  test('floor model should return 4 for smallSlotsNumber and 3 for freeSmallSlotsNumber', () {
    expect(testFloor.smallSlotsNumber, 4);
    expect(testFloor.freeSmallSlotsNumber, 3);
  });

  test('floor model should return 4 for mediumSlotsNumber and 3 for freeMediumSlotsNumber', () {
    expect(testFloor.mediumSlotsNumber, 4);
    expect(testFloor.freeMediumSlotsNumber, 3);
  });

  test('floor model should return 4 for largeSlotsNumber and 3 for freeLargeSlotsNumber', () {
    expect(testFloor.largeSlotsNumber, 4);
    expect(testFloor.freeLargeSlotsNumber, 3);
  });

  test('floor model should return 4 for xLargeSlotsNumber and 3 for freeXLargeSlotsNumber', () {
    expect(testFloor.xLargeSlotsNumber, 4);
    expect(testFloor.freeXLargeSlotsNumber, 3);
  });

  test('floor model should return all smallSlots', () {
    expect(testFloor.smallSlots.every((element) => element.isBusy), isFalse);
  });

  test('floor model should return free freeSmallSlots', () {
    expect(testFloor.freeSmallSlots.every((element) => !element.isBusy), isTrue);
  });
  test('floor model should return all mediumSLots', () {
    expect(testFloor.mediumSLots.every((element) => element.isBusy), isFalse);
  });

  test('floor model should return free freeMediumSlots', () {
    expect(testFloor.freeMediumSlots.every((element) => !element.isBusy), isTrue);
  });
  test('floor model should return all largeSlots', () {
    expect(testFloor.largeSlots.every((element) => element.isBusy), isFalse);
  });

  test('floor model should return free freeLargeSlots', () {
    expect(testFloor.freeLargeSlots.every((element) => !element.isBusy), isTrue);
  });
  test('floor model should return all xLargeSlots', () {
    expect(testFloor.xLargeSlots.every((element) => element.isBusy), isFalse);
  });

  test('floor model should return free freeXLargeSlots', () {
    expect(testFloor.freeXLargeSlots.every((element) => !element.isBusy), isTrue);
  });

  test('totalSlots should return 16 for testSlots', () {
    expect(testFloor.totalSlots, 16);
  });

  test('totalFreeSlots should return 12 for testSlots', () {
    expect(testFloor.totalFreeSlots, 12);
  });
}
