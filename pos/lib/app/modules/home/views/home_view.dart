import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

import '../../../controllers/app_controller.dart';
import '../../../routes/app_pages.dart';
import '../../../widgets/views/action_button_tonal_view.dart';
import '../../../widgets/views/action_button_view.dart';
import '../../../widgets/views/brand_logo_view.dart';

class HomeView extends GetView<AppController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const BrandLogoView(),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Obx(
                () => ActionButtonTonalView(
                  icon: Icons.shopping_cart_outlined,
                  onTap: () {
                    if (controller.cartTotalItem.value > 0) {
                      Get.toNamed(Routes.CART);
                    }
                  },
                  title: 'Shoppping Cart (${controller.cartTotalItem.value})',
                ),
              ),
              const Gap(32.0),
              ActionButtonView(
                icon: Icons.qr_code_scanner,
                title: 'Scan Barcode',
                onTap: () => controller.scanBarcode(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
