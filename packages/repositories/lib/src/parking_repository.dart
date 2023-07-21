import 'dart:developer';

import 'package:models/models.dart';
import 'package:repositories/repositories.dart';
import 'package:services/services.dart';

part 'parking_repository.mapper.dart';

class ParkingRepository extends BffRepository {
  final ParkingService _service;
  ParkingModel? _parkingModel;

  ParkingRepository(super.connectivity, this._service);

  ParkingModel? get parkingModel => _parkingModel;

  Future<ApiResult<ParkingModel, FailureResult>> getParkingModel() async {
    try {
      final result = await guardApiCall<ParkingModel, ParkingDto>(
        invoker: () async => _service.getParking(),
        mapper: (r) => r.toModel(),
      );
      if (result.isSuccess) {
        _parkingModel = result.success;
      }
      return result;
    } catch (e) {
      log(e.toString());
      return const ApiResult.failure(FailureResult(
          reason: FailureReasons.unknown, debugMessage: 'Parking is not initialized'));
    }
  }

  Future<ApiResult<TicketModel, FailureResult>> getFreeSlot(SlotType size) async {
    if (_parkingModel == null) {
      return const ApiResult.failure(FailureResult(
          reason: FailureReasons.unknown, debugMessage: 'Parking is not initialized'));
    }

    final result = await guardApiCall<TicketModel, TicketDto>(
      invoker: () async => _service.getFreeSlot(
        parkingId: _parkingModel!.id,
        size: size.name,
      ),
      mapper: (r) => r.toModel(),
    );

    if (result.isSuccess) {
      final ticket = result.success;
      final arrayWithIds = ticket.code.split('-');
      final slotId = arrayWithIds[1];
      final floorId = arrayWithIds[0];
      _parkingModel = _changeSlotStatusByFloor(floorId: floorId, slotId: slotId, isBusy: true);
    }

    return result;
  }

  Future<ApiResult<void, FailureResult>> releaseSlot(String code) async {
    if (_parkingModel == null) {
      return const ApiResult.failure(FailureResult(
          reason: FailureReasons.unknown, debugMessage: 'Parking is not initialized'));
    }

    final arrayWithIds = code.split('-');
    final slotId = arrayWithIds[1];
    final floorId = arrayWithIds[0];

    final result = await guardApiCall<void, void>(
      invoker: () async => _service.releaseSlot(
        parkingId: _parkingModel!.id,
        slotId: slotId,
      ),
    );

    if (result.isSuccess) {
      _parkingModel = _changeSlotStatusByFloor(floorId: floorId, slotId: slotId, isBusy: false);
    }

    return result;
  }

  ParkingModel _changeSlotStatusByFloor({
    required String floorId,
    required String slotId,
    required bool isBusy,
  }) {
    final parking = _parkingModel!;

    return parking.copyWith(
        floors: parking.floors.map((floor) {
      if (floor.id == floorId) {
        return floor.copyWith(
            slots: floor.slots.map((slot) {
          if (slot.id == slotId) {
            return slot.copyWith(isBusy: isBusy);
          }

          return slot;
        }).toList());
      }
      return floor;
    }).toList());
  }
}
