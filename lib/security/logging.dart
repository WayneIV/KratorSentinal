import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'encryption.dart';

class SecureLogger {
  Database? _db;
  final _encrypt = EncryptionHelper();

  Future<void> init() async {
    final path = join(await getDatabasesPath(), 'logs.db');
    _db = await openDatabase(
      path,
      onCreate: (db, version) async {
        await db.execute('CREATE TABLE logs(id INTEGER PRIMARY KEY, data TEXT)');
      },
      version: 1,
    );
  }

  Future<void> log(String message) async {
    final encrypted = await _encrypt.encrypt(message);
    await _db?.insert('logs', {'data': encrypted});
  }
}
