import 'package:flutter_test/flutter_test.dart';
import 'package:shared/shared.dart';

void main() {
  test('app manager return false when Flavor is prod', () async {
    final app = AppManager(Flavor.prod);
    expect(app.isDev, isFalse);
  });
}
