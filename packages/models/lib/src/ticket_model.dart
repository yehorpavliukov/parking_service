import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_model.freezed.dart';

@freezed
class TicketModel with _$TicketModel {
  const factory TicketModel({
    required String code,
  }) = _TicketModel;
}
