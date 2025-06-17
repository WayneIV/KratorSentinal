import 'package:flutter/material.dart';
import '../../security/pin_manager.dart';

class ConsentScreen extends StatelessWidget {
  const ConsentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GuardianAI Consent')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'GuardianAI monitors messages and calls to protect you from scams. '
              'By continuing, you consent to this monitoring and our privacy policy.',
              style: TextStyle(fontSize: 18),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const PinSetupScreen()),
                );
              },
              child: const Text('Agree and Continue'),
            )
          ],
        ),
      ),
    );
  }
}
