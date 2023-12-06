import 'dart:io';

import 'package:get/get.dart';
import 'package:pos/config.dart';

import '../models/admin_auth_token_request_model.dart';
import '../models/admin_auth_token_response_model.dart';

class AdminAuthTokenProvider extends GetConnect {
  // get admin auth token
  Future<AdminAuthTokenResponse?> getAdminAuthToken(
      {required AdminAuthTokenRequest adminAuthTokenRequest}) async {
    final headers = {"Content-Type": "application/json"};
    final body = adminAuthTokenRequest.toJson();
    final response = await post('$MEDUSA_ADMIN_URL/admin/auth/token', body,
        headers: headers);

    if (response.status.code == HttpStatus.ok) {
      return AdminAuthTokenResponse(accessToken: response.body['access_token']);
    } else {
      throw '${response.statusText}';
    }
  }
}
