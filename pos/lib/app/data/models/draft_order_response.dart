// To parse this JSON data, do
//
//     final draftOrderResponse = draftOrderResponseFromJson(jsonString);

import 'dart:convert';

DraftOrderResponse draftOrderResponseFromJson(String str) =>
    DraftOrderResponse.fromJson(json.decode(str));

String draftOrderResponseToJson(DraftOrderResponse data) =>
    json.encode(data.toJson());

class DraftOrderResponse {
  DraftOrder? draftOrder;

  DraftOrderResponse({
    this.draftOrder,
  });

  factory DraftOrderResponse.fromJson(Map<String, dynamic> json) =>
      DraftOrderResponse(
        draftOrder: json["draft_order"] == null
            ? null
            : DraftOrder.fromJson(json["draft_order"]),
      );

  Map<String, dynamic> toJson() => {
        "draft_order": draftOrder?.toJson(),
      };
}

class DraftOrder {
  String? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? status;
  int? displayId;
  String? cartId;
  dynamic orderId;
  dynamic canceledAt;
  dynamic noNotificationOrder;
  dynamic metadata;
  Cart? cart;
  dynamic order;

  DraftOrder({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.status,
    this.displayId,
    this.cartId,
    this.orderId,
    this.canceledAt,
    this.noNotificationOrder,
    this.metadata,
    this.cart,
    this.order,
  });

