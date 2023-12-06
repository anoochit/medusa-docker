// To parse this JSON data, do
//
//     final draftOrderMarkPaymentResponse = draftOrderMarkPaymentResponseFromJson(jsonString);

import 'dart:convert';

DraftOrderMarkPaymentResponse draftOrderMarkPaymentResponseFromJson(
        String str) =>
    DraftOrderMarkPaymentResponse.fromJson(json.decode(str));

String draftOrderMarkPaymentResponseToJson(
        DraftOrderMarkPaymentResponse data) =>
    json.encode(data.toJson());

class DraftOrderMarkPaymentResponse {
  Order? order;

  DraftOrderMarkPaymentResponse({
    this.order,
  });

  factory DraftOrderMarkPaymentResponse.fromJson(Map<String, dynamic> json) =>
      DraftOrderMarkPaymentResponse(
        order: json["order"] == null ? null : Order.fromJson(json["order"]),
      );

  Map<String, dynamic> toJson() => {
        "order": order?.toJson(),
      };
}

class Order {
  String? object;
  String? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? status;
  String? fulfillmentStatus;
  String? paymentStatus;
  int? displayId;
  String? cartId;
  String? customerId;
  String? email;
  String? regionId;
  String? currencyCode;
  dynamic taxRate;
  String? draftOrderId;
  dynamic canceledAt;
  MetadataClass? metadata;
  dynamic noNotification;
  dynamic billingAddress;
  List<dynamic>? claims;
  Customer? customer;
  List<dynamic>? discounts;
  List<dynamic>? fulfillments;
  List<dynamic>? giftCardTransactions;
  List<dynamic>? giftCards;
  List<Item>? items;
  List<Payment>? payments;
  List<dynamic>? refunds;
  Region? region;
  List<dynamic>? returns;
  ShippingAddress? shippingAddress;
  List<ShippingMethod>? shippingMethods;
  List<dynamic>? swaps;
  int? subtotal;
  int? discountTotal;
  int? shippingTotal;
  int? refundedTotal;
  int? paidTotal;
  int? refundableAmount;
  int? itemTaxTotal;
  int? shippingTaxTotal;
  int? taxTotal;
  int? giftCardTotal;
  int? giftCardTaxTotal;
  int? total;

  Order({
    this.object,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.status,
    this.fulfillmentStatus,
    this.paymentStatus,
    this.displayId,
    this.cartId,
    this.customerId,
    this.email,
    this.regionId,
    this.currencyCode,
    this.taxRate,
    this.draftOrderId,
    this.canceledAt,
    this.metadata,
    this.noNotification,
    this.billingAddress,
    this.claims,
    this.customer,
    this.discounts,
    this.fulfillments,
    this.giftCardTransactions,
    this.giftCards,
    this.items,
    this.payments,
    this.refunds,
    this.region,
    this.returns,
    this.shippingAddress,
    this.shippingMethods,
    this.swaps,
    this.subtotal,
    this.discountTotal,
    this.shippingTotal,
    this.refundedTotal,
    this.paidTotal,
    this.refundableAmount,
    this.itemTaxTotal,
    this.shippingTaxTotal,
    this.taxTotal,
    this.giftCardTotal,
    this.giftCardTaxTotal,
    this.total,
  });

