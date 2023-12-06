import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pos/app/controllers/app_controller.dart';
import 'package:pos/app/widgets/views/action_button_tonal_view.dart';

import '../../../routes/app_pages.dart';

class CartView extends GetView<AppController> {
  const CartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => controller.scanBarcode(),
            icon: Icon(Icons.qr_code_scanner),
          )
        ],
      ),
      body: GetBuilder<AppController>(builder: (controller) {
        return ListView.builder(
          itemCount: controller.cart.length,
          itemBuilder: (BuildContext context, int index) {
            final item = controller.cart[index];
            final price = (item.unitPrice! * item.quantity) / 100;
            return ListTile(
              leading: Image.network(item.thumbnail!),
              title: Text('${item.title}'),
              subtitle: Text('X ${item.quantity}'),
              trailing: Text('$price'),
            );
          },
        );
      }),
      bottomNavigationBar: ActionButtonTonalView(
        icon: Icons.shopping_cart_checkout,
        onTap: () => Get.toNamed(Routes.CHECKOUT),
        title: 'Checkout (THB ${controller.cartTotalPrice / 100})',
      ),
    );
  }
}
