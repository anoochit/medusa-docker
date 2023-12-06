// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CartItem {
  String? variantId;
  String? thumbnail;
  String? title;
  int quantity;
  int? unitPrice;
  CartItem({
    this.variantId,
    this.thumbnail,
    this.title,
    required this.quantity,
    this.unitPrice,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'variantId': variantId,
      'thumbnail': thumbnail,
      'title': title,
      'quantity': quantity,
      'unitPrice': unitPrice,
    };
  }

  factory CartItem.fromMap(Map<String, dynamic> map) {
    return CartItem(
      variantId: map['variantId'] != null ? map['variantId'] as String : null,
      thumbnail: map['thumbnail'] != null ? map['thumbnail'] as String : null,
      title: map['title'] != null ? map['title'] as String : null,
      quantity: map['quantity'] as int,
      unitPrice: map['unitPrice'] != null ? map['unitPrice'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CartItem.fromJson(String source) =>
      CartItem.fromMap(json.decode(source) as Map<String, dynamic>);
}
