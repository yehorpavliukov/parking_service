import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';
import 'package:repositories/repositories.dart';

part 'parking_bloc.freezed.dart';

@freezed
class ParkingEvent with _$ParkingEvent {
  const factory ParkingEvent.initialize() = _InitiateParkingEvent;

  const factory ParkingEvent.tookFreeSlot(SlotType size) = _TookFreeSlotParkingEvent;

  const factory ParkingEvent.releaseSlot(String ticketCode) = _ReleaseTicketSlotParkingEvent;
}

@freezed
class ParkingState with _$ParkingState {
  const factory ParkingState.isBusy() = _BusyParkingState;

  const factory ParkingState.data(ParkingModel model) = _DataParkingState;

  const factory ParkingState.error() = _ErrorParkingState;
}

class ParkingBloc extends Bloc<ParkingEvent, ParkingState> {
  final ParkingRepository _repository;

  ParkingBloc(this._repository) : super(const ParkingState.isBusy()) {
    on<_InitiateParkingEvent>(_onInitiate);
    on<_TookFreeSlotParkingEvent>(_onTookFreeSlot);
    on<_ReleaseTicketSlotParkingEvent>(_onReleaseSlot);
  }

  Future<void> _onInitiate(
    _InitiateParkingEvent event,
    Emitter<ParkingState> emit,
  ) async {
    final result = await _repository.getParkingModel();
    result.map(
      success: (data) {
        emit(ParkingState.data(data.success));
      },
      failure: (_) {
        emit(const ParkingState.error());
      },
    );
  }

  Future<void> _onTookFreeSlot(
    _TookFreeSlotParkingEvent event,
    Emitter<ParkingState> emit,
  ) async {
    final result = await _repository.getFreeSlot(event.size);
    result.map(
      success: (_) {
        final model = _repository.parkingModel;
        if (model != null) {
          emit(ParkingState.data(model));
        } else {
          emit(const ParkingState.error());
        }
      },
      failure: (_) {
        emit(const ParkingState.error());
      },
    );
  }

  Future<void> _onReleaseSlot(
    _ReleaseTicketSlotParkingEvent event,
    Emitter<ParkingState> emit,
  ) async {
    final result = await _repository.releaseSlot(event.ticketCode);
    result.map(
      success: (_) {
        final model = _repository.parkingModel;
        if (model != null) {
          emit(ParkingState.data(model));
        } else {
          emit(const ParkingState.error());
        }
      },
      failure: (_) {
        emit(const ParkingState.error());
      },
    );
  }
}