  factory Order.fromJson(Map<String, dynamic> json) => Order(
        object: json["object"],
        id: json["id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        status: json["status"],
        fulfillmentStatus: json["fulfillment_status"],
        paymentStatus: json["payment_status"],
        displayId: json["display_id"],
        cartId: json["cart_id"],
        customerId: json["customer_id"],
        email: json["email"],
        regionId: json["region_id"],
        currencyCode: json["currency_code"],
        taxRate: json["tax_rate"],
        draftOrderId: json["draft_order_id"],
        canceledAt: json["canceled_at"],
        metadata: json["metadata"] == null
            ? null
            : MetadataClass.fromJson(json["metadata"]),
        noNotification: json["no_notification"],
        billingAddress: json["billing_address"],
        claims: json["claims"] == null
            ? []
            : List<dynamic>.from(json["claims"]!.map((x) => x)),
        customer: json["customer"] == null
            ? null
            : Customer.fromJson(json["customer"]),
        discounts: json["discounts"] == null
            ? []
            : List<dynamic>.from(json["discounts"]!.map((x) => x)),
        fulfillments: json["fulfillments"] == null
            ? []
            : List<dynamic>.from(json["fulfillments"]!.map((x) => x)),
        giftCardTransactions: json["gift_card_transactions"] == null
            ? []
            : List<dynamic>.from(json["gift_card_transactions"]!.map((x) => x)),
        giftCards: json["gift_cards"] == null
            ? []
            : List<dynamic>.from(json["gift_cards"]!.map((x) => x)),
        items: json["items"] == null
            ? []
            : List<Item>.from(json["items"]!.map((x) => Item.fromJson(x))),
        payments: json["payments"] == null
            ? []
            : List<Payment>.from(
                json["payments"]!.map((x) => Payment.fromJson(x))),
        refunds: json["refunds"] == null
            ? []
            : List<dynamic>.from(json["refunds"]!.map((x) => x)),
        region: json["region"] == null ? null : Region.fromJson(json["region"]),
        returns: json["returns"] == null
            ? []
            : List<dynamic>.from(json["returns"]!.map((x) => x)),
        shippingAddress: json["shipping_address"] == null
            ? null
            : ShippingAddress.fromJson(json["shipping_address"]),
        shippingMethods: json["shipping_methods"] == null
            ? []
            : List<ShippingMethod>.from(json["shipping_methods"]!
                .map((x) => ShippingMethod.fromJson(x))),
        swaps: json["swaps"] == null
            ? []
            : List<dynamic>.from(json["swaps"]!.map((x) => x)),
        subtotal: json["subtotal"],
        discountTotal: json["discount_total"],
        shippingTotal: json["shipping_total"],
        refundedTotal: json["refunded_total"],
        paidTotal: json["paid_total"],
        refundableAmount: json["refundable_amount"],
        itemTaxTotal: json["item_tax_total"],
        shippingTaxTotal: json["shipping_tax_total"],
        taxTotal: json["tax_total"],
        giftCardTotal: json["gift_card_total"],
        giftCardTaxTotal: json["gift_card_tax_total"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "object": object,
        "id": id,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "status": status,
        "fulfillment_status": fulfillmentStatus,
        "payment_status": paymentStatus,
        "display_id": displayId,
        "cart_id": cartId,
        "customer_id": customerId,
        "email": email,
        "region_id": regionId,
        "currency_code": currencyCode,
        "tax_rate": taxRate,
        "draft_order_id": draftOrderId,
        "canceled_at": canceledAt,
        "metadata": metadata?.toJson(),
        "no_notification": noNotification,
        "billing_address": billingAddress,
        "claims":
            claims == null ? [] : List<dynamic>.from(claims!.map((x) => x)),
        "customer": customer?.toJson(),
        "discounts": discounts == null
            ? []
            : List<dynamic>.from(discounts!.map((x) => x)),
        "fulfillments": fulfillments == null
            ? []
            : List<dynamic>.from(fulfillments!.map((x) => x)),
        "gift_card_transactions": giftCardTransactions == null
            ? []
            : List<dynamic>.from(giftCardTransactions!.map((x) => x)),
        "gift_cards": giftCards == null
            ? []
            : List<dynamic>.from(giftCards!.map((x) => x)),
        "items": items == null
            ? []
            : List<dynamic>.from(items!.map((x) => x.toJson())),
        "payments": payments == null
            ? []
            : List<dynamic>.from(payments!.map((x) => x.toJson())),
        "refunds":
            refunds == null ? [] : List<dynamic>.from(refunds!.map((x) => x)),
        "region": region?.toJson(),
        "returns":
            returns == null ? [] : List<dynamic>.from(returns!.map((x) => x)),
        "shipping_address": shippingAddress?.toJson(),
        "shipping_methods": shippingMethods == null
            ? []
            : List<dynamic>.from(shippingMethods!.map((x) => x.toJson())),
        "swaps": swaps == null ? [] : List<dynamic>.from(swaps!.map((x) => x)),
        "subtotal": subtotal,
        "discount_total": discountTotal,
        "shipping_total": shippingTotal,
        "refunded_total": refundedTotal,
        "paid_total": paidTotal,
        "refundable_amount": refundableAmount,
        "item_tax_total": itemTaxTotal,
        "shipping_tax_total": shippingTaxTotal,
        "tax_total": taxTotal,
        "gift_card_total": giftCardTotal,
        "gift_card_tax_total": giftCardTaxTotal,
        "total": total,
      };
}

class Customer {
  String? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  String? email;
  dynamic firstName;
  dynamic lastName;
  dynamic billingAddressId;
  dynamic phone;
  bool? hasAccount;
  dynamic metadata;

  Customer({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.email,
    this.firstName,
    this.lastName,
    this.billingAddressId,
    this.phone,
    this.hasAccount,
    this.metadata,
  });

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
        id: json["id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        billingAddressId: json["billing_address_id"],
        phone: json["phone"],
        hasAccount: json["has_account"],
        metadata: json["metadata"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "billing_address_id": billingAddressId,
        "phone": phone,
        "has_account": hasAccount,
        "metadata": metadata,
      };
}

class Item {
  String? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? cartId;
  String? orderId;
  dynamic swapId;
  dynamic claimOrderId;
  dynamic originalItemId;
  dynamic orderEditId;
  String? title;
  String? description;
  String? thumbnail;
  bool? isReturn;
  bool? isGiftcard;
  bool? shouldMerge;
  bool? allowDiscounts;
  bool? hasShipping;
  int? unitPrice;
  String? variantId;
  int? quantity;
  dynamic fulfilledQuantity;
  dynamic returnedQuantity;
  dynamic shippedQuantity;
  MetadataClass? metadata;
  List<dynamic>? adjustments;
  List<TaxLine>? taxLines;
  Variant? variant;
  int? refundable;
  int? subtotal;
  int? discountTotal;
  int? total;
  int? originalTotal;
  int? originalTaxTotal;
  int? taxTotal;

  Item({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.cartId,
    this.orderId,
    this.swapId,
    this.claimOrderId,
    this.originalItemId,
    this.orderEditId,
    this.title,
    this.description,
    this.thumbnail,
    this.isReturn,
    this.isGiftcard,
    this.shouldMerge,
    this.allowDiscounts,
    this.hasShipping,
    this.unitPrice,
    this.variantId,
    this.quantity,
    this.fulfilledQuantity,
    this.returnedQuantity,
    this.shippedQuantity,
    this.metadata,
    this.adjustments,
    this.taxLines,
    this.variant,
    this.refundable,
    this.subtotal,
    this.discountTotal,
    this.total,
    this.originalTotal,
    this.originalTaxTotal,
    this.taxTotal,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        cartId: json["cart_id"],
        orderId: json["order_id"],
        swapId: json["swap_id"],
        claimOrderId: json["claim_order_id"],
        originalItemId: json["original_item_id"],
        orderEditId: json["order_edit_id"],
        title: json["title"],
        description: json["description"],
        thumbnail: json["thumbnail"],
        isReturn: json["is_return"],
        isGiftcard: json["is_giftcard"],
        shouldMerge: json["should_merge"],
        allowDiscounts: json["allow_discounts"],
        hasShipping: json["has_shipping"],
        unitPrice: json["unit_price"],
        variantId: json["variant_id"],
        quantity: json["quantity"],
        fulfilledQuantity: json["fulfilled_quantity"],
        returnedQuantity: json["returned_quantity"],
        shippedQuantity: json["shipped_quantity"],
        metadata: json["metadata"] == null
            ? null
            : MetadataClass.fromJson(json["metadata"]),
        adjustments: json["adjustments"] == null
            ? []
            : List<dynamic>.from(json["adjustments"]!.map((x) => x)),
        taxLines: json["tax_lines"] == null
            ? []
            : List<TaxLine>.from(
                json["tax_lines"]!.map((x) => TaxLine.fromJson(x))),
        variant:
            json["variant"] == null ? null : Variant.fromJson(json["variant"]),
        refundable: json["refundable"],
        subtotal: json["subtotal"],
        discountTotal: json["discount_total"],
        total: json["total"],
        originalTotal: json["original_total"],
        originalTaxTotal: json["original_tax_total"],
        taxTotal: json["tax_total"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "cart_id": cartId,
        "order_id": orderId,
        "swap_id": swapId,
        "claim_order_id": claimOrderId,
        "original_item_id": originalItemId,
        "order_edit_id": orderEditId,
        "title": title,
        "description": description,
        "thumbnail": thumbnail,
        "is_return": isReturn,
        "is_giftcard": isGiftcard,
        "should_merge": shouldMerge,
        "allow_discounts": allowDiscounts,
        "has_shipping": hasShipping,
        "unit_price": unitPrice,
        "variant_id": variantId,
        "quantity": quantity,
        "fulfilled_quantity": fulfilledQuantity,
        "returned_quantity": returnedQuantity,
        "shipped_quantity": shippedQuantity,
        "metadata": metadata?.toJson(),
        "adjustments": adjustments == null
            ? []
            : List<dynamic>.from(adjustments!.map((x) => x)),
        "tax_lines": taxLines == null
            ? []
            : List<dynamic>.from(taxLines!.map((x) => x.toJson())),
        "variant": variant?.toJson(),
        "refundable": refundable,
        "subtotal": subtotal,
        "discount_total": discountTotal,
        "total": total,
        "original_total": originalTotal,
        "original_tax_total": originalTaxTotal,
        "tax_total": taxTotal,
      };
}

class MetadataClass {
  MetadataClass();

  factory MetadataClass.fromJson(Map<String, dynamic> json) => MetadataClass();

  Map<String, dynamic> toJson() => {};
}

class TaxLine {
  String? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? rate;
  String? name;
  String? code;
  dynamic metadata;
  String? itemId;
  String? shippingMethodId;

  TaxLine({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.rate,
    this.name,
    this.code,
    this.metadata,
    this.itemId,
    this.shippingMethodId,
  });

  factory TaxLine.fromJson(Map<String, dynamic> json) => TaxLine(
        id: json["id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        rate: json["rate"],
        name: json["name"],
        code: json["code"],
        metadata: json["metadata"],
        itemId: json["item_id"],
        shippingMethodId: json["shipping_method_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "rate": rate,
        "name": name,
        "code": code,
        "metadata": metadata,
        "item_id": itemId,
        "shipping_method_id": shippingMethodId,
      };
}

class Variant {
  String? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  String? title;
  String? productId;
  dynamic sku;
  String? barcode;
  dynamic ean;
  dynamic upc;
  int? variantRank;
  int? inventoryQuantity;
  bool? allowBackorder;
  bool? manageInventory;
  dynamic hsCode;
  dynamic originCountry;
  dynamic midCode;
  dynamic material;
  dynamic weight;
  dynamic length;
  dynamic height;
  dynamic width;
  MetadataClass? metadata;
  Product? product;

  Variant({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.title,
    this.productId,
    this.sku,
    this.barcode,
    this.ean,
    this.upc,
    this.variantRank,
    this.inventoryQuantity,
    this.allowBackorder,
    this.manageInventory,
    this.hsCode,
    this.originCountry,
    this.midCode,
    this.material,
    this.weight,
    this.length,
    this.height,
    this.width,
    this.metadata,
    this.product,
  });

  factory Variant.fromJson(Map<String, dynamic> json) => Variant(
        id: json["id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        title: json["title"],
        productId: json["product_id"],
        sku: json["sku"],
        barcode: json["barcode"],
        ean: json["ean"],
        upc: json["upc"],
        variantRank: json["variant_rank"],
        inventoryQuantity: json["inventory_quantity"],
        allowBackorder: json["allow_backorder"],
        manageInventory: json["manage_inventory"],
        hsCode: json["hs_code"],
        originCountry: json["origin_country"],
        midCode: json["mid_code"],
        material: json["material"],
        weight: json["weight"],
        length: json["length"],
        height: json["height"],
        width: json["width"],
        metadata: json["metadata"] == null
            ? null
            : MetadataClass.fromJson(json["metadata"]),
        product:
            json["product"] == null ? null : Product.fromJson(json["product"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "title": title,
        "product_id": productId,
        "sku": sku,
        "barcode": barcode,
        "ean": ean,
        "upc": upc,
        "variant_rank": variantRank,
        "inventory_quantity": inventoryQuantity,
        "allow_backorder": allowBackorder,
        "manage_inventory": manageInventory,
        "hs_code": hsCode,
        "origin_country": originCountry,
        "mid_code": midCode,
        "material": material,
        "weight": weight,
        "length": length,
        "height": height,
        "width": width,
        "metadata": metadata?.toJson(),
        "product": product?.toJson(),
      };
}

class Product {
  String? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  String? title;
  dynamic subtitle;
  String? description;
  String? handle;
  bool? isGiftcard;
  String? status;
  String? thumbnail;
  int? weight;
  dynamic length;
  dynamic height;
  dynamic width;
  dynamic hsCode;
  dynamic originCountry;
  dynamic midCode;
  dynamic material;
  dynamic collectionId;
  dynamic typeId;
  bool? discountable;
  dynamic externalId;
  dynamic metadata;
  List<Profile>? profiles;
  Profile? profile;
  String? profileId;

  Product({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.title,
    this.subtitle,
    this.description,
    this.handle,
    this.isGiftcard,
    this.status,
    this.thumbnail,
    this.weight,
    this.length,
    this.height,
    this.width,
    this.hsCode,
    this.originCountry,
    this.midCode,
    this.material,
    this.collectionId,
    this.typeId,
    this.discountable,
    this.externalId,
    this.metadata,
    this.profiles,
    this.profile,
    this.profileId,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        title: json["title"],
        subtitle: json["subtitle"],
        description: json["description"],
        handle: json["handle"],
        isGiftcard: json["is_giftcard"],
        status: json["status"],
        thumbnail: json["thumbnail"],
        weight: json["weight"],
        length: json["length"],
        height: json["height"],
        width: json["width"],
        hsCode: json["hs_code"],
        originCountry: json["origin_country"],
        midCode: json["mid_code"],
        material: json["material"],
        collectionId: json["collection_id"],
        typeId: json["type_id"],
        discountable: json["discountable"],
        externalId: json["external_id"],
        metadata: json["metadata"],
        profiles: json["profiles"] == null
            ? []
            : List<Profile>.from(
                json["profiles"]!.map((x) => Profile.fromJson(x))),
        profile:
            json["profile"] == null ? null : Profile.fromJson(json["profile"]),
        profileId: json["profile_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "title": title,
        "subtitle": subtitle,
        "description": description,
        "handle": handle,
        "is_giftcard": isGiftcard,
        "status": status,
        "thumbnail": thumbnail,
        "weight": weight,
        "length": length,
        "height": height,
        "width": width,
        "hs_code": hsCode,
        "origin_country": originCountry,
        "mid_code": midCode,
        "material": material,
        "collection_id": collectionId,
        "type_id": typeId,
        "discountable": discountable,
        "external_id": externalId,
        "metadata": metadata,
        "profiles": profiles == null
            ? []
            : List<dynamic>.from(profiles!.map((x) => x.toJson())),
        "profile": profile?.toJson(),
        "profile_id": profileId,
      };
}

class Profile {
  String? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  String? name;
  String? type;
  dynamic metadata;

  Profile({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.name,
    this.type,
    this.metadata,
  });

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        id: json["id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        name: json["name"],
        type: json["type"],
        metadata: json["metadata"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "name": name,
        "type": type,
        "metadata": metadata,
      };
}

class Payment {
  String? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic swapId;
  String? cartId;
  String? orderId;
  int? amount;
  String? currencyCode;
  int? amountRefunded;
  String? providerId;
  MetadataClass? data;
  DateTime? capturedAt;
  dynamic canceledAt;
  dynamic metadata;
  dynamic idempotencyKey;

  Payment({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.swapId,
    this.cartId,
    this.orderId,
    this.amount,
    this.currencyCode,
    this.amountRefunded,
    this.providerId,
    this.data,
    this.capturedAt,
    this.canceledAt,
    this.metadata,
    this.idempotencyKey,
  });

  factory Payment.fromJson(Map<String, dynamic> json) => Payment(
        id: json["id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        swapId: json["swap_id"],
        cartId: json["cart_id"],
        orderId: json["order_id"],
        amount: json["amount"],
        currencyCode: json["currency_code"],
        amountRefunded: json["amount_refunded"],
        providerId: json["provider_id"],
        data:
            json["data"] == null ? null : MetadataClass.fromJson(json["data"]),
        capturedAt: json["captured_at"] == null
            ? null
            : DateTime.parse(json["captured_at"]),
        canceledAt: json["canceled_at"],
        metadata: json["metadata"],
        idempotencyKey: json["idempotency_key"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "swap_id": swapId,
        "cart_id": cartId,
        "order_id": orderId,
        "amount": amount,
        "currency_code": currencyCode,
        "amount_refunded": amountRefunded,
        "provider_id": providerId,
        "data": data?.toJson(),
        "captured_at": capturedAt?.toIso8601String(),
        "canceled_at": canceledAt,
        "metadata": metadata,
        "idempotency_key": idempotencyKey,
      };
}

class Region {
  String? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  String? name;
  String? currencyCode;
  int? taxRate;
  dynamic taxCode;
  bool? giftCardsTaxable;
  bool? automaticTaxes;
  dynamic taxProviderId;
  MetadataClass? metadata;

  Region({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.name,
    this.currencyCode,
    this.taxRate,
    this.taxCode,
    this.giftCardsTaxable,
    this.automaticTaxes,
    this.taxProviderId,
    this.metadata,
  });

  factory Region.fromJson(Map<String, dynamic> json) => Region(
        id: json["id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        name: json["name"],
        currencyCode: json["currency_code"],
        taxRate: json["tax_rate"],
        taxCode: json["tax_code"],
        giftCardsTaxable: json["gift_cards_taxable"],
        automaticTaxes: json["automatic_taxes"],
        taxProviderId: json["tax_provider_id"],
        metadata: json["metadata"] == null
            ? null
            : MetadataClass.fromJson(json["metadata"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "name": name,
        "currency_code": currencyCode,
        "tax_rate": taxRate,
        "tax_code": taxCode,
        "gift_cards_taxable": giftCardsTaxable,
        "automatic_taxes": automaticTaxes,
        "tax_provider_id": taxProviderId,
        "metadata": metadata?.toJson(),
      };
}

class ShippingAddress {
  String? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  dynamic customerId;
  dynamic company;
  dynamic firstName;
  dynamic lastName;
  dynamic address1;
  dynamic address2;
  dynamic city;
  String? countryCode;
  dynamic province;
  dynamic postalCode;
  dynamic phone;
  dynamic metadata;

  ShippingAddress({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.customerId,
    this.company,
    this.firstName,
    this.lastName,
    this.address1,
    this.address2,
    this.city,
    this.countryCode,
    this.province,
    this.postalCode,
    this.phone,
    this.metadata,
  });

  factory ShippingAddress.fromJson(Map<String, dynamic> json) =>
      ShippingAddress(
        id: json["id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        customerId: json["customer_id"],
        company: json["company"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        address1: json["address_1"],
        address2: json["address_2"],
        city: json["city"],
        countryCode: json["country_code"],
        province: json["province"],
        postalCode: json["postal_code"],
        phone: json["phone"],
        metadata: json["metadata"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "customer_id": customerId,
        "company": company,
        "first_name": firstName,
        "last_name": lastName,
        "address_1": address1,
        "address_2": address2,
        "city": city,
        "country_code": countryCode,
        "province": province,
        "postal_code": postalCode,
        "phone": phone,
        "metadata": metadata,
      };
}

class ShippingMethod {
  String? id;
  String? shippingOptionId;
  String? orderId;
  dynamic claimOrderId;
  String? cartId;
  dynamic swapId;
  dynamic returnId;
  int? price;
  MetadataClass? data;
  ShippingOption? shippingOption;
  List<TaxLine>? taxLines;
  int? originalTotal;
  int? total;
  int? subtotal;
  int? originalTaxTotal;
  int? taxTotal;

  ShippingMethod({
    this.id,
    this.shippingOptionId,
    this.orderId,
    this.claimOrderId,
    this.cartId,
    this.swapId,
    this.returnId,
    this.price,
    this.data,
    this.shippingOption,
    this.taxLines,
    this.originalTotal,
    this.total,
    this.subtotal,
    this.originalTaxTotal,
    this.taxTotal,
  });

  factory ShippingMethod.fromJson(Map<String, dynamic> json) => ShippingMethod(
        id: json["id"],
        shippingOptionId: json["shipping_option_id"],
        orderId: json["order_id"],
        claimOrderId: json["claim_order_id"],
        cartId: json["cart_id"],
        swapId: json["swap_id"],
        returnId: json["return_id"],
        price: json["price"],
        data:
            json["data"] == null ? null : MetadataClass.fromJson(json["data"]),
        shippingOption: json["shipping_option"] == null
            ? null
            : ShippingOption.fromJson(json["shipping_option"]),
        taxLines: json["tax_lines"] == null
            ? []
            : List<TaxLine>.from(
                json["tax_lines"]!.map((x) => TaxLine.fromJson(x))),
        originalTotal: json["original_total"],
        total: json["total"],
        subtotal: json["subtotal"],
        originalTaxTotal: json["original_tax_total"],
        taxTotal: json["tax_total"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "shipping_option_id": shippingOptionId,
        "order_id": orderId,
        "claim_order_id": claimOrderId,
        "cart_id": cartId,
        "swap_id": swapId,
        "return_id": returnId,
        "price": price,
        "data": data?.toJson(),
        "shipping_option": shippingOption?.toJson(),
        "tax_lines": taxLines == null
            ? []
            : List<dynamic>.from(taxLines!.map((x) => x.toJson())),
        "original_total": originalTotal,
        "total": total,
        "subtotal": subtotal,
        "original_tax_total": originalTaxTotal,
        "tax_total": taxTotal,
      };
}

class ShippingOption {
  String? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  String? name;
  String? regionId;
  String? profileId;
  String? providerId;
  String? priceType;
  int? amount;
  bool? isReturn;
  bool? adminOnly;
  PurpleData? data;
  MetadataClass? metadata;

  ShippingOption({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.name,
    this.regionId,
    this.profileId,
    this.providerId,
    this.priceType,
    this.amount,
    this.isReturn,
    this.adminOnly,
    this.data,
    this.metadata,
  });

  factory ShippingOption.fromJson(Map<String, dynamic> json) => ShippingOption(
        id: json["id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        name: json["name"],
        regionId: json["region_id"],
        profileId: json["profile_id"],
        providerId: json["provider_id"],
        priceType: json["price_type"],
        amount: json["amount"],
        isReturn: json["is_return"],
        adminOnly: json["admin_only"],
        data: json["data"] == null ? null : PurpleData.fromJson(json["data"]),
        metadata: json["metadata"] == null
            ? null
            : MetadataClass.fromJson(json["metadata"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "name": name,
        "region_id": regionId,
        "profile_id": profileId,
        "provider_id": providerId,
        "price_type": priceType,
        "amount": amount,
        "is_return": isReturn,
        "admin_only": adminOnly,
        "data": data?.toJson(),
        "metadata": metadata?.toJson(),
      };
}

class PurpleData {
  String? id;

  PurpleData({
    this.id,
  });

  factory PurpleData.fromJson(Map<String, dynamic> json) => PurpleData(
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
      };
}
