import 'package:get_storage/get_storage.dart';

class ELocalStorage {
  static final ELocalStorage _instance = ELocalStorage._internal();

  factory ELocalStorage() {
    return _instance;
  }

  ELocalStorage._internal();

  final _storage = GetStorage();

  //Generic method to save the data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  //Generic method to read data
  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  //generic method to delete data
  Future<void> deleteData(String key) async {
    await _storage.remove(key);
  }

  //clear all data in the storage
  Future<void> clearStorage() async {
    await _storage.erase();
  }
}
