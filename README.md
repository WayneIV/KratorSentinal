# GuardianAI

GuardianAI is a cross-platform mobile application built with Flutter that helps
protect elderly users from scams, phishing, and malicious phone activity. This
repository also includes a few small Python demos used for early testing.

## Features

- Onboarding flow with consent, PIN setup, and permission management.
- Encrypted local storage using AES‑256 and secure key stores.
- Monitoring engine for SMS, calls and installed apps via platform channels.
- Real‑time alerts through push notifications.
- Accessible UI with large fonts and optional voice guidance.

The Flutter source lives under the `lib/` directory while additional modules are
organized under `core/`, `ui/`, `services/`, `security/`, and `policy/`.

### Python Utilities

- `krator_art.py` prints an ASCII art banner spelling "Krator".
- `regex_match.py` shows a simple regular expression example.

## Building

Install the Flutter SDK then run:

```bash
flutter pub get
flutter run
```

This project is licensed under the GPLv3. See `LICENSE` for details.
