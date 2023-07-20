import 'package:chopper/chopper.dart';
import 'package:services/services.dart';

part 'parking_service.chopper.dart';

@ChopperApi()
abstract class ParkingService extends ChopperService {
  static ParkingService create(ChopperClient? client) => _$ParkingService(client);

  @Get(path: '/')
  Future<Response<ParkingDto>> getParking();

  @Get(path: 'getslot/{parkingId}/{size}')
  Future<Response<TicketDto>> getFreeSlot({
    @Path('parkingId') required String parkingId,
    @Path('size') required String size,
  });

  @Get(path: 'releaseslot/{parkingId}/{slotId}')
  Future<Response<void>> releaseSlot({
    @Path('parkingId') required String parkingId,
    @Path('slotId') required String slotId,
  });
}
