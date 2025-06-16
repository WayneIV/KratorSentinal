import 'package:flutter/services.dart';

class CallMonitor {
  static const _channel = MethodChannel('guardian_ai/call');

  Future<void> start() async {
    await _channel.invokeMethod('start');
  }

  Stream<String> get onIncomingCall =>
      EventChannel('guardian_ai/call_events').receiveBroadcastStream().map((e) => e as String);
}
