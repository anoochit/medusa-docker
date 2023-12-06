import 'dart:developer';

import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';

import '../../config.dart';
import '../data/models/admin_auth_token_request_model.dart';
import '../data/models/cart_item_model.dart';
import '../data/models/draft_order_mark_payment_response.dart';
import '../data/models/draft_order_request_model.dart';
import '../data/models/store_product_response_model.dart' as SP;
import '../data/providers/admin_auth_token_provider.dart';
import '../data/providers/draft_order_request_provider.dart';
import '../data/providers/store_product_response_provider.dart';
import '../routes/app_pages.dart';

class AppController extends GetxController {
  RxBool isAuth = false.obs;
  RxString token = ''.obs;
  RxString email = ''.obs;

  RxInt cartTotalItem = 0.obs;
  RxInt cartTotalPrice = 0.obs;

  RxList<CartItem> cart = <CartItem>[].obs;

  Rx<SP.StoreProductResponse> products = SP.StoreProductResponse().obs;

  // sign in
  signIn({required AdminAuthTokenRequest adminAuthTokenRequest}) async {
    try {
      final authResult = await AdminAuthTokenProvider().getAdminAuthToken(
        adminAuthTokenRequest: adminAuthTokenRequest,
      );

      log('${authResult?.accessToken}');

      isAuth.value = true;
      token.value = authResult!.accessToken!;
      email.value = adminAuthTokenRequest.email!;

      await getProducts();

      Get.offAllNamed(Routes.HOME);
    } catch (e) {
      Get.snackbar('Error', '$e');
    }
  }

  // add cart item
  addToCart({required SP.Variant variant}) {
    (cart
            .where(
              (element) => (element.variantId == variant.id),
            )
            .isEmpty)
        ? cart.add(CartItem(
            variantId: variant.id,
            title: variant.product!.title,
            thumbnail: variant.product!.thumbnail,
            unitPrice: variant.prices!.first.amount,
            quantity: 1,
          ))
        : cart
            .firstWhere(
              (element) => (element.variantId == variant.id),
            )
            .quantity++;

    getCartItemsTotal();
    getCartTotalPrice();
  }

  // clear cart
  clearCart() {
    cart.clear();
    getCartItemsTotal();
    getCartTotalPrice();
  }

  // fetch products
  getProducts() async {
    products.value = await StoreProductProvider()
        .getStoreProducts(saleChannelId: SALES_CHANNEL_ID);
    update();
  }

  // search product from barcode
  SP.Variant? searchProductFromBarcode({required String barcode}) {
    final listProduct = products.value.variants;
    final res = listProduct!
        .firstWhereOrNull((element) => (element.barcode == barcode));

    return res;
  }

  // get cart total items
  getCartItemsTotal() {
    cartTotalItem.value = (cart.isEmpty)
        ? 0
        : cart
            .map((element) => element.quantity)
            .reduce((value, element) => (value + element));

    update();
  }

  // get cart total price
  getCartTotalPrice() {
    cartTotalPrice.value = (cart.isEmpty)
        ? 0
        : cart
            .map((element) => (element.unitPrice! * element.quantity))
            .reduce((value, element) => (value + element));

    update();
  }

  // scan barcode
  scanBarcode() async {
    // scan barcode
    String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
      '#FF0000',
      'Cancel',
      false,
      ScanMode.DEFAULT,
    );

    log(barcodeScanRes);

    // search product
    final variant = searchProductFromBarcode(
      barcode: barcodeScanRes,
    );

    // found product add to cart
    if (variant != null) {
      // show snack bar
      Get.snackbar(
        'Added',
        '${variant.product!.title}',
        duration: const Duration(seconds: 2),
      );

      // update shopping cart
      log('${variant.product!.title}');

      addToCart(variant: variant);
    }
  }

  // create draft order
  Future<DraftOrderMarkPaymentResponse> createDraftOrder() async {
    List<Items> items = [];

    // create list item
    for (var item in cart) {
      items.add(
        Items(
          variantId: item.variantId,
          quantity: item.quantity,
          unitPrice: item.unitPrice,
        ),
      );
    }

    // build request body
    final draftOrderRequest = DraftOrderRequest(
      email: email.value,
      regionId: REGION_ID,
      items: items,
      shippingMethods: [
        ShippingMethods(
          optionId: SHIPPING_OPTION_ID,
        ),
      ],
    );

    log('${draftOrderRequest.toJson()}');

    // request create draft order
    final draftOrder = await DraftOrderProvider().createDraftOrder(
      order: draftOrderRequest,
    );

    log('draft order id = ${draftOrder!.draftOrder!.id}');

    // mark payment
    final order = await draftOrderMarkPayment(
      draftOrderId: draftOrder.draftOrder!.id!,
    );

    log('order id = ${order.order!.id}');

    return order;
  }

  Future<DraftOrderMarkPaymentResponse> draftOrderMarkPayment(
      {required String draftOrderId}) async {
    return await DraftOrderProvider().markPayment(
      draftOrderId: draftOrderId,
    );
  }
}
