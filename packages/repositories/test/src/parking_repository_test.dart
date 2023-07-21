import 'package:chopper/chopper.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/src/response.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:models/models.dart';
import 'package:repositories/repositories.dart';
import 'package:services/services.dart';

import '../mocks/mocks.dart';

void main() {
  late Connectivity connectivity;
  late ParkingRepository repository;
  late ParkingService service;

  group('Parking repository group', () {
    setUp(() {
      connectivity = MockConnectivity();
      service = MockParkingService();
      repository = ParkingRepository(connectivity, service);

      when(connectivity.checkConnectivity).thenAnswer((_) async => ConnectivityResult.wifi);
      when(service.getParking).thenAnswer(
        (_) async => Response<ParkingDto>(
          http.Response('', 200),
          testParking,
        ),
      );
      when(() => service.getFreeSlot(parkingId: 'id', size: 'small')).thenAnswer(
        (_) async => Response<TicketDto>(
          http.Response('', 200),
          ticketDto,
        ),
      );
      when(() => service.releaseSlot(slotId: '4', parkingId: 'id')).thenAnswer(
        (_) async => Response<void>(
          http.Response('', 200),
          null,
        ),
      );
    });
    test('Parking Repository is not null', () async {
      expect(repository, isNotNull);
    });

    test('getParkingModel should return ParkingModel when result is success', () async {
      final result = await repository.getParkingModel();

      expect(result.isSuccess, isTrue);
      expect(result.success.id, 'id');
      expect(repository.parkingModel, isNotNull);
    });

    test('getFreeSlot should return TicketModel when result is success', () async {
      await repository.getParkingModel();
      final oldParking = repository.parkingModel;
      final resultTicket = await repository.getFreeSlot(
        SlotType.small,
      );

      expect(resultTicket.isSuccess, isTrue);
      expect(repository.parkingModel == oldParking, isFalse);

      final codeParts = resultTicket.success.code.split('-');
      final floor =
          repository.parkingModel!.floors.firstWhere((element) => element.id == codeParts[0]);
      final slotId = codeParts[1];
      final changedSlot = floor.slots.firstWhere((element) => element.id == slotId);

      expect(changedSlot.isBusy, isTrue);
    });
    test('releaseSlot should change busy slot to false', () async {
      await repository.getParkingModel();
      final resultTicket = await repository.getFreeSlot(
        SlotType.small,
      );
      await repository.releaseSlot(resultTicket.success.code);

      verify(() => service.releaseSlot(slotId: '4', parkingId: 'id'));

      final codeParts = resultTicket.success.code.split('-');
      final floor =
          repository.parkingModel!.floors.firstWhere((element) => element.id == codeParts[0]);
      final slotId = codeParts[1];
      final changedSlot = floor.slots.firstWhere((element) => element.id == slotId);

      expect(changedSlot.isBusy, isFalse);
    });
  });
}
