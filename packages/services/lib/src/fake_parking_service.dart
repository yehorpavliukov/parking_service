import 'package:chopper/chopper.dart';
// ignore: implementation_imports
import 'package:http/src/response.dart' as http;
import 'package:services/services.dart';

class FakeParkingService implements IParkingService {
  ParkingDto mocksParking = _testParking;

  @override
  Future<Response<TicketDto>> getFreeSlot({required String parkingId, required String size}) {
    final code = _getTicket(size);
    if (code == null) {
      Future.value(Response<void>(
        http.Response('', 400),
        null,
      ));
    }

    return Future.value(Response<TicketDto>(
      http.Response('', 200),
      TicketDto(slot: code!),
    ));
  }

  @override
  Future<Response<ParkingDto>> getParking() {
    return Future.value(Response<ParkingDto>(
      http.Response('', 200),
      mocksParking,
    ));
  }

  @override
  Future<Response<void>> releaseSlot({required String parkingId, required String slotId}) {
    final floor =
        mocksParking.floors.firstWhere((element) => element.slots.any((el) => el.id == slotId));

    mocksParking = mocksParking.copyWith(
      floors: mocksParking.floors.map((e) {
        if (e.id == floor.id) {
          return floor.copyWith(
            slots: floor.slots.map((el) {
              if (el.id == slotId) {
                return el.copyWith(isBusy: true);
              }

              return el;
            }).toList(),
          );
        }

        return e;
      }).toList(),
    );

    return Future.value(
      Response<void>(
        http.Response('', 200),
        null,
      ),
    );
  }

  String? _getTicket(String size) {
    final smallAvailable = ['small', 'medium', 'large', 'xLarge'];
    final mediumAvailable = ['medium', 'large', 'xLarge'];
    final largeAvailable = ['large', 'xLarge'];
    final xLargeAvailable = ['xLarge'];

    if (size == 'small') {
      if (mocksParking.floors.every((floor) => floor.slots.every((element) => element.isBusy))) {
        return null;
      }

      final floor = mocksParking.floors.firstWhere((element) =>
          element.slots.any((slot) => !slot.isBusy && smallAvailable.contains(slot.type)));
      final slot = floor.slots.firstWhere(
        (element) => !element.isBusy && smallAvailable.contains(element.type),
      );

      mocksParking = mocksParking.copyWith(
        floors: mocksParking.floors.map((e) {
          if (e.id == floor.id) {
            return floor.copyWith(
              slots: floor.slots.map((el) {
                if (el.id == slot.id) {
                  return el.copyWith(isBusy: true);
                }

                return el;
              }).toList(),
            );
          }

          return e;
        }).toList(),
      );

      return '${floor.id}-${slot.id}';
    }

    if (size == 'medium') {
      if (mocksParking.floors
          .where((element) =>
              element.slots.any((slot) => !slot.isBusy && mediumAvailable.contains(slot.type)))
          .isEmpty) {
        return null;
      }

      final floor = mocksParking.floors.firstWhere((element) =>
          element.slots.any((slot) => !slot.isBusy && mediumAvailable.contains(slot.type)));
      final slot = floor.slots.firstWhere(
        (element) => !element.isBusy && mediumAvailable.contains(element.type),
      );

      mocksParking = mocksParking.copyWith(
        floors: mocksParking.floors.map((e) {
          if (e.id == floor.id) {
            return floor.copyWith(
              slots: floor.slots.map((el) {
                if (el.id == slot.id) {
                  return el.copyWith(isBusy: true);
                }

                return el;
              }).toList(),
            );
          }

          return e;
        }).toList(),
      );

      return '${floor.id}-${slot.id}';
    }

    if (size == 'large') {
      if (mocksParking.floors
          .where((element) =>
              element.slots.any((slot) => !slot.isBusy && largeAvailable.contains(slot.type)))
          .isEmpty) {
        return null;
      }

      final floor = mocksParking.floors.firstWhere((element) =>
          element.slots.any((slot) => !slot.isBusy && largeAvailable.contains(slot.type)));
      final slot = floor.slots.firstWhere(
        (element) => !element.isBusy && largeAvailable.contains(element.type),
      );

      mocksParking = mocksParking.copyWith(
        floors: mocksParking.floors.map((e) {
          if (e.id == floor.id) {
            return floor.copyWith(
              slots: floor.slots.map((el) {
                if (el.id == slot.id) {
                  return el.copyWith(isBusy: true);
                }

                return el;
              }).toList(),
            );
          }

          return e;
        }).toList(),
      );

      return '${floor.id}-${slot.id}';
    }

    if (size == 'xLarge') {
      if (mocksParking.floors
          .where((element) =>
              element.slots.any((slot) => !slot.isBusy && xLargeAvailable.contains(slot.type)))
          .isEmpty) {
        return null;
      }

      final floor = mocksParking.floors.firstWhere((element) =>
          element.slots.any((slot) => !slot.isBusy && xLargeAvailable.contains(slot.type)));
      final slot = floor.slots.firstWhere(
        (element) => !element.isBusy && xLargeAvailable.contains(element.type),
      );

      mocksParking = mocksParking.copyWith(
        floors: mocksParking.floors.map((e) {
          if (e.id == floor.id) {
            return floor.copyWith(
              slots: floor.slots.map((el) {
                if (el.id == slot.id) {
                  return el.copyWith(isBusy: true);
                }

                return el;
              }).toList(),
            );
          }

          return e;
        }).toList(),
      );

      return '${floor.id}-${slot.id}';
    }

    return null;
  }
}

final _smallFreeSlots = [
  const SlotDto(id: '1', isBusy: false, type: 'small'),
  const SlotDto(id: '2', isBusy: false, type: 'small'),
  const SlotDto(id: '3', isBusy: false, type: 'small'),
];

final _mediumFreeSlots = [
  const SlotDto(id: '4', isBusy: false, type: 'medium'),
  const SlotDto(id: '5', isBusy: false, type: 'medium'),
  const SlotDto(id: '6', isBusy: false, type: 'medium'),
];

final _largeFreeSlots = [
  const SlotDto(id: '7', isBusy: false, type: 'large'),
  const SlotDto(id: '8', isBusy: false, type: 'large'),
  const SlotDto(id: '9', isBusy: false, type: 'large'),
];

final _xLargeFreeSlots = [
  const SlotDto(id: '10', isBusy: false, type: 'xLarge'),
  const SlotDto(id: '11', isBusy: false, type: 'xLarge'),
  const SlotDto(id: '12', isBusy: false, type: 'xLarge'),
];

final testSlots = [
  ..._smallFreeSlots,
  ..._mediumFreeSlots,
  ..._largeFreeSlots,
  ..._xLargeFreeSlots,
  const SlotDto(id: '13', isBusy: true, type: 'small'),
  const SlotDto(id: '14', isBusy: true, type: 'medium'),
  const SlotDto(id: '15', isBusy: true, type: 'large'),
  const SlotDto(id: '16', isBusy: true, type: 'xLarge'),
];

final _testFloor = FloorDto(slots: testSlots, id: '400', name: 'Floor');

final _testParking = ParkingDto(id: 'id', floors: [
  _testFloor,
  _testFloor.copyWith(id: '500'),
  _testFloor.copyWith(
    id: '600',
  ),
]);
