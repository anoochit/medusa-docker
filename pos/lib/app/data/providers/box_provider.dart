import 'package:get_storage/get_storage.dart';

class BoxProvider {
  late GetStorage box;

  BoxProvider() {
    box = GetStorage();
  }

  String? getBox({required String key}) {
    return box.read<String>(key);
  }

  Future<void> setBox({required String key, required String value}) async {
    return await box.write(key, value);
  }
}
