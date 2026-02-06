import 'package:hive/hive.dart';

class HiveHelper{
  static const String _boxName = 'userBox';

  static Future<void> saveData(String key, dynamic value) async {
    var box = Hive.box(_boxName);
    await box.put(key, value);
  }

  static dynamic getData(String key, {dynamic defaultValue}) async {
    var box = Hive.box(_boxName);
    return box.get(key, defaultValue: defaultValue);
  }

  static Future<void> deleteData(String key) async {
    var box = Hive.box(_boxName);
    await box.delete(key);
  }

  static Future<void> clearAll() async {
    var box = Hive.box(_boxName);
    await box.clear();
  }
}
