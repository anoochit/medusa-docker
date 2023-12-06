import 'package:get/get.dart';
import 'package:pos/config.dart';

import '../../controllers/app_controller.dart';
import '../models/draft_order_mark_payment_response.dart';
import '../models/draft_order_request_model.dart';
import '../models/draft_order_response.dart';

class DraftOrderProvider extends GetConnect {
  // create draft order
  Future<DraftOrderResponse?> createDraftOrder(
      {required DraftOrderRequest order}) async {
    final appController = Get.find<AppController>();

    final headers = {
      "Authorization": "Bearer ${appController.token.value}",
      "Content-Type": "application/json"
    };

    final response = await post(
      '$MEDUSA_ADMIN_URL/admin/draft-orders',
      order.toJson(),
      headers: headers,
    );

    return draftOrderResponseFromJson(response.bodyString!);
  }

  // create mark payment
  Future<DraftOrderMarkPaymentResponse> markPayment(
      {required String draftOrderId}) async {
    final appController = Get.find<AppController>();

    final headers = {
      "Authorization": "Bearer ${appController.token.value}",
      "Content-Type": "application/json"
    };

    final response = await post(
      '$MEDUSA_ADMIN_URL/admin/draft-orders/$draftOrderId/pay',
      '',
      headers: headers,
    );

    return draftOrderMarkPaymentResponseFromJson(response.bodyString!);
  }
}
