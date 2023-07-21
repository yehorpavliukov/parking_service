import 'package:models/models.dart';

const smallFreeSlots = [
  SlotModel(id: 'id', isBusy: false, type: SlotType.small),
  SlotModel(id: 'id', isBusy: false, type: SlotType.small),
  SlotModel(id: 'id', isBusy: false, type: SlotType.small),
];

const mediumFreeSlots = [
  SlotModel(id: 'id', isBusy: false, type: SlotType.medium),
  SlotModel(id: 'id', isBusy: false, type: SlotType.medium),
  SlotModel(id: 'id', isBusy: false, type: SlotType.medium),
];

const largeFreeSlots = [
  SlotModel(id: 'id', isBusy: false, type: SlotType.large),
  SlotModel(id: 'id', isBusy: false, type: SlotType.large),
  SlotModel(id: 'id', isBusy: false, type: SlotType.large),
];

const xLargeFreeSlots = [
  SlotModel(id: 'id', isBusy: false, type: SlotType.xLarge),
  SlotModel(id: 'id', isBusy: false, type: SlotType.xLarge),
  SlotModel(id: 'id', isBusy: false, type: SlotType.xLarge),
];

const testSlots = [
  ...smallFreeSlots,
  ...mediumFreeSlots,
  ...largeFreeSlots,
  ...xLargeFreeSlots,
  SlotModel(id: 'id', isBusy: true, type: SlotType.small),
  SlotModel(id: 'id', isBusy: true, type: SlotType.medium),
  SlotModel(id: 'id', isBusy: true, type: SlotType.large),
  SlotModel(id: 'id', isBusy: true, type: SlotType.xLarge),
];

const testFloor = FloorModel(slots: testSlots, id: 'id');

const testParking = ParkingModel(id: 'id', floors: [testFloor, testFloor, testFloor]);
