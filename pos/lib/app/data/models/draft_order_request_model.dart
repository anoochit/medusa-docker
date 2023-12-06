class DraftOrderRequest {
  String? email;
  String? regionId;
  List<Items>? items;
  List<ShippingMethods>? shippingMethods;

  DraftOrderRequest(
      {this.email, this.regionId, this.items, this.shippingMethods});

  DraftOrderRequest.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    regionId = json['region_id'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
    if (json['shipping_methods'] != null) {
      shippingMethods = <ShippingMethods>[];
      json['shipping_methods'].forEach((v) {
        shippingMethods?.add(ShippingMethods.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['email'] = email;
    data['region_id'] = regionId;
    if (items != null) {
      data['items'] = items?.map((v) => v.toJson()).toList();
    }
    if (shippingMethods != null) {
      data['shipping_methods'] =
          shippingMethods?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  String? variantId;
  int? quantity;
  int? unitPrice;

  Items({this.variantId, this.quantity, this.unitPrice});

  Items.fromJson(Map<String, dynamic> json) {
    variantId = json['variant_id'];
    quantity = json['quantity'];
    unitPrice = json['unit_price'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['variant_id'] = variantId;
    data['quantity'] = quantity;
    data['unit_price'] = unitPrice;
    return data;
  }
}

class ShippingMethods {
  String? optionId;

  ShippingMethods({this.optionId});

  ShippingMethods.fromJson(Map<String, dynamic> json) {
    optionId = json['option_id'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['option_id'] = optionId;
    return data;
  }
}
