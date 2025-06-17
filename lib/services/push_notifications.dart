import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationService {
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;

  Future<void> initialize() async {
    await _messaging.requestPermission();
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      // Handle foreground messages
    });
  }
}
