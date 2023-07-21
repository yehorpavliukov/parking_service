import 'package:flutter_test/flutter_test.dart';
import 'package:services/services.dart';

void main() {
  group('FakeParkingService Tests', () {
    late FakeParkingService fakeParkingService;

    setUp(() {
      fakeParkingService = FakeParkingService();
    });

    test('getParking should return a valid ParkingDto', () async {
      final response = await fakeParkingService.getParking();

      expect(response.statusCode, 200);

      expect(response.body, isNotNull);

      expect(response.body?.id, isNotNull);
      expect(response.body?.floors, isNotEmpty);
    });

    test('getFreeSlot should return a valid TicketDto', () async {
      final response = await fakeParkingService.getFreeSlot(parkingId: 'id', size: 'small');

      expect(response.statusCode, 200);

      expect(response.body, isNotNull);

      expect(response.body?.slot, isNotNull);
    });

    test('releaseSlot should return a status code of 200', () async {
      final response = await fakeParkingService.releaseSlot(parkingId: 'id', slotId: '1');

      expect(response.statusCode, 200);
    });
  });
}
