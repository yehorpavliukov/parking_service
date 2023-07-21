import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:models/models.dart';
import 'package:parking_service_manager/presentation/bloc/parking_bloc.dart';
import 'package:repositories/repositories.dart';

import '../../mocks/mock.dart';

class MockParkingRepository extends Mock implements ParkingRepository {}

void main() {
  group('ParkingBloc Tests', () {
    late ParkingBloc parkingBloc;
    late MockParkingRepository mockRepository;

    setUp(() {
      mockRepository = MockParkingRepository();
      parkingBloc = ParkingBloc(mockRepository);
    });

    test('Initial state should be isBusy', () {
      expect(parkingBloc.state, equals(const ParkingState.isBusy()));
    });

    test('Emits data state when _InitiateParkingEvent is added and repository returns success',
        () async {
      when(() => mockRepository.getParkingModel())
          .thenAnswer((_) async => const ApiResult.success(testParking));

      parkingBloc.add(const ParkingEvent.initialize());
      await expectLater(parkingBloc.stream, emits(const ParkingState.data(testParking)));
    });

    test('Emits error state when _InitiateParkingEvent is added and repository returns failure',
        () async {
      when(() => mockRepository.getParkingModel()).thenAnswer(
        (_) async => const ApiResult.failure(
          FailureResult(
            reason: FailureReasons.unknown,
            debugMessage: '',
          ),
        ),
      );

      parkingBloc.add(const ParkingEvent.initialize());
      await expectLater(parkingBloc.stream, emits(const ParkingState.error()));
    });

    test('Emits error state when _TookFreeSlotParkingEvent is added and repository returns failure',
        () async {
      when(() => mockRepository.getFreeSlot(SlotType.small)).thenAnswer(
        (_) async => const ApiResult.failure(
          FailureResult(
            reason: FailureReasons.unknown,
            debugMessage: '',
          ),
        ),
      );

      parkingBloc.add(const ParkingEvent.tookFreeSlot(SlotType.small));
      await expectLater(parkingBloc.stream, emits(const ParkingState.error()));
    });

    tearDown(() {
      parkingBloc.close();
    });
  });
}
