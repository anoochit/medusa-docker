import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/app/controllers/app_controller.dart';

import '../routes/app_pages.dart';

class RouteGuard extends GetMiddleware {
  //

    @override
  RouteSettings? redirect(String? route) {
    AppController appController = Get.put(AppController());

    if (appController.isAuth.value) {
      return null;
    } else {
      return RouteSettings(name: Routes.SIGNIN);
    }
  }
}