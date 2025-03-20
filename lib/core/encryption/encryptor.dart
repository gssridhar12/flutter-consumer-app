import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:encrypt/encrypt.dart' as encrypt;

class Encryptor {
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();
  static const String encryptionKeyKey = 'encryptionKey';

  Future<String> _getEncryptionKey() async {
    final encryptionKey = await _secureStorage.read(key: encryptionKeyKey);

    if (encryptionKey == null) {
      final key = encrypt.Key.fromSecureRandom(32);
      final newKey = key.base64;
      await _secureStorage.write(key: encryptionKeyKey, value: newKey);
      return newKey;
    }

    return encryptionKey;
  }

  Future<String> encryptData(String plainText) async {
    final encryptionKey = await _getEncryptionKey();
    final key = encrypt.Key.fromBase64(encryptionKey);
    final iv = encrypt.IV.fromLength(16);
    final encrypter = encrypt.Encrypter(encrypt.AES(key));
    final encrypted = encrypter.encrypt(plainText, iv: iv);
    return encrypted.base64;
  }

  Future<String> decryptData(String encryptedText) async {
    final encryptionKey = await _getEncryptionKey();
    final key = encrypt.Key.fromBase64(encryptionKey);
    final iv = encrypt.IV.fromLength(16);
    final encrypter = encrypt.Encrypter(encrypt.AES(key));
    final decrypted = encrypter.decrypt64(encryptedText, iv: iv);
    return decrypted;
  }
}
