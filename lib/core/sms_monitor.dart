import 'package:flutter/services.dart';

class SmsMonitor {
  static const _channel = MethodChannel('guardian_ai/sms');

  Future<void> start() async {
    await _channel.invokeMethod('start');
  }

  Stream<String> get onMessage =>
      EventChannel('guardian_ai/sms_events').receiveBroadcastStream().map((e) => e as String);
}
