import 'package:chopper/chopper.dart';
import 'package:services/services.dart';

part 'parking_service.chopper.dart';

@ChopperApi()
abstract class ParkingService extends ChopperService implements IParkingService {
  static ParkingService create(ChopperClient? client) => _$ParkingService(client);

  @override
  @Get(path: '/')
  Future<Response<ParkingDto>> getParking();

  @override
  @Get(path: 'getslot/{parkingId}/{size}')
  Future<Response<TicketDto>> getFreeSlot({
    @Path('parkingId') required String parkingId,
    @Path('size') required String size,
  });

  @override
  @Get(path: 'releaseslot/{parkingId}/{slotId}')
  Future<Response<void>> releaseSlot({
    @Path('parkingId') required String parkingId,
    @Path('slotId') required String slotId,
  });
}
