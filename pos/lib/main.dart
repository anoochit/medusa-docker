import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pos/app/bindings/root_binding.dart';
import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();

  runApp(
    GetMaterialApp(
      title: "Medusa POS",
      initialRoute: AppPages.INITIAL,
      initialBinding: RootBinding(),
      getPages: AppPages.routes,
    ),
  );
}