  factory DraftOrder.fromJson(Map<String, dynamic> json) => DraftOrder(
        id: json["id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        status: json["status"],
        displayId: json["display_id"],
        cartId: json["cart_id"],
        orderId: json["order_id"],
        canceledAt: json["canceled_at"],
        noNotificationOrder: json["no_notification_order"],
        metadata: json["metadata"],
        cart: json["cart"] == null ? null : Cart.fromJson(json["cart"]),
        order: json["order"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "status": status,
        "display_id": displayId,
        "cart_id": cartId,
        "order_id": orderId,
        "canceled_at": canceledAt,
        "no_notification_order": noNotificationOrder,
        "metadata": metadata,
        "cart": cart?.toJson(),
        "order": order,
      };
}

class Cart {
  String? object;
  String? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  String? email;
  dynamic billingAddressId;
  String? shippingAddressId;
  String? regionId;
  String? customerId;
  dynamic paymentId;
  String? type;
  dynamic completedAt;
  dynamic paymentAuthorizedAt;
  dynamic idempotencyKey;
  Context? context;
  Context? metadata;
  String? salesChannelId;
  dynamic billingAddress;
  Customer? customer;
  List<dynamic>? discounts;
  List<dynamic>? giftCards;
  List<Item>? items;
  dynamic payment;
  List<dynamic>? paymentSessions;
  Region? region;
  ShippingAddress? shippingAddress;
  List<ShippingMethod>? shippingMethods;
  int? subtotal;
  int? taxTotal;
  int? shippingTotal;
  int? discountTotal;
  int? giftCardTotal;
  int? giftCardTaxTotal;
  int? total;
  int? itemTaxTotal;
  int? shippingTaxTotal;
  int? rawDiscountTotal;

  Cart({
    this.object,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.email,
    this.billingAddressId,
    this.shippingAddressId,
    this.regionId,
    this.customerId,
    this.paymentId,
    this.type,
    this.completedAt,
    this.paymentAuthorizedAt,
    this.idempotencyKey,
    this.context,
    this.metadata,
    this.salesChannelId,
    this.billingAddress,
    this.customer,
    this.discounts,
    this.giftCards,
    this.items,
    this.payment,
    this.paymentSessions,
    this.region,
    this.shippingAddress,
    this.shippingMethods,
    this.subtotal,
    this.taxTotal,
    this.shippingTotal,
    this.discountTotal,
    this.giftCardTotal,
    this.giftCardTaxTotal,
    this.total,
    this.itemTaxTotal,
    this.shippingTaxTotal,
    this.rawDiscountTotal,
  });

  factory Cart.fromJson(Map<String, dynamic> json) => Cart(
        object: json["object"],
        id: json["id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        email: json["email"],
        billingAddressId: json["billing_address_id"],
        shippingAddressId: json["shipping_address_id"],
        regionId: json["region_id"],
        customerId: json["customer_id"],
        paymentId: json["payment_id"],
        type: json["type"],
        completedAt: json["completed_at"],
        paymentAuthorizedAt: json["payment_authorized_at"],
        idempotencyKey: json["idempotency_key"],
        context:
            json["context"] == null ? null : Context.fromJson(json["context"]),
        metadata: json["metadata"] == null
            ? null
            : Context.fromJson(json["metadata"]),
        salesChannelId: json["sales_channel_id"],
        billingAddress: json["billing_address"],
        customer: json["customer"] == null
            ? null
            : Customer.fromJson(json["customer"]),
        discounts: json["discounts"] == null
            ? []
            : List<dynamic>.from(json["discounts"]!.map((x) => x)),
        giftCards: json["gift_cards"] == null
            ? []
            : List<dynamic>.from(json["gift_cards"]!.map((x) => x)),
        items: json["items"] == null
            ? []
            : List<Item>.from(json["items"]!.map((x) => Item.fromJson(x))),
        payment: json["payment"],
        paymentSessions: json["payment_sessions"] == null
            ? []
            : List<dynamic>.from(json["payment_sessions"]!.map((x) => x)),
        region: json["region"] == null ? null : Region.fromJson(json["region"]),
        shippingAddress: json["shipping_address"] == null
            ? null
            : ShippingAddress.fromJson(json["shipping_address"]),
        shippingMethods: json["shipping_methods"] == null
            ? []
            : List<ShippingMethod>.from(json["shipping_methods"]!
                .map((x) => ShippingMethod.fromJson(x))),
        subtotal: json["subtotal"],
        taxTotal: json["tax_total"],
        shippingTotal: json["shipping_total"],
        discountTotal: json["discount_total"],
        giftCardTotal: json["gift_card_total"],
        giftCardTaxTotal: json["gift_card_tax_total"],
        total: json["total"],
        itemTaxTotal: json["item_tax_total"],
        shippingTaxTotal: json["shipping_tax_total"],
        rawDiscountTotal: json["raw_discount_total"],
      );

  Map<String, dynamic> toJson() => {
        "object": object,
        "id": id,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "email": email,
        "billing_address_id": billingAddressId,
        "shipping_address_id": shippingAddressId,
        "region_id": regionId,
        "customer_id": customerId,
        "payment_id": paymentId,
        "type": type,
        "completed_at": completedAt,
        "payment_authorized_at": paymentAuthorizedAt,
        "idempotency_key": idempotencyKey,
        "context": context?.toJson(),
        "metadata": metadata?.toJson(),
        "sales_channel_id": salesChannelId,
        "billing_address": billingAddress,
        "customer": customer?.toJson(),
        "discounts": discounts == null
            ? []
            : List<dynamic>.from(discounts!.map((x) => x)),
        "gift_cards": giftCards == null
            ? []
            : List<dynamic>.from(giftCards!.map((x) => x)),
        "items": items == null
            ? []
            : List<dynamic>.from(items!.map((x) => x.toJson())),
        "payment": payment,
        "payment_sessions": paymentSessions == null
            ? []
            : List<dynamic>.from(paymentSessions!.map((x) => x)),
        "region": region?.toJson(),
        "shipping_address": shippingAddress?.toJson(),
        "shipping_methods": shippingMethods == null
            ? []
            : List<dynamic>.from(shippingMethods!.map((x) => x.toJson())),
        "subtotal": subtotal,
        "tax_total": taxTotal,
        "shipping_total": shippingTotal,
        "discount_total": discountTotal,
        "gift_card_total": giftCardTotal,
        "gift_card_tax_total": giftCardTaxTotal,
        "total": total,
        "item_tax_total": itemTaxTotal,
        "shipping_tax_total": shippingTaxTotal,
        "raw_discount_total": rawDiscountTotal,
      };
}

class Context {
  Context();

  factory Context.fromJson(Map<String, dynamic> json) => Context();

  Map<String, dynamic> toJson() => {};
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
  dynamic orderId;
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
  Context? metadata;
  List<dynamic>? adjustments;
  List<TaxLine>? taxLines;
  Variant? variant;
  int? subtotal;
  int? discountTotal;
  int? total;
  int? originalTotal;
  int? originalTaxTotal;
  int? taxTotal;
  int? rawDiscountTotal;

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
    this.subtotal,
    this.discountTotal,
    this.total,
    this.originalTotal,
    this.originalTaxTotal,
    this.taxTotal,
    this.rawDiscountTotal,
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
            : Context.fromJson(json["metadata"]),
        adjustments: json["adjustments"] == null
            ? []
            : List<dynamic>.from(json["adjustments"]!.map((x) => x)),
        taxLines: json["tax_lines"] == null
            ? []
            : List<TaxLine>.from(
                json["tax_lines"]!.map((x) => TaxLine.fromJson(x))),
        variant:
            json["variant"] == null ? null : Variant.fromJson(json["variant"]),
        subtotal: json["subtotal"],
        discountTotal: json["discount_total"],
        total: json["total"],
        originalTotal: json["original_total"],
        originalTaxTotal: json["original_tax_total"],
        taxTotal: json["tax_total"],
        rawDiscountTotal: json["raw_discount_total"],
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
        "subtotal": subtotal,
        "discount_total": discountTotal,
        "total": total,
        "original_total": originalTotal,
        "original_tax_total": originalTaxTotal,
        "tax_total": taxTotal,
        "raw_discount_total": rawDiscountTotal,
      };
}

class TaxLine {
  int? rate;
  String? name;
  String? code;
  String? itemId;
  String? shippingMethodId;

  TaxLine({
    this.rate,
    this.name,
    this.code,
    this.itemId,
    this.shippingMethodId,
  });

  factory TaxLine.fromJson(Map<String, dynamic> json) => TaxLine(
        rate: json["rate"],
        name: json["name"],
        code: json["code"],
        itemId: json["item_id"],
        shippingMethodId: json["shipping_method_id"],
      );

  Map<String, dynamic> toJson() => {
        "rate": rate,
        "name": name,
        "code": code,
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
  Context? metadata;
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
            : Context.fromJson(json["metadata"]),
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
  Context? metadata;
  List<PaymentProvider>? paymentProviders;
  List<dynamic>? taxRates;

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
    this.paymentProviders,
    this.taxRates,
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
            : Context.fromJson(json["metadata"]),
        paymentProviders: json["payment_providers"] == null
            ? []
            : List<PaymentProvider>.from(json["payment_providers"]!
                .map((x) => PaymentProvider.fromJson(x))),
        taxRates: json["tax_rates"] == null
            ? []
            : List<dynamic>.from(json["tax_rates"]!.map((x) => x)),
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
        "payment_providers": paymentProviders == null
            ? []
            : List<dynamic>.from(paymentProviders!.map((x) => x.toJson())),
        "tax_rates":
            taxRates == null ? [] : List<dynamic>.from(taxRates!.map((x) => x)),
      };
}

class PaymentProvider {
  String? id;
  bool? isInstalled;

  PaymentProvider({
    this.id,
    this.isInstalled,
  });

  factory PaymentProvider.fromJson(Map<String, dynamic> json) =>
      PaymentProvider(
        id: json["id"],
        isInstalled: json["is_installed"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "is_installed": isInstalled,
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
  dynamic orderId;
  dynamic claimOrderId;
  String? cartId;
  dynamic swapId;
  dynamic returnId;
  int? price;
  Context? data;
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
        data: json["data"] == null ? null : Context.fromJson(json["data"]),
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
  Data? data;
  Context? metadata;

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
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        metadata: json["metadata"] == null
            ? null
            : Context.fromJson(json["metadata"]),
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

class Data {
  String? id;

  Data({
    this.id,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
      };
}
