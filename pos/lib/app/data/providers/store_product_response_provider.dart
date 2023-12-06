import 'package:get/get.dart';
import 'package:pos/config.dart';

import '../models/store_product_response_model.dart';

class StoreProductProvider extends GetConnect {
  // get store products
  Future<StoreProductResponse> getStoreProducts(
      {required String saleChannelId}) async {
    try {
      final response = await get(
          '$MEDUSA_ADMIN_URL/store/variants?sales_channel_id=$saleChannelId');

      return storeProductResponseFromJson('${response.bodyString}');
    } catch (e) {
      throw '${e}';
    }
  }
}
