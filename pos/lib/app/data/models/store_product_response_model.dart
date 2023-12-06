// To parse this JSON data, do
//
//     final storeProductResponse = storeProductResponseFromJson(jsonString);

import 'dart:convert';

StoreProductResponse storeProductResponseFromJson(String str) =>
    StoreProductResponse.fromJson(json.decode(str));

String storeProductResponseToJson(StoreProductResponse data) =>
    json.encode(data.toJson());

class StoreProductResponse {
  List<Variant>? variants;

  StoreProductResponse({
    this.variants,
  });

  factory StoreProductResponse.fromJson(Map<String, dynamic> json) =>
      StoreProductResponse(
        variants: json["variants"] == null
            ? []
            : List<Variant>.from(
                json["variants"]!.map((x) => Variant.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "variants": variants == null
            ? []
            : List<dynamic>.from(variants!.map((x) => x.toJson())),
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
  String? ean;
  String? upc;
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
  Metadata? metadata;
  List<Option>? options;
  Product? product;
  List<Price>? prices;
  dynamic originalPrice;
  dynamic calculatedPrice;
  dynamic originalPriceInclTax;
  dynamic calculatedPriceInclTax;
  dynamic originalTax;
  dynamic calculatedTax;
  dynamic taxRates;

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
    this.options,
    this.product,
    this.prices,
    this.originalPrice,
    this.calculatedPrice,
    this.originalPriceInclTax,
    this.calculatedPriceInclTax,
    this.originalTax,
    this.calculatedTax,
    this.taxRates,
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
            : Metadata.fromJson(json["metadata"]),
        options: json["options"] == null
            ? []
            : List<Option>.from(
                json["options"]!.map((x) => Option.fromJson(x))),
        product:
            json["product"] == null ? null : Product.fromJson(json["product"]),
        prices: json["prices"] == null
            ? []
            : List<Price>.from(json["prices"]!.map((x) => Price.fromJson(x))),
        originalPrice: json["original_price"],
        calculatedPrice: json["calculated_price"],
        originalPriceInclTax: json["original_price_incl_tax"],
        calculatedPriceInclTax: json["calculated_price_incl_tax"],
        originalTax: json["original_tax"],
        calculatedTax: json["calculated_tax"],
        taxRates: json["tax_rates"],
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
        "options": options == null
            ? []
            : List<dynamic>.from(options!.map((x) => x.toJson())),
        "product": product?.toJson(),
        "prices": prices == null
            ? []
            : List<dynamic>.from(prices!.map((x) => x.toJson())),
        "original_price": originalPrice,
        "calculated_price": calculatedPrice,
        "original_price_incl_tax": originalPriceInclTax,
        "calculated_price_incl_tax": calculatedPriceInclTax,
        "original_tax": originalTax,
        "calculated_tax": calculatedTax,
        "tax_rates": taxRates,
      };
}

class Metadata {
  Metadata();

  factory Metadata.fromJson(Map<String, dynamic> json) => Metadata();

  Map<String, dynamic> toJson() => {};
}

class Option {
  String? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  String? value;
  String? optionId;
  String? variantId;
  dynamic metadata;

  Option({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.value,
    this.optionId,
    this.variantId,
    this.metadata,
  });

  factory Option.fromJson(Map<String, dynamic> json) => Option(
        id: json["id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        value: json["value"],
        optionId: json["option_id"],
        variantId: json["variant_id"],
        metadata: json["metadata"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "value": value,
        "option_id": optionId,
        "variant_id": variantId,
        "metadata": metadata,
      };
}

class Price {
  String? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  String? currencyCode;
  int? amount;
  dynamic minQuantity;
  dynamic maxQuantity;
  dynamic priceListId;
  dynamic regionId;
  dynamic priceList;
  String? variantId;

  Price({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.currencyCode,
    this.amount,
    this.minQuantity,
    this.maxQuantity,
    this.priceListId,
    this.regionId,
    this.priceList,
    this.variantId,
  });

  factory Price.fromJson(Map<String, dynamic> json) => Price(
        id: json["id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        currencyCode: json["currency_code"],
        amount: json["amount"],
        minQuantity: json["min_quantity"],
        maxQuantity: json["max_quantity"],
        priceListId: json["price_list_id"],
        regionId: json["region_id"],
        priceList: json["price_list"],
        variantId: json["variant_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "currency_code": currencyCode,
        "amount": amount,
        "min_quantity": minQuantity,
        "max_quantity": maxQuantity,
        "price_list_id": priceListId,
        "region_id": regionId,
        "price_list": priceList,
        "variant_id": variantId,
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
      };
}
