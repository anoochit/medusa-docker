import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pos/app/controllers/app_controller.dart';

import '../../../routes/app_pages.dart';

class CheckoutView extends GetView<AppController> {
  const CheckoutView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.payment_outlined),
            title: const Text('Credit Card'),
            onTap: () {
              // create order
            },
          ),
          ListTile(
            leading: const Icon(Icons.qr_code_2),
            title: const Text('Thai ORCode'),
            onTap: () {
              // create order
            },
          ),
          ListTile(
            leading: const Icon(Icons.money_outlined),
            title: const Text('Cash'),
            onTap: () async {
              // create order
              final order = await controller.createDraftOrder();

              Get.snackbar('Order', '${order.order?.id} ');

              controller.clearCart();
              Get.offAllNamed(Routes.HOME);
            },
          ),
        ],
      ),
    );
  }
}
