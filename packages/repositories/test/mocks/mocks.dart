import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:mocktail/mocktail.dart';
import 'package:services/services.dart';

part 'mocks_data.dart';

class MockConnectivity extends Mock implements Connectivity {}

class MockParkingService extends Mock implements ParkingService {}
