import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'ui/onboarding/consent_screen.dart';
import 'security/pin_manager.dart';

void main() {
  runApp(const GuardianApp());
}

class GuardianApp extends StatelessWidget {
  const GuardianApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GuardianAI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const ConsentScreen(),
    );
  }
}
