import 'package:flutter_test/flutter_test.dart';
import '../lib/security/pin_manager.dart';

void main() {
  test('PIN manager stores pin', () async {
    final manager = PinManager();
    await manager.savePin('1234');
    final pin = await manager.getPin();
    expect(pin, '1234');
  });
}
