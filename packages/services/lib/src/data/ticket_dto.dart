import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_dto.g.dart';
part 'ticket_dto.freezed.dart';

@freezed
class TicketDto with _$TicketDto {
  const factory TicketDto({
    required String slot,
  }) = _TicketDto;

  factory TicketDto.fromJson(Map<String, dynamic> json) => _$TicketDtoFromJson(json);
}
