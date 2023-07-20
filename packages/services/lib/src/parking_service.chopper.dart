// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parking_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ParkingService extends ParkingService {
  _$ParkingService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ParkingService;

  @override
  Future<Response<ParkingDto>> getParking() {
    final Uri $url = Uri.parse('/');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ParkingDto, ParkingDto>($request);
  }

  @override
  Future<Response<TicketDto>> getFreeSlot({
    required String parkingId,
    required String size,
  }) {
    final Uri $url = Uri.parse('getslot/${parkingId}/${size}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<TicketDto, TicketDto>($request);
  }

  @override
  Future<Response<void>> releaseSlot({
    required String parkingId,
    required String slotId,
  }) {
    final Uri $url = Uri.parse('releaseslot/${parkingId}/${slotId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<void, void>($request);
  }
}
