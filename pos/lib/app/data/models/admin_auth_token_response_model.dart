class AdminAuthTokenResponse {
  String? accessToken;

  AdminAuthTokenResponse({this.accessToken});

  AdminAuthTokenResponse.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['access_token'] = accessToken;
    return data;
  }
}
