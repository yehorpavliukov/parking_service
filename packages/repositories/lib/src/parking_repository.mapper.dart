part of 'parking_repository.dart';

extension on SlotDto {
  SlotModel toModel() {
    return SlotModel(
        id: id,
        isBusy: isBusy,
        type: SlotType.values.firstWhere((element) {
          return element.name == type;
        }));
  }
}

extension on FloorDto {
  FloorModel toModel() {
    return FloorModel(slots: slots.map((e) => e.toModel()).toList(), id: id, name: name);
  }
}

extension on ParkingDto {
  ParkingModel toModel() {
    return ParkingModel(id: id, floors: floors.map((e) => e.toModel()).toList(), name: name);
  }
}

extension on TicketDto {
  TicketModel toModel() {
    return TicketModel(code: slot);
  }
}
