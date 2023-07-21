part of 'mocks.dart';

const smallFreeSlots = [
  SlotDto(id: '1', isBusy: false, type: 'small'),
  SlotDto(id: '2', isBusy: false, type: 'small'),
  SlotDto(id: '3', isBusy: false, type: 'small'),
];

const mediumFreeSlots = [
  SlotDto(id: '4', isBusy: false, type: 'medium'),
  SlotDto(id: '5', isBusy: false, type: 'medium'),
  SlotDto(id: '6', isBusy: false, type: 'medium'),
];

const largeFreeSlots = [
  SlotDto(id: '7', isBusy: false, type: 'large'),
  SlotDto(id: '8', isBusy: false, type: 'large'),
  SlotDto(id: '9', isBusy: false, type: 'large'),
];

const xLargeFreeSlots = [
  SlotDto(id: '10', isBusy: false, type: 'xLarge'),
  SlotDto(id: '11', isBusy: false, type: 'xLarge'),
  SlotDto(id: '12', isBusy: false, type: 'xLarge'),
];

const testSlots = [
  ...smallFreeSlots,
  ...mediumFreeSlots,
  ...largeFreeSlots,
  ...xLargeFreeSlots,
  SlotDto(id: '13', isBusy: true, type: 'small'),
  SlotDto(id: '14', isBusy: true, type: 'medium'),
  SlotDto(id: '15', isBusy: true, type: 'large'),
  SlotDto(id: '16', isBusy: true, type: 'xLarge'),
];

const testFloor = FloorDto(slots: testSlots, id: '4');

const testParking = ParkingDto(id: 'id', floors: [testFloor, testFloor, testFloor]);

const ticketDto = TicketDto(slot: '4-4');
