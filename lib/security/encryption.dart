import 'dart:typed_data';
import 'package:encrypt/encrypt.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class EncryptionHelper {
  static const _keyStorage = FlutterSecureStorage();
  static const _keyName = 'aes_key';

  Future<Encrypter> _getEncrypter() async {
    var keyStr = await _keyStorage.read(key: _keyName);
    if (keyStr == null) {
      final key = Key.fromSecureRandom(32);
      await _keyStorage.write(key: _keyName, value: key.base64);
      return Encrypter(AES(key));
    }
    return Encrypter(AES(Key.fromBase64(keyStr)));
  }

  Future<String> encrypt(String text) async {
    final encrypter = await _getEncrypter();
    final iv = IV.fromSecureRandom(16);
    final encrypted = encrypter.encrypt(text, iv: iv);
    return iv.base64 + encrypted.base64;
  }

  Future<String> decrypt(String data) async {
    final encrypter = await _getEncrypter();
    final iv = IV.fromBase64(data.substring(0, 24));
    final encrypted = Encrypted.fromBase64(data.substring(24));
    return encrypter.decrypt(encrypted, iv: iv);
  }
}
