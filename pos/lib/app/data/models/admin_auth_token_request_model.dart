class AdminAuthTokenRequest {
  String? email;
  String? password;

  AdminAuthTokenRequest({this.email, this.password});

  AdminAuthTokenRequest.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;
    return data;
  }
}
