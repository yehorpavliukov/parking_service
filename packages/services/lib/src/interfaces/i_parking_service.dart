import 'package:chopper/chopper.dart';
import 'package:services/services.dart';

abstract class IParkingService {
  Future<Response<ParkingDto>> getParking();

  Future<Response<TicketDto>> getFreeSlot({
    required String parkingId,
    required String size,
  });

  Future<Response<void>> releaseSlot({
    required String parkingId,
    required String slotId,
  });
}
