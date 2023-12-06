// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medusa.models.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      id: json['id'] as String? ?? 'default',
      customerId: json['customer_id'] as String? ?? 'default',
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
      company: json['company'] as String? ?? 'default',
      firstName: json['first_name'] as String? ?? 'default',
      lastName: json['last_name'] as String? ?? 'default',
      address1: json['address_1'] as String? ?? 'default',
      address2: json['address_2'] as String? ?? 'default',
      city: json['city'] as String? ?? 'default',
      countryCode: json['country_code'] as String? ?? 'default',
      country: json['country'] == null
          ? null
          : Country.fromJson(json['country'] as Map<String, dynamic>),
      province: json['province'] as String? ?? 'default',
      postalCode: json['postal_code'] as String? ?? 'default',
      phone: json['phone'] as String? ?? 'default',
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$AddressToJson(Address instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer_id', instance.customerId);
  writeNotNull('customer', instance.customer?.toJson());
  writeNotNull('company', instance.company);
  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('address_1', instance.address1);
  writeNotNull('address_2', instance.address2);
  writeNotNull('city', instance.city);
  writeNotNull('country_code', instance.countryCode);
  writeNotNull('country', instance.country?.toJson());
  writeNotNull('province', instance.province);
  writeNotNull('postal_code', instance.postalCode);
  writeNotNull('phone', instance.phone);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  return val;
}

AddressCreatePayload _$AddressCreatePayloadFromJson(
        Map<String, dynamic> json) =>
    AddressCreatePayload(
      firstName: json['first_name'] as String? ?? 'default',
      lastName: json['last_name'] as String? ?? 'default',
      phone: json['phone'] as String? ?? 'default',
      company: json['company'] as String? ?? 'default',
      address1: json['address_1'] as String? ?? 'default',
      address2: json['address_2'] as String? ?? 'default',
      city: json['city'] as String? ?? 'default',
      countryCode: json['country_code'] as String? ?? 'default',
      province: json['province'] as String? ?? 'default',
      postalCode: json['postal_code'] as String? ?? 'default',
      metadata: json['metadata'],
    );

Map<String, dynamic> _$AddressCreatePayloadToJson(
    AddressCreatePayload instance) {
  final val = <String, dynamic>{
    'first_name': instance.firstName,
    'last_name': instance.lastName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('phone', instance.phone);
  writeNotNull('company', instance.company);
  val['address_1'] = instance.address1;
  writeNotNull('address_2', instance.address2);
  val['city'] = instance.city;
  val['country_code'] = instance.countryCode;
  writeNotNull('province', instance.province);
  val['postal_code'] = instance.postalCode;
  writeNotNull('metadata', instance.metadata);
  return val;
}

AddressPayload _$AddressPayloadFromJson(Map<String, dynamic> json) =>
    AddressPayload(
      firstName: json['first_name'] as String? ?? 'default',
      lastName: json['last_name'] as String? ?? 'default',
      phone: json['phone'] as String? ?? 'default',
      company: json['company'] as String? ?? 'default',
      address1: json['address_1'] as String? ?? 'default',
      address2: json['address_2'] as String? ?? 'default',
      city: json['city'] as String? ?? 'default',
      countryCode: json['country_code'] as String? ?? 'default',
      province: json['province'] as String? ?? 'default',
      postalCode: json['postal_code'] as String? ?? 'default',
      metadata: json['metadata'],
    );

Map<String, dynamic> _$AddressPayloadToJson(AddressPayload instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('phone', instance.phone);
  writeNotNull('company', instance.company);
  writeNotNull('address_1', instance.address1);
  writeNotNull('address_2', instance.address2);
  writeNotNull('city', instance.city);
  writeNotNull('country_code', instance.countryCode);
  writeNotNull('province', instance.province);
  writeNotNull('postal_code', instance.postalCode);
  writeNotNull('metadata', instance.metadata);
  return val;
}

AdminAppsListRes _$AdminAppsListResFromJson(Map<String, dynamic> json) =>
    AdminAppsListRes(
      apps: (json['apps'] as List<dynamic>?)
              ?.map((e) => OAuth.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AdminAppsListResToJson(AdminAppsListRes instance) =>
    <String, dynamic>{
      'apps': instance.apps.map((e) => e.toJson()).toList(),
    };

AdminAppsRes _$AdminAppsResFromJson(Map<String, dynamic> json) => AdminAppsRes(
      apps: OAuth.fromJson(json['apps'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminAppsResToJson(AdminAppsRes instance) =>
    <String, dynamic>{
      'apps': instance.apps.toJson(),
    };

AdminAuthRes _$AdminAuthResFromJson(Map<String, dynamic> json) => AdminAuthRes(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminAuthResToJson(AdminAuthRes instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
    };

AdminBatchJobListRes _$AdminBatchJobListResFromJson(
        Map<String, dynamic> json) =>
    AdminBatchJobListRes(
      batchJobs: (json['batch_jobs'] as List<dynamic>?)
              ?.map((e) => BatchJob.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$AdminBatchJobListResToJson(
        AdminBatchJobListRes instance) =>
    <String, dynamic>{
      'batch_jobs': instance.batchJobs.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
    };

AdminBatchJobRes _$AdminBatchJobResFromJson(Map<String, dynamic> json) =>
    AdminBatchJobRes(
      batchJob: json['batch_job'] == null
          ? null
          : BatchJob.fromJson(json['batch_job'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminBatchJobResToJson(AdminBatchJobRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('batch_job', instance.batchJob?.toJson());
  return val;
}

AdminBearerAuthRes _$AdminBearerAuthResFromJson(Map<String, dynamic> json) =>
    AdminBearerAuthRes(
      accessToken: json['access_token'] as String? ?? 'default',
    );

Map<String, dynamic> _$AdminBearerAuthResToJson(AdminBearerAuthRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('access_token', instance.accessToken);
  return val;
}

AdminCollectionsDeleteRes _$AdminCollectionsDeleteResFromJson(
        Map<String, dynamic> json) =>
    AdminCollectionsDeleteRes(
      id: json['id'] as String? ?? 'default',
      object: json['object'] as String? ?? 'default',
      deleted: json['deleted'] as bool? ?? true,
    );

Map<String, dynamic> _$AdminCollectionsDeleteResToJson(
        AdminCollectionsDeleteRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'deleted': instance.deleted,
    };

AdminCollectionsListRes _$AdminCollectionsListResFromJson(
        Map<String, dynamic> json) =>
    AdminCollectionsListRes(
      collections: (json['collections'] as List<dynamic>?)
              ?.map(
                  (e) => ProductCollection.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$AdminCollectionsListResToJson(
        AdminCollectionsListRes instance) =>
    <String, dynamic>{
      'collections': instance.collections.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
    };

AdminCollectionsRes _$AdminCollectionsResFromJson(Map<String, dynamic> json) =>
    AdminCollectionsRes(
      collection: ProductCollection.fromJson(
          json['collection'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminCollectionsResToJson(
        AdminCollectionsRes instance) =>
    <String, dynamic>{
      'collection': instance.collection.toJson(),
    };

AdminCreateUserRequest _$AdminCreateUserRequestFromJson(
        Map<String, dynamic> json) =>
    AdminCreateUserRequest(
      email: json['email'] as String? ?? 'default',
      firstName: json['first_name'] as String? ?? 'default',
      lastName: json['last_name'] as String? ?? 'default',
      role: adminCreateUserRequestRoleNullableFromJson(json['role']),
      password: json['password'] as String? ?? 'default',
    );

Map<String, dynamic> _$AdminCreateUserRequestToJson(
    AdminCreateUserRequest instance) {
  final val = <String, dynamic>{
    'email': instance.email,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('role', adminCreateUserRequestRoleNullableToJson(instance.role));
  val['password'] = instance.password;
  return val;
}

AdminCurrenciesListRes _$AdminCurrenciesListResFromJson(
        Map<String, dynamic> json) =>
    AdminCurrenciesListRes(
      currencies: (json['currencies'] as List<dynamic>?)
              ?.map((e) => Currency.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$AdminCurrenciesListResToJson(
        AdminCurrenciesListRes instance) =>
    <String, dynamic>{
      'currencies': instance.currencies.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
    };

AdminCurrenciesRes _$AdminCurrenciesResFromJson(Map<String, dynamic> json) =>
    AdminCurrenciesRes(
      currency: Currency.fromJson(json['currency'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminCurrenciesResToJson(AdminCurrenciesRes instance) =>
    <String, dynamic>{
      'currency': instance.currency.toJson(),
    };

AdminCustomerGroupsDeleteRes _$AdminCustomerGroupsDeleteResFromJson(
        Map<String, dynamic> json) =>
    AdminCustomerGroupsDeleteRes(
      id: json['id'] as String? ?? 'default',
      object: json['object'] as String? ?? 'default',
      deleted: json['deleted'] as bool? ?? true,
    );

Map<String, dynamic> _$AdminCustomerGroupsDeleteResToJson(
        AdminCustomerGroupsDeleteRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'deleted': instance.deleted,
    };

AdminCustomerGroupsListRes _$AdminCustomerGroupsListResFromJson(
        Map<String, dynamic> json) =>
    AdminCustomerGroupsListRes(
      customerGroups: (json['customer_groups'] as List<dynamic>?)
              ?.map((e) => CustomerGroup.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$AdminCustomerGroupsListResToJson(
        AdminCustomerGroupsListRes instance) =>
    <String, dynamic>{
      'customer_groups':
          instance.customerGroups.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
    };

AdminCustomerGroupsRes _$AdminCustomerGroupsResFromJson(
        Map<String, dynamic> json) =>
    AdminCustomerGroupsRes(
      customerGroup: json['customer_group'] == null
          ? null
          : CustomerGroup.fromJson(
              json['customer_group'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminCustomerGroupsResToJson(
    AdminCustomerGroupsRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer_group', instance.customerGroup?.toJson());
  return val;
}

AdminCustomersListRes _$AdminCustomersListResFromJson(
        Map<String, dynamic> json) =>
    AdminCustomersListRes(
      customers: (json['customers'] as List<dynamic>?)
              ?.map((e) => Customer.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$AdminCustomersListResToJson(
        AdminCustomersListRes instance) =>
    <String, dynamic>{
      'customers': instance.customers.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
    };

AdminCustomersRes _$AdminCustomersResFromJson(Map<String, dynamic> json) =>
    AdminCustomersRes(
      customer: Customer.fromJson(json['customer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminCustomersResToJson(AdminCustomersRes instance) =>
    <String, dynamic>{
      'customer': instance.customer.toJson(),
    };

AdminDeleteCustomerGroupsGroupCustomerBatchReq
    _$AdminDeleteCustomerGroupsGroupCustomerBatchReqFromJson(
            Map<String, dynamic> json) =>
        AdminDeleteCustomerGroupsGroupCustomerBatchReq(
          customerIds: (json['customer_ids'] as List<dynamic>)
              .map((e) =>
                  AdminDeleteCustomerGroupsGroupCustomerBatchReq$CustomerIds$Item
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$AdminDeleteCustomerGroupsGroupCustomerBatchReqToJson(
        AdminDeleteCustomerGroupsGroupCustomerBatchReq instance) =>
    <String, dynamic>{
      'customer_ids': instance.customerIds.map((e) => e.toJson()).toList(),
    };

AdminDeleteDiscountsDiscountConditionsConditionBatchReq
    _$AdminDeleteDiscountsDiscountConditionsConditionBatchReqFromJson(
            Map<String, dynamic> json) =>
        AdminDeleteDiscountsDiscountConditionsConditionBatchReq(
          resources: (json['resources'] as List<dynamic>)
              .map((e) =>
                  AdminDeleteDiscountsDiscountConditionsConditionBatchReq$Resources$Item
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic>
    _$AdminDeleteDiscountsDiscountConditionsConditionBatchReqToJson(
            AdminDeleteDiscountsDiscountConditionsConditionBatchReq instance) =>
        <String, dynamic>{
          'resources': instance.resources.map((e) => e.toJson()).toList(),
        };

AdminDeletePriceListPricesPricesReq
    _$AdminDeletePriceListPricesPricesReqFromJson(Map<String, dynamic> json) =>
        AdminDeletePriceListPricesPricesReq(
          priceIds: (json['price_ids'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
        );

Map<String, dynamic> _$AdminDeletePriceListPricesPricesReqToJson(
    AdminDeletePriceListPricesPricesReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('price_ids', instance.priceIds);
  return val;
}

AdminDeletePriceListsPriceListProductsPricesBatchReq
    _$AdminDeletePriceListsPriceListProductsPricesBatchReqFromJson(
            Map<String, dynamic> json) =>
        AdminDeletePriceListsPriceListProductsPricesBatchReq(
          productIds: (json['product_ids'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
        );

Map<String, dynamic>
    _$AdminDeletePriceListsPriceListProductsPricesBatchReqToJson(
        AdminDeletePriceListsPriceListProductsPricesBatchReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('product_ids', instance.productIds);
  return val;
}

AdminDeleteProductCategoriesCategoryProductsBatchReq
    _$AdminDeleteProductCategoriesCategoryProductsBatchReqFromJson(
            Map<String, dynamic> json) =>
        AdminDeleteProductCategoriesCategoryProductsBatchReq(
          productIds: (json['product_ids'] as List<dynamic>)
              .map((e) =>
                  AdminDeleteProductCategoriesCategoryProductsBatchReq$ProductIds$Item
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic>
    _$AdminDeleteProductCategoriesCategoryProductsBatchReqToJson(
            AdminDeleteProductCategoriesCategoryProductsBatchReq instance) =>
        <String, dynamic>{
          'product_ids': instance.productIds.map((e) => e.toJson()).toList(),
        };

AdminDeleteProductsFromCollectionReq
    _$AdminDeleteProductsFromCollectionReqFromJson(Map<String, dynamic> json) =>
        AdminDeleteProductsFromCollectionReq(
          productIds: (json['product_ids'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
        );

Map<String, dynamic> _$AdminDeleteProductsFromCollectionReqToJson(
        AdminDeleteProductsFromCollectionReq instance) =>
    <String, dynamic>{
      'product_ids': instance.productIds,
    };

AdminDeleteProductsFromCollectionRes
    _$AdminDeleteProductsFromCollectionResFromJson(Map<String, dynamic> json) =>
        AdminDeleteProductsFromCollectionRes(
          id: json['id'] as String? ?? 'default',
          object: json['object'] as String? ?? 'default',
          removedProducts: (json['removed_products'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
        );

Map<String, dynamic> _$AdminDeleteProductsFromCollectionResToJson(
        AdminDeleteProductsFromCollectionRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'removed_products': instance.removedProducts,
    };

AdminDeletePublishableApiKeySalesChannelsBatchReq
    _$AdminDeletePublishableApiKeySalesChannelsBatchReqFromJson(
            Map<String, dynamic> json) =>
        AdminDeletePublishableApiKeySalesChannelsBatchReq(
          salesChannelIds: (json['sales_channel_ids'] as List<dynamic>)
              .map((e) =>
                  AdminDeletePublishableApiKeySalesChannelsBatchReq$SalesChannelIds$Item
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$AdminDeletePublishableApiKeySalesChannelsBatchReqToJson(
        AdminDeletePublishableApiKeySalesChannelsBatchReq instance) =>
    <String, dynamic>{
      'sales_channel_ids':
          instance.salesChannelIds.map((e) => e.toJson()).toList(),
    };

AdminDeleteSalesChannelsChannelProductsBatchReq
    _$AdminDeleteSalesChannelsChannelProductsBatchReqFromJson(
            Map<String, dynamic> json) =>
        AdminDeleteSalesChannelsChannelProductsBatchReq(
          productIds: (json['product_ids'] as List<dynamic>)
              .map((e) =>
                  AdminDeleteSalesChannelsChannelProductsBatchReq$ProductIds$Item
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$AdminDeleteSalesChannelsChannelProductsBatchReqToJson(
        AdminDeleteSalesChannelsChannelProductsBatchReq instance) =>
    <String, dynamic>{
      'product_ids': instance.productIds.map((e) => e.toJson()).toList(),
    };

AdminDeleteSalesChannelsChannelStockLocationsReq
    _$AdminDeleteSalesChannelsChannelStockLocationsReqFromJson(
            Map<String, dynamic> json) =>
        AdminDeleteSalesChannelsChannelStockLocationsReq(
          locationId: json['location_id'] as String? ?? 'default',
        );

Map<String, dynamic> _$AdminDeleteSalesChannelsChannelStockLocationsReqToJson(
        AdminDeleteSalesChannelsChannelStockLocationsReq instance) =>
    <String, dynamic>{
      'location_id': instance.locationId,
    };

AdminDeleteShippingProfileRes _$AdminDeleteShippingProfileResFromJson(
        Map<String, dynamic> json) =>
    AdminDeleteShippingProfileRes(
      id: json['id'] as String? ?? 'default',
      object: json['object'] as String? ?? 'default',
      deleted: json['deleted'] as bool? ?? true,
    );

Map<String, dynamic> _$AdminDeleteShippingProfileResToJson(
        AdminDeleteShippingProfileRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'deleted': instance.deleted,
    };

AdminDeleteTaxRatesTaxRateProductTypesReq
    _$AdminDeleteTaxRatesTaxRateProductTypesReqFromJson(
            Map<String, dynamic> json) =>
        AdminDeleteTaxRatesTaxRateProductTypesReq(
          productTypes: (json['product_types'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
        );

Map<String, dynamic> _$AdminDeleteTaxRatesTaxRateProductTypesReqToJson(
        AdminDeleteTaxRatesTaxRateProductTypesReq instance) =>
    <String, dynamic>{
      'product_types': instance.productTypes,
    };

AdminDeleteTaxRatesTaxRateProductsReq
    _$AdminDeleteTaxRatesTaxRateProductsReqFromJson(
            Map<String, dynamic> json) =>
        AdminDeleteTaxRatesTaxRateProductsReq(
          products: (json['products'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
        );

Map<String, dynamic> _$AdminDeleteTaxRatesTaxRateProductsReqToJson(
        AdminDeleteTaxRatesTaxRateProductsReq instance) =>
    <String, dynamic>{
      'products': instance.products,
    };

AdminDeleteTaxRatesTaxRateShippingOptionsReq
    _$AdminDeleteTaxRatesTaxRateShippingOptionsReqFromJson(
            Map<String, dynamic> json) =>
        AdminDeleteTaxRatesTaxRateShippingOptionsReq(
          shippingOptions: (json['shipping_options'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
        );

Map<String, dynamic> _$AdminDeleteTaxRatesTaxRateShippingOptionsReqToJson(
        AdminDeleteTaxRatesTaxRateShippingOptionsReq instance) =>
    <String, dynamic>{
      'shipping_options': instance.shippingOptions,
    };

AdminDeleteUploadsReq _$AdminDeleteUploadsReqFromJson(
        Map<String, dynamic> json) =>
    AdminDeleteUploadsReq(
      fileKey: json['file_key'] as String? ?? 'default',
    );

Map<String, dynamic> _$AdminDeleteUploadsReqToJson(
        AdminDeleteUploadsReq instance) =>
    <String, dynamic>{
      'file_key': instance.fileKey,
    };

AdminDeleteUploadsRes _$AdminDeleteUploadsResFromJson(
        Map<String, dynamic> json) =>
    AdminDeleteUploadsRes(
      id: json['id'] as String? ?? 'default',
      object: json['object'] as String? ?? 'default',
      deleted: json['deleted'] as bool? ?? true,
    );

Map<String, dynamic> _$AdminDeleteUploadsResToJson(
        AdminDeleteUploadsRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'deleted': instance.deleted,
    };

AdminDeleteUserRes _$AdminDeleteUserResFromJson(Map<String, dynamic> json) =>
    AdminDeleteUserRes(
      id: json['id'] as String? ?? 'default',
      object: json['object'] as String? ?? 'default',
      deleted: json['deleted'] as bool? ?? true,
    );

Map<String, dynamic> _$AdminDeleteUserResToJson(AdminDeleteUserRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'deleted': instance.deleted,
    };

AdminDiscountConditionsDeleteRes _$AdminDiscountConditionsDeleteResFromJson(
        Map<String, dynamic> json) =>
    AdminDiscountConditionsDeleteRes(
      id: json['id'] as String? ?? 'default',
      object: json['object'] as String? ?? 'default',
      deleted: json['deleted'] as bool? ?? true,
      discount: Discount.fromJson(json['discount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminDiscountConditionsDeleteResToJson(
        AdminDiscountConditionsDeleteRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'deleted': instance.deleted,
      'discount': instance.discount.toJson(),
    };

AdminDiscountConditionsRes _$AdminDiscountConditionsResFromJson(
        Map<String, dynamic> json) =>
    AdminDiscountConditionsRes(
      discountCondition: json['discount_condition'] == null
          ? null
          : DiscountCondition.fromJson(
              json['discount_condition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminDiscountConditionsResToJson(
    AdminDiscountConditionsRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('discount_condition', instance.discountCondition?.toJson());
  return val;
}

AdminDiscountsDeleteRes _$AdminDiscountsDeleteResFromJson(
        Map<String, dynamic> json) =>
    AdminDiscountsDeleteRes(
      id: json['id'] as String? ?? 'default',
      object: json['object'] as String? ?? 'default',
      deleted: json['deleted'] as bool? ?? true,
    );

Map<String, dynamic> _$AdminDiscountsDeleteResToJson(
        AdminDiscountsDeleteRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'deleted': instance.deleted,
    };

AdminDiscountsListRes _$AdminDiscountsListResFromJson(
        Map<String, dynamic> json) =>
    AdminDiscountsListRes(
      discounts: (json['discounts'] as List<dynamic>?)
              ?.map((e) => Discount.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$AdminDiscountsListResToJson(
        AdminDiscountsListRes instance) =>
    <String, dynamic>{
      'discounts': instance.discounts.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
    };

AdminDiscountsRes _$AdminDiscountsResFromJson(Map<String, dynamic> json) =>
    AdminDiscountsRes(
      discount: Discount.fromJson(json['discount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminDiscountsResToJson(AdminDiscountsRes instance) =>
    <String, dynamic>{
      'discount': instance.discount.toJson(),
    };

AdminDraftOrdersDeleteRes _$AdminDraftOrdersDeleteResFromJson(
        Map<String, dynamic> json) =>
    AdminDraftOrdersDeleteRes(
      id: json['id'] as String? ?? 'default',
      object: json['object'] as String? ?? 'default',
      deleted: json['deleted'] as bool? ?? true,
    );

Map<String, dynamic> _$AdminDraftOrdersDeleteResToJson(
        AdminDraftOrdersDeleteRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'deleted': instance.deleted,
    };

AdminDraftOrdersListRes _$AdminDraftOrdersListResFromJson(
        Map<String, dynamic> json) =>
    AdminDraftOrdersListRes(
      draftOrders: (json['draft_orders'] as List<dynamic>?)
              ?.map((e) => DraftOrder.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$AdminDraftOrdersListResToJson(
        AdminDraftOrdersListRes instance) =>
    <String, dynamic>{
      'draft_orders': instance.draftOrders.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
    };

AdminDraftOrdersRes _$AdminDraftOrdersResFromJson(Map<String, dynamic> json) =>
    AdminDraftOrdersRes(
      draftOrder: json['draft_order'] == null
          ? null
          : DraftOrder.fromJson(json['draft_order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminDraftOrdersResToJson(AdminDraftOrdersRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('draft_order', instance.draftOrder?.toJson());
  return val;
}

AdminExtendedStoresRes _$AdminExtendedStoresResFromJson(
        Map<String, dynamic> json) =>
    AdminExtendedStoresRes(
      store: ExtendedStoreDTO.fromJson(json['store'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminExtendedStoresResToJson(
        AdminExtendedStoresRes instance) =>
    <String, dynamic>{
      'store': instance.store.toJson(),
    };

AdminGetRegionsRegionFulfillmentOptionsRes
    _$AdminGetRegionsRegionFulfillmentOptionsResFromJson(
            Map<String, dynamic> json) =>
        AdminGetRegionsRegionFulfillmentOptionsRes(
          fulfillmentOptions: (json['fulfillment_options'] as List<dynamic>)
              .map((e) =>
                  AdminGetRegionsRegionFulfillmentOptionsRes$FulfillmentOptions$Item
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$AdminGetRegionsRegionFulfillmentOptionsResToJson(
        AdminGetRegionsRegionFulfillmentOptionsRes instance) =>
    <String, dynamic>{
      'fulfillment_options':
          instance.fulfillmentOptions.map((e) => e.toJson()).toList(),
    };

AdminGetVariantsVariantInventoryRes
    _$AdminGetVariantsVariantInventoryResFromJson(Map<String, dynamic> json) =>
        AdminGetVariantsVariantInventoryRes(
          variant: json['variant'] == null
              ? null
              : VariantInventory.fromJson(
                  json['variant'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AdminGetVariantsVariantInventoryResToJson(
    AdminGetVariantsVariantInventoryRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('variant', instance.variant?.toJson());
  return val;
}

AdminGiftCardsDeleteRes _$AdminGiftCardsDeleteResFromJson(
        Map<String, dynamic> json) =>
    AdminGiftCardsDeleteRes(
      id: json['id'] as String? ?? 'default',
      object: json['object'] as String? ?? 'default',
      deleted: json['deleted'] as bool? ?? true,
    );

Map<String, dynamic> _$AdminGiftCardsDeleteResToJson(
        AdminGiftCardsDeleteRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'deleted': instance.deleted,
    };

AdminGiftCardsListRes _$AdminGiftCardsListResFromJson(
        Map<String, dynamic> json) =>
    AdminGiftCardsListRes(
      giftCards: (json['gift_cards'] as List<dynamic>?)
              ?.map((e) => GiftCard.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$AdminGiftCardsListResToJson(
        AdminGiftCardsListRes instance) =>
    <String, dynamic>{
      'gift_cards': instance.giftCards.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
    };

AdminGiftCardsRes _$AdminGiftCardsResFromJson(Map<String, dynamic> json) =>
    AdminGiftCardsRes(
      giftCard: json['gift_card'] == null
          ? null
          : GiftCard.fromJson(json['gift_card'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminGiftCardsResToJson(AdminGiftCardsRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('gift_card', instance.giftCard?.toJson());
  return val;
}

AdminInventoryItemsDeleteRes _$AdminInventoryItemsDeleteResFromJson(
        Map<String, dynamic> json) =>
    AdminInventoryItemsDeleteRes(
      id: json['id'] as String? ?? 'default',
      object: json['object'] as String? ?? 'default',
      deleted: json['deleted'] as bool? ?? true,
    );

Map<String, dynamic> _$AdminInventoryItemsDeleteResToJson(
        AdminInventoryItemsDeleteRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'deleted': instance.deleted,
    };

AdminInventoryItemsListRes _$AdminInventoryItemsListResFromJson(
        Map<String, dynamic> json) =>
    AdminInventoryItemsListRes(
      inventoryItems: (json['inventory_items'] as List<dynamic>?)
              ?.map((e) => InventoryItemDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$AdminInventoryItemsListResToJson(
        AdminInventoryItemsListRes instance) =>
    <String, dynamic>{
      'inventory_items':
          instance.inventoryItems.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
    };

AdminInventoryItemsListWithVariantsAndLocationLevelsRes
    _$AdminInventoryItemsListWithVariantsAndLocationLevelsResFromJson(
            Map<String, dynamic> json) =>
        AdminInventoryItemsListWithVariantsAndLocationLevelsRes(
          inventoryItems: (json['inventory_items'] as List<dynamic>?)
                  ?.map((e) => DecoratedInventoryItemDTO.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              [],
          count: json['count'] as int? ?? 36,
          offset: json['offset'] as int? ?? 36,
          limit: json['limit'] as int? ?? 36,
        );

Map<String, dynamic>
    _$AdminInventoryItemsListWithVariantsAndLocationLevelsResToJson(
            AdminInventoryItemsListWithVariantsAndLocationLevelsRes instance) =>
        <String, dynamic>{
          'inventory_items':
              instance.inventoryItems.map((e) => e.toJson()).toList(),
          'count': instance.count,
          'offset': instance.offset,
          'limit': instance.limit,
        };

AdminInventoryItemsLocationLevelsRes
    _$AdminInventoryItemsLocationLevelsResFromJson(Map<String, dynamic> json) =>
        AdminInventoryItemsLocationLevelsRes(
          inventoryItem:
              AdminInventoryItemsLocationLevelsRes$InventoryItem.fromJson(
                  json['inventory_item'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AdminInventoryItemsLocationLevelsResToJson(
        AdminInventoryItemsLocationLevelsRes instance) =>
    <String, dynamic>{
      'inventory_item': instance.inventoryItem.toJson(),
    };

AdminInventoryItemsRes _$AdminInventoryItemsResFromJson(
        Map<String, dynamic> json) =>
    AdminInventoryItemsRes(
      inventoryItem: json['inventory_item'] == null
          ? null
          : InventoryItemDTO.fromJson(
              json['inventory_item'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminInventoryItemsResToJson(
    AdminInventoryItemsRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('inventory_item', instance.inventoryItem?.toJson());
  return val;
}

AdminInviteDeleteRes _$AdminInviteDeleteResFromJson(
        Map<String, dynamic> json) =>
    AdminInviteDeleteRes(
      id: json['id'] as String? ?? 'default',
      object: json['object'] as String? ?? 'default',
      deleted: json['deleted'] as bool? ?? true,
    );

Map<String, dynamic> _$AdminInviteDeleteResToJson(
        AdminInviteDeleteRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'deleted': instance.deleted,
    };

AdminListInvitesRes _$AdminListInvitesResFromJson(Map<String, dynamic> json) =>
    AdminListInvitesRes(
      invites: (json['invites'] as List<dynamic>?)
              ?.map((e) => Invite.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AdminListInvitesResToJson(
        AdminListInvitesRes instance) =>
    <String, dynamic>{
      'invites': instance.invites.map((e) => e.toJson()).toList(),
    };

AdminNotesDeleteRes _$AdminNotesDeleteResFromJson(Map<String, dynamic> json) =>
    AdminNotesDeleteRes(
      id: json['id'] as String? ?? 'default',
      object: json['object'] as String? ?? 'default',
      deleted: json['deleted'] as bool? ?? true,
    );

Map<String, dynamic> _$AdminNotesDeleteResToJson(
        AdminNotesDeleteRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'deleted': instance.deleted,
    };

AdminNotesListRes _$AdminNotesListResFromJson(Map<String, dynamic> json) =>
    AdminNotesListRes(
      notes: (json['notes'] as List<dynamic>?)
              ?.map((e) => Note.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$AdminNotesListResToJson(AdminNotesListRes instance) =>
    <String, dynamic>{
      'notes': instance.notes.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
    };

AdminNotesRes _$AdminNotesResFromJson(Map<String, dynamic> json) =>
    AdminNotesRes(
      note: Note.fromJson(json['note'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminNotesResToJson(AdminNotesRes instance) =>
    <String, dynamic>{
      'note': instance.note.toJson(),
    };

AdminNotificationsListRes _$AdminNotificationsListResFromJson(
        Map<String, dynamic> json) =>
    AdminNotificationsListRes(
      notifications: (json['notifications'] as List<dynamic>?)
              ?.map((e) => Notification.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$AdminNotificationsListResToJson(
    AdminNotificationsListRes instance) {
  final val = <String, dynamic>{
    'notifications': instance.notifications.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  writeNotNull('offset', instance.offset);
  writeNotNull('limit', instance.limit);
  return val;
}

AdminNotificationsRes _$AdminNotificationsResFromJson(
        Map<String, dynamic> json) =>
    AdminNotificationsRes(
      notification:
          Notification.fromJson(json['notification'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminNotificationsResToJson(
        AdminNotificationsRes instance) =>
    <String, dynamic>{
      'notification': instance.notification.toJson(),
    };

AdminOrderEditDeleteRes _$AdminOrderEditDeleteResFromJson(
        Map<String, dynamic> json) =>
    AdminOrderEditDeleteRes(
      id: json['id'] as String? ?? 'default',
      object: json['object'] as String? ?? 'default',
      deleted: json['deleted'] as bool? ?? true,
    );

Map<String, dynamic> _$AdminOrderEditDeleteResToJson(
        AdminOrderEditDeleteRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'deleted': instance.deleted,
    };

AdminOrderEditItemChangeDeleteRes _$AdminOrderEditItemChangeDeleteResFromJson(
        Map<String, dynamic> json) =>
    AdminOrderEditItemChangeDeleteRes(
      id: json['id'] as String? ?? 'default',
      object: json['object'] as String? ?? 'default',
      deleted: json['deleted'] as bool? ?? true,
    );

Map<String, dynamic> _$AdminOrderEditItemChangeDeleteResToJson(
        AdminOrderEditItemChangeDeleteRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'deleted': instance.deleted,
    };

AdminOrderEditsListRes _$AdminOrderEditsListResFromJson(
        Map<String, dynamic> json) =>
    AdminOrderEditsListRes(
      orderEdits: (json['order_edits'] as List<dynamic>?)
              ?.map((e) => OrderEdit.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$AdminOrderEditsListResToJson(
        AdminOrderEditsListRes instance) =>
    <String, dynamic>{
      'order_edits': instance.orderEdits.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
    };

AdminOrderEditsRes _$AdminOrderEditsResFromJson(Map<String, dynamic> json) =>
    AdminOrderEditsRes(
      orderEdit: json['order_edit'] == null
          ? null
          : OrderEdit.fromJson(json['order_edit'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminOrderEditsResToJson(AdminOrderEditsRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('order_edit', instance.orderEdit?.toJson());
  return val;
}

AdminOrdersListRes _$AdminOrdersListResFromJson(Map<String, dynamic> json) =>
    AdminOrdersListRes(
      orders: (json['orders'] as List<dynamic>?)
              ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$AdminOrdersListResToJson(AdminOrdersListRes instance) =>
    <String, dynamic>{
      'orders': instance.orders.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
    };

AdminOrdersOrderLineItemReservationReq
    _$AdminOrdersOrderLineItemReservationReqFromJson(
            Map<String, dynamic> json) =>
        AdminOrdersOrderLineItemReservationReq(
          locationId: json['location_id'] as String? ?? 'default',
          quantity: (json['quantity'] as num?)?.toDouble(),
        );

Map<String, dynamic> _$AdminOrdersOrderLineItemReservationReqToJson(
    AdminOrdersOrderLineItemReservationReq instance) {
  final val = <String, dynamic>{
    'location_id': instance.locationId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('quantity', instance.quantity);
  return val;
}

AdminOrdersRes _$AdminOrdersResFromJson(Map<String, dynamic> json) =>
    AdminOrdersRes(
      order: Order.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminOrdersResToJson(AdminOrdersRes instance) =>
    <String, dynamic>{
      'order': instance.order.toJson(),
    };

AdminPaymentCollectionDeleteRes _$AdminPaymentCollectionDeleteResFromJson(
        Map<String, dynamic> json) =>
    AdminPaymentCollectionDeleteRes(
      id: json['id'] as String? ?? 'default',
      object: json['object'] as String? ?? 'default',
      deleted: json['deleted'] as bool? ?? true,
    );

Map<String, dynamic> _$AdminPaymentCollectionDeleteResToJson(
        AdminPaymentCollectionDeleteRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'deleted': instance.deleted,
    };

AdminPaymentCollectionsRes _$AdminPaymentCollectionsResFromJson(
        Map<String, dynamic> json) =>
    AdminPaymentCollectionsRes(
      paymentCollection: json['payment_collection'] == null
          ? null
          : PaymentCollection.fromJson(
              json['payment_collection'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminPaymentCollectionsResToJson(
    AdminPaymentCollectionsRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('payment_collection', instance.paymentCollection?.toJson());
  return val;
}

AdminPaymentProvidersList _$AdminPaymentProvidersListFromJson(
        Map<String, dynamic> json) =>
    AdminPaymentProvidersList(
      paymentProviders: (json['payment_providers'] as List<dynamic>?)
              ?.map((e) => PaymentProvider.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AdminPaymentProvidersListToJson(
        AdminPaymentProvidersList instance) =>
    <String, dynamic>{
      'payment_providers':
          instance.paymentProviders.map((e) => e.toJson()).toList(),
    };

AdminPaymentRes _$AdminPaymentResFromJson(Map<String, dynamic> json) =>
    AdminPaymentRes(
      payment: Payment.fromJson(json['payment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminPaymentResToJson(AdminPaymentRes instance) =>
    <String, dynamic>{
      'payment': instance.payment.toJson(),
    };

AdminPostAppsReq _$AdminPostAppsReqFromJson(Map<String, dynamic> json) =>
    AdminPostAppsReq(
      applicationName: json['application_name'] as String? ?? 'default',
      state: json['state'] as String? ?? 'default',
      code: json['code'] as String? ?? 'default',
    );

Map<String, dynamic> _$AdminPostAppsReqToJson(AdminPostAppsReq instance) =>
    <String, dynamic>{
      'application_name': instance.applicationName,
      'state': instance.state,
      'code': instance.code,
    };

AdminPostAuthReq _$AdminPostAuthReqFromJson(Map<String, dynamic> json) =>
    AdminPostAuthReq(
      email: json['email'] as String? ?? 'default',
      password: json['password'] as String? ?? 'default',
    );

Map<String, dynamic> _$AdminPostAuthReqToJson(AdminPostAuthReq instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

AdminPostBatchesReq _$AdminPostBatchesReqFromJson(Map<String, dynamic> json) =>
    AdminPostBatchesReq(
      type: json['type'] as String? ?? 'default',
      context: json['context'] as Object,
      dryRun: json['dry_run'] as bool? ?? false,
    );

Map<String, dynamic> _$AdminPostBatchesReqToJson(AdminPostBatchesReq instance) {
  final val = <String, dynamic>{
    'type': instance.type,
    'context': instance.context,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('dry_run', instance.dryRun);
  return val;
}

AdminPostCollectionsCollectionReq _$AdminPostCollectionsCollectionReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostCollectionsCollectionReq(
      title: json['title'] as String? ?? 'default',
      handle: json['handle'] as String? ?? 'default',
      metadata: json['metadata'],
    );

Map<String, dynamic> _$AdminPostCollectionsCollectionReqToJson(
    AdminPostCollectionsCollectionReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('handle', instance.handle);
  writeNotNull('metadata', instance.metadata);
  return val;
}

AdminPostCollectionsReq _$AdminPostCollectionsReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostCollectionsReq(
      title: json['title'] as String? ?? 'default',
      handle: json['handle'] as String? ?? 'default',
      metadata: json['metadata'],
    );

Map<String, dynamic> _$AdminPostCollectionsReqToJson(
    AdminPostCollectionsReq instance) {
  final val = <String, dynamic>{
    'title': instance.title,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('handle', instance.handle);
  writeNotNull('metadata', instance.metadata);
  return val;
}

AdminPostCurrenciesCurrencyReq _$AdminPostCurrenciesCurrencyReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostCurrenciesCurrencyReq(
      includesTax: json['includes_tax'] as bool?,
    );

Map<String, dynamic> _$AdminPostCurrenciesCurrencyReqToJson(
    AdminPostCurrenciesCurrencyReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('includes_tax', instance.includesTax);
  return val;
}

AdminPostCustomerGroupsGroupCustomersBatchReq
    _$AdminPostCustomerGroupsGroupCustomersBatchReqFromJson(
            Map<String, dynamic> json) =>
        AdminPostCustomerGroupsGroupCustomersBatchReq(
          customerIds: (json['customer_ids'] as List<dynamic>)
              .map((e) =>
                  AdminPostCustomerGroupsGroupCustomersBatchReq$CustomerIds$Item
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$AdminPostCustomerGroupsGroupCustomersBatchReqToJson(
        AdminPostCustomerGroupsGroupCustomersBatchReq instance) =>
    <String, dynamic>{
      'customer_ids': instance.customerIds.map((e) => e.toJson()).toList(),
    };

AdminPostCustomerGroupsGroupReq _$AdminPostCustomerGroupsGroupReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostCustomerGroupsGroupReq(
      name: json['name'] as String? ?? 'default',
      metadata: json['metadata'],
    );

Map<String, dynamic> _$AdminPostCustomerGroupsGroupReqToJson(
    AdminPostCustomerGroupsGroupReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('metadata', instance.metadata);
  return val;
}

AdminPostCustomerGroupsReq _$AdminPostCustomerGroupsReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostCustomerGroupsReq(
      name: json['name'] as String? ?? 'default',
      metadata: json['metadata'],
    );

Map<String, dynamic> _$AdminPostCustomerGroupsReqToJson(
    AdminPostCustomerGroupsReq instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('metadata', instance.metadata);
  return val;
}

AdminPostCustomersCustomerReq _$AdminPostCustomersCustomerReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostCustomersCustomerReq(
      email: json['email'] as String? ?? 'default',
      firstName: json['first_name'] as String? ?? 'default',
      lastName: json['last_name'] as String? ?? 'default',
      phone: json['phone'] as String? ?? 'default',
      password: json['password'] as String? ?? 'default',
      groups: (json['groups'] as List<dynamic>?)
          ?.map((e) => AdminPostCustomersCustomerReq$Groups$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$AdminPostCustomersCustomerReqToJson(
    AdminPostCustomersCustomerReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('phone', instance.phone);
  writeNotNull('password', instance.password);
  writeNotNull('groups', instance.groups?.map((e) => e.toJson()).toList());
  writeNotNull('metadata', instance.metadata);
  return val;
}

AdminPostCustomersReq _$AdminPostCustomersReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostCustomersReq(
      email: json['email'] as String? ?? 'default',
      firstName: json['first_name'] as String? ?? 'default',
      lastName: json['last_name'] as String? ?? 'default',
      password: json['password'] as String? ?? 'default',
      phone: json['phone'] as String? ?? 'default',
      metadata: json['metadata'],
    );

Map<String, dynamic> _$AdminPostCustomersReqToJson(
    AdminPostCustomersReq instance) {
  final val = <String, dynamic>{
    'email': instance.email,
    'first_name': instance.firstName,
    'last_name': instance.lastName,
    'password': instance.password,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('phone', instance.phone);
  writeNotNull('metadata', instance.metadata);
  return val;
}

AdminPostDiscountsDiscountConditions
    _$AdminPostDiscountsDiscountConditionsFromJson(Map<String, dynamic> json) =>
        AdminPostDiscountsDiscountConditions(
          $operator: adminPostDiscountsDiscountConditionsOperatorFromJson(
              json['operator']),
          products: (json['products'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
          productTypes: (json['product_types'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
          productCollections: (json['product_collections'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
          productTags: (json['product_tags'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
          customerGroups: (json['customer_groups'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
        );

Map<String, dynamic> _$AdminPostDiscountsDiscountConditionsToJson(
    AdminPostDiscountsDiscountConditions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('operator',
      adminPostDiscountsDiscountConditionsOperatorToJson(instance.$operator));
  writeNotNull('products', instance.products);
  writeNotNull('product_types', instance.productTypes);
  writeNotNull('product_collections', instance.productCollections);
  writeNotNull('product_tags', instance.productTags);
  writeNotNull('customer_groups', instance.customerGroups);
  return val;
}

AdminPostDiscountsDiscountConditionsCondition
    _$AdminPostDiscountsDiscountConditionsConditionFromJson(
            Map<String, dynamic> json) =>
        AdminPostDiscountsDiscountConditionsCondition(
          products: (json['products'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
          productTypes: (json['product_types'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
          productCollections: (json['product_collections'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
          productTags: (json['product_tags'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
          customerGroups: (json['customer_groups'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
        );

Map<String, dynamic> _$AdminPostDiscountsDiscountConditionsConditionToJson(
    AdminPostDiscountsDiscountConditionsCondition instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('products', instance.products);
  writeNotNull('product_types', instance.productTypes);
  writeNotNull('product_collections', instance.productCollections);
  writeNotNull('product_tags', instance.productTags);
  writeNotNull('customer_groups', instance.customerGroups);
  return val;
}

AdminPostDiscountsDiscountConditionsConditionBatchReq
    _$AdminPostDiscountsDiscountConditionsConditionBatchReqFromJson(
            Map<String, dynamic> json) =>
        AdminPostDiscountsDiscountConditionsConditionBatchReq(
          resources: (json['resources'] as List<dynamic>)
              .map((e) =>
                  AdminPostDiscountsDiscountConditionsConditionBatchReq$Resources$Item
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic>
    _$AdminPostDiscountsDiscountConditionsConditionBatchReqToJson(
            AdminPostDiscountsDiscountConditionsConditionBatchReq instance) =>
        <String, dynamic>{
          'resources': instance.resources.map((e) => e.toJson()).toList(),
        };

AdminPostDiscountsDiscountDynamicCodesReq
    _$AdminPostDiscountsDiscountDynamicCodesReqFromJson(
            Map<String, dynamic> json) =>
        AdminPostDiscountsDiscountDynamicCodesReq(
          code: json['code'] as String? ?? 'default',
          usageLimit: (json['usage_limit'] as num?)?.toDouble(),
          metadata: json['metadata'],
        );

Map<String, dynamic> _$AdminPostDiscountsDiscountDynamicCodesReqToJson(
    AdminPostDiscountsDiscountDynamicCodesReq instance) {
  final val = <String, dynamic>{
    'code': instance.code,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('usage_limit', instance.usageLimit);
  writeNotNull('metadata', instance.metadata);
  return val;
}

AdminPostDiscountsDiscountReq _$AdminPostDiscountsDiscountReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostDiscountsDiscountReq(
      code: json['code'] as String? ?? 'default',
      rule: json['rule'] == null
          ? null
          : AdminPostDiscountsDiscountReq$Rule.fromJson(
              json['rule'] as Map<String, dynamic>),
      isDisabled: json['is_disabled'] as bool?,
      startsAt: json['starts_at'] == null
          ? null
          : DateTime.parse(json['starts_at'] as String),
      endsAt: json['ends_at'] == null
          ? null
          : DateTime.parse(json['ends_at'] as String),
      validDuration: json['valid_duration'] as String? ?? 'default',
      usageLimit: (json['usage_limit'] as num?)?.toDouble(),
      regions: (json['regions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      metadata: json['metadata'],
    );

Map<String, dynamic> _$AdminPostDiscountsDiscountReqToJson(
    AdminPostDiscountsDiscountReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('rule', instance.rule?.toJson());
  writeNotNull('is_disabled', instance.isDisabled);
  writeNotNull('starts_at', instance.startsAt?.toIso8601String());
  writeNotNull('ends_at', instance.endsAt?.toIso8601String());
  writeNotNull('valid_duration', instance.validDuration);
  writeNotNull('usage_limit', instance.usageLimit);
  writeNotNull('regions', instance.regions);
  writeNotNull('metadata', instance.metadata);
  return val;
}

AdminPostDiscountsReq _$AdminPostDiscountsReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostDiscountsReq(
      code: json['code'] as String? ?? 'default',
      isDynamic: json['is_dynamic'] as bool? ?? false,
      rule: AdminPostDiscountsReq$Rule.fromJson(
          json['rule'] as Map<String, dynamic>),
      isDisabled: json['is_disabled'] as bool? ?? false,
      startsAt: json['starts_at'] == null
          ? null
          : DateTime.parse(json['starts_at'] as String),
      endsAt: json['ends_at'] == null
          ? null
          : DateTime.parse(json['ends_at'] as String),
      validDuration: json['valid_duration'] as String? ?? 'default',
      regions: (json['regions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      usageLimit: (json['usage_limit'] as num?)?.toDouble(),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$AdminPostDiscountsReqToJson(
    AdminPostDiscountsReq instance) {
  final val = <String, dynamic>{
    'code': instance.code,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('is_dynamic', instance.isDynamic);
  val['rule'] = instance.rule.toJson();
  writeNotNull('is_disabled', instance.isDisabled);
  writeNotNull('starts_at', instance.startsAt?.toIso8601String());
  writeNotNull('ends_at', instance.endsAt?.toIso8601String());
  writeNotNull('valid_duration', instance.validDuration);
  val['regions'] = instance.regions;
  writeNotNull('usage_limit', instance.usageLimit);
  writeNotNull('metadata', instance.metadata);
  return val;
}

AdminPostDraftOrdersDraftOrderLineItemsItemReq
    _$AdminPostDraftOrdersDraftOrderLineItemsItemReqFromJson(
            Map<String, dynamic> json) =>
        AdminPostDraftOrdersDraftOrderLineItemsItemReq(
          unitPrice: json['unit_price'] as int? ?? 36,
          title: json['title'] as String? ?? 'default',
          quantity: json['quantity'] as int? ?? 36,
          metadata: json['metadata'],
        );

Map<String, dynamic> _$AdminPostDraftOrdersDraftOrderLineItemsItemReqToJson(
    AdminPostDraftOrdersDraftOrderLineItemsItemReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('unit_price', instance.unitPrice);
  writeNotNull('title', instance.title);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('metadata', instance.metadata);
  return val;
}

AdminPostDraftOrdersDraftOrderLineItemsReq
    _$AdminPostDraftOrdersDraftOrderLineItemsReqFromJson(
            Map<String, dynamic> json) =>
        AdminPostDraftOrdersDraftOrderLineItemsReq(
          variantId: json['variant_id'] as String? ?? 'default',
          unitPrice: json['unit_price'] as int? ?? 36,
          title: json['title'] as String? ?? 'default',
          quantity: json['quantity'] as int? ?? 36,
          metadata: json['metadata'],
        );

Map<String, dynamic> _$AdminPostDraftOrdersDraftOrderLineItemsReqToJson(
    AdminPostDraftOrdersDraftOrderLineItemsReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('variant_id', instance.variantId);
  writeNotNull('unit_price', instance.unitPrice);
  writeNotNull('title', instance.title);
  val['quantity'] = instance.quantity;
  writeNotNull('metadata', instance.metadata);
  return val;
}

AdminPostDraftOrdersDraftOrderRegisterPaymentRes
    _$AdminPostDraftOrdersDraftOrderRegisterPaymentResFromJson(
            Map<String, dynamic> json) =>
        AdminPostDraftOrdersDraftOrderRegisterPaymentRes(
          order: Order.fromJson(json['order'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AdminPostDraftOrdersDraftOrderRegisterPaymentResToJson(
        AdminPostDraftOrdersDraftOrderRegisterPaymentRes instance) =>
    <String, dynamic>{
      'order': instance.order.toJson(),
    };

AdminPostDraftOrdersDraftOrderReq _$AdminPostDraftOrdersDraftOrderReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostDraftOrdersDraftOrderReq(
      regionId: json['region_id'] as String? ?? 'default',
      countryCode: json['country_code'] as String? ?? 'default',
      email: json['email'] as String? ?? 'default',
      billingAddress: json['billingAddress'],
      shippingAddress: json['shippingAddress'],
      discounts: (json['discounts'] as List<dynamic>?)
          ?.map((e) =>
              AdminPostDraftOrdersDraftOrderReq$Discounts$Item.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      noNotificationOrder: json['no_notification_order'] as bool?,
      customerId: json['customer_id'] as String? ?? 'default',
    );

Map<String, dynamic> _$AdminPostDraftOrdersDraftOrderReqToJson(
    AdminPostDraftOrdersDraftOrderReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('region_id', instance.regionId);
  writeNotNull('country_code', instance.countryCode);
  writeNotNull('email', instance.email);
  writeNotNull('billingAddress', instance.billingAddress);
  writeNotNull('shippingAddress', instance.shippingAddress);
  writeNotNull(
      'discounts', instance.discounts?.map((e) => e.toJson()).toList());
  writeNotNull('no_notification_order', instance.noNotificationOrder);
  writeNotNull('customer_id', instance.customerId);
  return val;
}

AdminPostDraftOrdersReq _$AdminPostDraftOrdersReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostDraftOrdersReq(
      status: adminPostDraftOrdersReqStatusNullableFromJson(json['status']),
      email: json['email'] as String? ?? 'default',
      billingAddress: json['billingAddress'],
      shippingAddress: json['shippingAddress'],
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => AdminPostDraftOrdersReq$Items$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      regionId: json['region_id'] as String? ?? 'default',
      discounts: (json['discounts'] as List<dynamic>?)
          ?.map((e) => AdminPostDraftOrdersReq$Discounts$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      customerId: json['customer_id'] as String? ?? 'default',
      noNotificationOrder: json['no_notification_order'] as bool?,
      shippingMethods: (json['shipping_methods'] as List<dynamic>)
          .map((e) => AdminPostDraftOrdersReq$ShippingMethods$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$AdminPostDraftOrdersReqToJson(
    AdminPostDraftOrdersReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'status', adminPostDraftOrdersReqStatusNullableToJson(instance.status));
  val['email'] = instance.email;
  writeNotNull('billingAddress', instance.billingAddress);
  writeNotNull('shippingAddress', instance.shippingAddress);
  writeNotNull('items', instance.items?.map((e) => e.toJson()).toList());
  val['region_id'] = instance.regionId;
  writeNotNull(
      'discounts', instance.discounts?.map((e) => e.toJson()).toList());
  writeNotNull('customer_id', instance.customerId);
  writeNotNull('no_notification_order', instance.noNotificationOrder);
  val['shipping_methods'] =
      instance.shippingMethods.map((e) => e.toJson()).toList();
  writeNotNull('metadata', instance.metadata);
  return val;
}

AdminPostGiftCardsGiftCardReq _$AdminPostGiftCardsGiftCardReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostGiftCardsGiftCardReq(
      balance: json['balance'] as int? ?? 36,
      isDisabled: json['is_disabled'] as bool?,
      endsAt: json['ends_at'] == null
          ? null
          : DateTime.parse(json['ends_at'] as String),
      regionId: json['region_id'] as String? ?? 'default',
      metadata: json['metadata'],
    );

Map<String, dynamic> _$AdminPostGiftCardsGiftCardReqToJson(
    AdminPostGiftCardsGiftCardReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('balance', instance.balance);
  writeNotNull('is_disabled', instance.isDisabled);
  writeNotNull('ends_at', instance.endsAt?.toIso8601String());
  writeNotNull('region_id', instance.regionId);
  writeNotNull('metadata', instance.metadata);
  return val;
}

AdminPostGiftCardsReq _$AdminPostGiftCardsReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostGiftCardsReq(
      value: json['value'] as int? ?? 36,
      isDisabled: json['is_disabled'] as bool?,
      endsAt: json['ends_at'] == null
          ? null
          : DateTime.parse(json['ends_at'] as String),
      regionId: json['region_id'] as String? ?? 'default',
      metadata: json['metadata'],
    );

Map<String, dynamic> _$AdminPostGiftCardsReqToJson(
    AdminPostGiftCardsReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('value', instance.value);
  writeNotNull('is_disabled', instance.isDisabled);
  writeNotNull('ends_at', instance.endsAt?.toIso8601String());
  val['region_id'] = instance.regionId;
  writeNotNull('metadata', instance.metadata);
  return val;
}

AdminPostInventoryItemsInventoryItemReq
    _$AdminPostInventoryItemsInventoryItemReqFromJson(
            Map<String, dynamic> json) =>
        AdminPostInventoryItemsInventoryItemReq(
          hsCode: json['hs_code'] as String? ?? 'default',
          originCountry: json['origin_country'] as String? ?? 'default',
          midCode: json['mid_code'] as String? ?? 'default',
          material: json['material'] as String? ?? 'default',
          weight: (json['weight'] as num?)?.toDouble(),
          height: (json['height'] as num?)?.toDouble(),
          width: (json['width'] as num?)?.toDouble(),
          length: (json['length'] as num?)?.toDouble(),
          title: json['title'] as String? ?? 'default',
          description: json['description'] as String? ?? 'default',
          thumbnail: json['thumbnail'] as String? ?? 'default',
          requiresShipping: json['requires_shipping'] as bool?,
        );

Map<String, dynamic> _$AdminPostInventoryItemsInventoryItemReqToJson(
    AdminPostInventoryItemsInventoryItemReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hs_code', instance.hsCode);
  writeNotNull('origin_country', instance.originCountry);
  writeNotNull('mid_code', instance.midCode);
  writeNotNull('material', instance.material);
  writeNotNull('weight', instance.weight);
  writeNotNull('height', instance.height);
  writeNotNull('width', instance.width);
  writeNotNull('length', instance.length);
  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('thumbnail', instance.thumbnail);
  writeNotNull('requires_shipping', instance.requiresShipping);
  return val;
}

AdminPostInventoryItemsItemLocationLevelsLevelReq
    _$AdminPostInventoryItemsItemLocationLevelsLevelReqFromJson(
            Map<String, dynamic> json) =>
        AdminPostInventoryItemsItemLocationLevelsLevelReq(
          stockedQuantity: (json['stocked_quantity'] as num?)?.toDouble(),
          incomingQuantity: (json['incoming_quantity'] as num?)?.toDouble(),
        );

Map<String, dynamic> _$AdminPostInventoryItemsItemLocationLevelsLevelReqToJson(
    AdminPostInventoryItemsItemLocationLevelsLevelReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('stocked_quantity', instance.stockedQuantity);
  writeNotNull('incoming_quantity', instance.incomingQuantity);
  return val;
}

AdminPostInventoryItemsItemLocationLevelsReq
    _$AdminPostInventoryItemsItemLocationLevelsReqFromJson(
            Map<String, dynamic> json) =>
        AdminPostInventoryItemsItemLocationLevelsReq(
          locationId: json['location_id'] as String? ?? 'default',
          stockedQuantity: (json['stocked_quantity'] as num).toDouble(),
          incomingQuantity: (json['incoming_quantity'] as num?)?.toDouble(),
        );

Map<String, dynamic> _$AdminPostInventoryItemsItemLocationLevelsReqToJson(
    AdminPostInventoryItemsItemLocationLevelsReq instance) {
  final val = <String, dynamic>{
    'location_id': instance.locationId,
    'stocked_quantity': instance.stockedQuantity,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('incoming_quantity', instance.incomingQuantity);
  return val;
}

AdminPostInventoryItemsReq _$AdminPostInventoryItemsReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostInventoryItemsReq(
      variantId: json['variant_id'] as String? ?? 'default',
      sku: json['sku'] as String? ?? 'default',
      ean: json['ean'] as String? ?? 'default',
      upc: json['upc'] as String? ?? 'default',
      barcode: json['barcode'] as String? ?? 'default',
      hsCode: json['hs_code'] as String? ?? 'default',
      inventoryQuantity: json['inventory_quantity'] as int? ?? 36,
      allowBackorder: json['allow_backorder'] as bool?,
      manageInventory: json['manage_inventory'] as bool? ?? true,
      weight: (json['weight'] as num?)?.toDouble(),
      length: (json['length'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      width: (json['width'] as num?)?.toDouble(),
      originCountry: json['origin_country'] as String? ?? 'default',
      midCode: json['mid_code'] as String? ?? 'default',
      material: json['material'] as String? ?? 'default',
      title: json['title'] as String? ?? 'default',
      description: json['description'] as String? ?? 'default',
      thumbnail: json['thumbnail'] as String? ?? 'default',
      metadata: json['metadata'],
    );

Map<String, dynamic> _$AdminPostInventoryItemsReqToJson(
    AdminPostInventoryItemsReq instance) {
  final val = <String, dynamic>{
    'variant_id': instance.variantId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sku', instance.sku);
  writeNotNull('ean', instance.ean);
  writeNotNull('upc', instance.upc);
  writeNotNull('barcode', instance.barcode);
  writeNotNull('hs_code', instance.hsCode);
  writeNotNull('inventory_quantity', instance.inventoryQuantity);
  writeNotNull('allow_backorder', instance.allowBackorder);
  writeNotNull('manage_inventory', instance.manageInventory);
  writeNotNull('weight', instance.weight);
  writeNotNull('length', instance.length);
  writeNotNull('height', instance.height);
  writeNotNull('width', instance.width);
  writeNotNull('origin_country', instance.originCountry);
  writeNotNull('mid_code', instance.midCode);
  writeNotNull('material', instance.material);
  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('thumbnail', instance.thumbnail);
  writeNotNull('metadata', instance.metadata);
  return val;
}

AdminPostInvitesInviteAcceptReq _$AdminPostInvitesInviteAcceptReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostInvitesInviteAcceptReq(
      token: json['token'] as String? ?? 'default',
      user: AdminPostInvitesInviteAcceptReq$User.fromJson(
          json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminPostInvitesInviteAcceptReqToJson(
        AdminPostInvitesInviteAcceptReq instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user.toJson(),
    };

AdminPostInvitesReq _$AdminPostInvitesReqFromJson(Map<String, dynamic> json) =>
    AdminPostInvitesReq(
      user: json['user'] as String? ?? 'default',
      role: adminPostInvitesReqRoleFromJson(json['role']),
    );

Map<String, dynamic> _$AdminPostInvitesReqToJson(AdminPostInvitesReq instance) {
  final val = <String, dynamic>{
    'user': instance.user,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('role', adminPostInvitesReqRoleToJson(instance.role));
  return val;
}

AdminPostNotesNoteReq _$AdminPostNotesNoteReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostNotesNoteReq(
      value: json['value'] as String? ?? 'default',
    );

Map<String, dynamic> _$AdminPostNotesNoteReqToJson(
        AdminPostNotesNoteReq instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

AdminPostNotesReq _$AdminPostNotesReqFromJson(Map<String, dynamic> json) =>
    AdminPostNotesReq(
      resourceId: json['resource_id'] as String? ?? 'default',
      resourceType: json['resource_type'] as String? ?? 'default',
      value: json['value'] as String? ?? 'default',
    );

Map<String, dynamic> _$AdminPostNotesReqToJson(AdminPostNotesReq instance) =>
    <String, dynamic>{
      'resource_id': instance.resourceId,
      'resource_type': instance.resourceType,
      'value': instance.value,
    };

AdminPostNotificationsNotificationResendReq
    _$AdminPostNotificationsNotificationResendReqFromJson(
            Map<String, dynamic> json) =>
        AdminPostNotificationsNotificationResendReq(
          to: json['to'] as String? ?? 'default',
        );

Map<String, dynamic> _$AdminPostNotificationsNotificationResendReqToJson(
    AdminPostNotificationsNotificationResendReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('to', instance.to);
  return val;
}

AdminPostOrderEditsEditLineItemsLineItemReq
    _$AdminPostOrderEditsEditLineItemsLineItemReqFromJson(
            Map<String, dynamic> json) =>
        AdminPostOrderEditsEditLineItemsLineItemReq(
          quantity: (json['quantity'] as num).toDouble(),
        );

Map<String, dynamic> _$AdminPostOrderEditsEditLineItemsLineItemReqToJson(
        AdminPostOrderEditsEditLineItemsLineItemReq instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
    };

AdminPostOrderEditsEditLineItemsReq
    _$AdminPostOrderEditsEditLineItemsReqFromJson(Map<String, dynamic> json) =>
        AdminPostOrderEditsEditLineItemsReq(
          variantId: json['variant_id'] as String? ?? 'default',
          quantity: (json['quantity'] as num).toDouble(),
          metadata: json['metadata'],
        );

Map<String, dynamic> _$AdminPostOrderEditsEditLineItemsReqToJson(
    AdminPostOrderEditsEditLineItemsReq instance) {
  final val = <String, dynamic>{
    'variant_id': instance.variantId,
    'quantity': instance.quantity,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('metadata', instance.metadata);
  return val;
}

AdminPostOrderEditsOrderEditReq _$AdminPostOrderEditsOrderEditReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostOrderEditsOrderEditReq(
      internalNote: json['internal_note'] as String? ?? 'default',
    );

Map<String, dynamic> _$AdminPostOrderEditsOrderEditReqToJson(
    AdminPostOrderEditsOrderEditReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('internal_note', instance.internalNote);
  return val;
}

AdminPostOrderEditsReq _$AdminPostOrderEditsReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostOrderEditsReq(
      orderId: json['order_id'] as String? ?? 'default',
      internalNote: json['internal_note'] as String? ?? 'default',
    );

Map<String, dynamic> _$AdminPostOrderEditsReqToJson(
    AdminPostOrderEditsReq instance) {
  final val = <String, dynamic>{
    'order_id': instance.orderId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('internal_note', instance.internalNote);
  return val;
}

AdminPostOrdersOrderClaimsClaimFulfillmentsReq
    _$AdminPostOrdersOrderClaimsClaimFulfillmentsReqFromJson(
            Map<String, dynamic> json) =>
        AdminPostOrdersOrderClaimsClaimFulfillmentsReq(
          metadata: json['metadata'],
          noNotification: json['no_notification'] as bool?,
          locationId: json['location_id'] as String? ?? 'default',
        );

Map<String, dynamic> _$AdminPostOrdersOrderClaimsClaimFulfillmentsReqToJson(
    AdminPostOrdersOrderClaimsClaimFulfillmentsReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('metadata', instance.metadata);
  writeNotNull('no_notification', instance.noNotification);
  writeNotNull('location_id', instance.locationId);
  return val;
}

AdminPostOrdersOrderClaimsClaimReq _$AdminPostOrdersOrderClaimsClaimReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostOrdersOrderClaimsClaimReq(
      claimItems: (json['claim_items'] as List<dynamic>?)
          ?.map((e) =>
              AdminPostOrdersOrderClaimsClaimReq$ClaimItems$Item.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      shippingMethods: (json['shipping_methods'] as List<dynamic>?)
          ?.map((e) =>
              AdminPostOrdersOrderClaimsClaimReq$ShippingMethods$Item.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      noNotification: json['no_notification'] as bool?,
      metadata: json['metadata'],
    );

Map<String, dynamic> _$AdminPostOrdersOrderClaimsClaimReqToJson(
    AdminPostOrdersOrderClaimsClaimReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'claim_items', instance.claimItems?.map((e) => e.toJson()).toList());
  writeNotNull('shipping_methods',
      instance.shippingMethods?.map((e) => e.toJson()).toList());
  writeNotNull('no_notification', instance.noNotification);
  writeNotNull('metadata', instance.metadata);
  return val;
}

AdminPostOrdersOrderClaimsClaimShipmentsReq
    _$AdminPostOrdersOrderClaimsClaimShipmentsReqFromJson(
            Map<String, dynamic> json) =>
        AdminPostOrdersOrderClaimsClaimShipmentsReq(
          fulfillmentId: json['fulfillment_id'] as String? ?? 'default',
          trackingNumbers: (json['tracking_numbers'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
        );

Map<String, dynamic> _$AdminPostOrdersOrderClaimsClaimShipmentsReqToJson(
    AdminPostOrdersOrderClaimsClaimShipmentsReq instance) {
  final val = <String, dynamic>{
    'fulfillment_id': instance.fulfillmentId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tracking_numbers', instance.trackingNumbers);
  return val;
}

AdminPostOrdersOrderClaimsReq _$AdminPostOrdersOrderClaimsReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostOrdersOrderClaimsReq(
      type: adminPostOrdersOrderClaimsReqTypeFromJson(json['type']),
      claimItems: (json['claim_items'] as List<dynamic>)
          .map((e) => AdminPostOrdersOrderClaimsReq$ClaimItems$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      returnShipping: json['return_shipping'] == null
          ? null
          : AdminPostOrdersOrderClaimsReq$ReturnShipping.fromJson(
              json['return_shipping'] as Map<String, dynamic>),
      additionalItems: (json['additional_items'] as List<dynamic>?)
          ?.map((e) =>
              AdminPostOrdersOrderClaimsReq$AdditionalItems$Item.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      shippingMethods: (json['shipping_methods'] as List<dynamic>?)
          ?.map((e) =>
              AdminPostOrdersOrderClaimsReq$ShippingMethods$Item.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      shippingAddress: json['shipping_address'] == null
          ? null
          : AddressPayload.fromJson(
              json['shipping_address'] as Map<String, dynamic>),
      refundAmount: json['refund_amount'] as int? ?? 36,
      noNotification: json['no_notification'] as bool?,
      returnLocationId: json['return_location_id'] as String? ?? 'default',
      metadata: json['metadata'],
    );

Map<String, dynamic> _$AdminPostOrdersOrderClaimsReqToJson(
    AdminPostOrdersOrderClaimsReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', adminPostOrdersOrderClaimsReqTypeToJson(instance.type));
  val['claim_items'] = instance.claimItems.map((e) => e.toJson()).toList();
  writeNotNull('return_shipping', instance.returnShipping?.toJson());
  writeNotNull('additional_items',
      instance.additionalItems?.map((e) => e.toJson()).toList());
  writeNotNull('shipping_methods',
      instance.shippingMethods?.map((e) => e.toJson()).toList());
  writeNotNull('shipping_address', instance.shippingAddress?.toJson());
  writeNotNull('refund_amount', instance.refundAmount);
  writeNotNull('no_notification', instance.noNotification);
  writeNotNull('return_location_id', instance.returnLocationId);
  writeNotNull('metadata', instance.metadata);
  return val;
}

AdminPostOrdersOrderFulfillmentsReq
    _$AdminPostOrdersOrderFulfillmentsReqFromJson(Map<String, dynamic> json) =>
        AdminPostOrdersOrderFulfillmentsReq(
          items: (json['items'] as List<dynamic>)
              .map((e) =>
                  AdminPostOrdersOrderFulfillmentsReq$Items$Item.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          locationId: json['location_id'] as String? ?? 'default',
          noNotification: json['no_notification'] as bool?,
          metadata: json['metadata'],
        );

Map<String, dynamic> _$AdminPostOrdersOrderFulfillmentsReqToJson(
    AdminPostOrdersOrderFulfillmentsReq instance) {
  final val = <String, dynamic>{
    'items': instance.items.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('location_id', instance.locationId);
  writeNotNull('no_notification', instance.noNotification);
  writeNotNull('metadata', instance.metadata);
  return val;
}

AdminPostOrdersOrderRefundsReq _$AdminPostOrdersOrderRefundsReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostOrdersOrderRefundsReq(
      amount: json['amount'] as int? ?? 36,
      reason: json['reason'] as String? ?? 'default',
      note: json['note'] as String? ?? 'default',
      noNotification: json['no_notification'] as bool?,
    );

Map<String, dynamic> _$AdminPostOrdersOrderRefundsReqToJson(
    AdminPostOrdersOrderRefundsReq instance) {
  final val = <String, dynamic>{
    'amount': instance.amount,
    'reason': instance.reason,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('note', instance.note);
  writeNotNull('no_notification', instance.noNotification);
  return val;
}

AdminPostOrdersOrderReq _$AdminPostOrdersOrderReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostOrdersOrderReq(
      email: json['email'] as String? ?? 'default',
      billingAddress: json['billing_address'] == null
          ? null
          : AddressPayload.fromJson(
              json['billing_address'] as Map<String, dynamic>),
      shippingAddress: json['shipping_address'] == null
          ? null
          : AddressPayload.fromJson(
              json['shipping_address'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      region: json['region'] as String? ?? 'default',
      discounts: (json['discounts'] as List<dynamic>?)
              ?.map((e) => Discount.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      customerId: json['customer_id'] as String? ?? 'default',
      paymentMethod: json['payment_method'] == null
          ? null
          : AdminPostOrdersOrderReq$PaymentMethod.fromJson(
              json['payment_method'] as Map<String, dynamic>),
      shippingMethod: json['shipping_method'] == null
          ? null
          : AdminPostOrdersOrderReq$ShippingMethod.fromJson(
              json['shipping_method'] as Map<String, dynamic>),
      noNotification: json['no_notification'] as bool?,
    );

Map<String, dynamic> _$AdminPostOrdersOrderReqToJson(
    AdminPostOrdersOrderReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  writeNotNull('billing_address', instance.billingAddress?.toJson());
  writeNotNull('shipping_address', instance.shippingAddress?.toJson());
  writeNotNull('items', instance.items?.map((e) => e.toJson()).toList());
  writeNotNull('region', instance.region);
  writeNotNull(
      'discounts', instance.discounts?.map((e) => e.toJson()).toList());
  writeNotNull('customer_id', instance.customerId);
  writeNotNull('payment_method', instance.paymentMethod?.toJson());
  writeNotNull('shipping_method', instance.shippingMethod?.toJson());
  writeNotNull('no_notification', instance.noNotification);
  return val;
}

AdminPostOrdersOrderReturnsReq _$AdminPostOrdersOrderReturnsReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostOrdersOrderReturnsReq(
      items: (json['items'] as List<dynamic>)
          .map((e) => AdminPostOrdersOrderReturnsReq$Items$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      returnShipping: json['return_shipping'] == null
          ? null
          : AdminPostOrdersOrderReturnsReq$ReturnShipping.fromJson(
              json['return_shipping'] as Map<String, dynamic>),
      note: json['note'] as String? ?? 'default',
      receiveNow: json['receive_now'] as bool? ?? false,
      noNotification: json['no_notification'] as bool?,
      refund: json['refund'] as int? ?? 36,
      locationId: json['location_id'] as String? ?? 'default',
    );

Map<String, dynamic> _$AdminPostOrdersOrderReturnsReqToJson(
    AdminPostOrdersOrderReturnsReq instance) {
  final val = <String, dynamic>{
    'items': instance.items.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('return_shipping', instance.returnShipping?.toJson());
  writeNotNull('note', instance.note);
  writeNotNull('receive_now', instance.receiveNow);
  writeNotNull('no_notification', instance.noNotification);
  writeNotNull('refund', instance.refund);
  writeNotNull('location_id', instance.locationId);
  return val;
}

AdminPostOrdersOrderShipmentReq _$AdminPostOrdersOrderShipmentReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostOrdersOrderShipmentReq(
      fulfillmentId: json['fulfillment_id'] as String? ?? 'default',
      trackingNumbers: (json['tracking_numbers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      noNotification: json['no_notification'] as bool?,
    );

Map<String, dynamic> _$AdminPostOrdersOrderShipmentReqToJson(
    AdminPostOrdersOrderShipmentReq instance) {
  final val = <String, dynamic>{
    'fulfillment_id': instance.fulfillmentId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tracking_numbers', instance.trackingNumbers);
  writeNotNull('no_notification', instance.noNotification);
  return val;
}

AdminPostOrdersOrderShippingMethodsReq
    _$AdminPostOrdersOrderShippingMethodsReqFromJson(
            Map<String, dynamic> json) =>
        AdminPostOrdersOrderShippingMethodsReq(
          price: (json['price'] as num).toDouble(),
          optionId: json['option_id'] as String? ?? 'default',
          data: json['data'],
        );

Map<String, dynamic> _$AdminPostOrdersOrderShippingMethodsReqToJson(
    AdminPostOrdersOrderShippingMethodsReq instance) {
  final val = <String, dynamic>{
    'price': instance.price,
    'option_id': instance.optionId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  return val;
}

AdminPostOrdersOrderSwapsReq _$AdminPostOrdersOrderSwapsReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostOrdersOrderSwapsReq(
      returnItems: (json['return_items'] as List<dynamic>)
          .map((e) => AdminPostOrdersOrderSwapsReq$ReturnItems$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      returnShipping: json['return_shipping'] == null
          ? null
          : AdminPostOrdersOrderSwapsReq$ReturnShipping.fromJson(
              json['return_shipping'] as Map<String, dynamic>),
      additionalItems: (json['additional_items'] as List<dynamic>?)
          ?.map((e) =>
              AdminPostOrdersOrderSwapsReq$AdditionalItems$Item.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      salesChannelId: json['sales_channel_id'] as String? ?? 'default',
      customShippingOptions: (json['custom_shipping_options'] as List<dynamic>?)
          ?.map((e) =>
              AdminPostOrdersOrderSwapsReq$CustomShippingOptions$Item.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      noNotification: json['no_notification'] as bool?,
      returnLocationId: json['return_location_id'] as String? ?? 'default',
      allowBackorder: json['allow_backorder'] as bool? ?? true,
    );

Map<String, dynamic> _$AdminPostOrdersOrderSwapsReqToJson(
    AdminPostOrdersOrderSwapsReq instance) {
  final val = <String, dynamic>{
    'return_items': instance.returnItems.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('return_shipping', instance.returnShipping?.toJson());
  writeNotNull('additional_items',
      instance.additionalItems?.map((e) => e.toJson()).toList());
  writeNotNull('sales_channel_id', instance.salesChannelId);
  writeNotNull('custom_shipping_options',
      instance.customShippingOptions?.map((e) => e.toJson()).toList());
  writeNotNull('no_notification', instance.noNotification);
  writeNotNull('return_location_id', instance.returnLocationId);
  writeNotNull('allow_backorder', instance.allowBackorder);
  return val;
}

AdminPostOrdersOrderSwapsSwapFulfillmentsReq
    _$AdminPostOrdersOrderSwapsSwapFulfillmentsReqFromJson(
            Map<String, dynamic> json) =>
        AdminPostOrdersOrderSwapsSwapFulfillmentsReq(
          metadata: json['metadata'],
          noNotification: json['no_notification'] as bool?,
          locationId: json['location_id'] as String? ?? 'default',
        );

Map<String, dynamic> _$AdminPostOrdersOrderSwapsSwapFulfillmentsReqToJson(
    AdminPostOrdersOrderSwapsSwapFulfillmentsReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('metadata', instance.metadata);
  writeNotNull('no_notification', instance.noNotification);
  writeNotNull('location_id', instance.locationId);
  return val;
}

AdminPostOrdersOrderSwapsSwapShipmentsReq
    _$AdminPostOrdersOrderSwapsSwapShipmentsReqFromJson(
            Map<String, dynamic> json) =>
        AdminPostOrdersOrderSwapsSwapShipmentsReq(
          fulfillmentId: json['fulfillment_id'] as String? ?? 'default',
          trackingNumbers: (json['tracking_numbers'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
          noNotification: json['no_notification'] as bool?,
        );

Map<String, dynamic> _$AdminPostOrdersOrderSwapsSwapShipmentsReqToJson(
    AdminPostOrdersOrderSwapsSwapShipmentsReq instance) {
  final val = <String, dynamic>{
    'fulfillment_id': instance.fulfillmentId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tracking_numbers', instance.trackingNumbers);
  writeNotNull('no_notification', instance.noNotification);
  return val;
}

AdminPostPaymentRefundsReq _$AdminPostPaymentRefundsReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostPaymentRefundsReq(
      amount: json['amount'] as int? ?? 36,
      reason: json['reason'] as String? ?? 'default',
      note: json['note'] as String? ?? 'default',
    );

Map<String, dynamic> _$AdminPostPaymentRefundsReqToJson(
    AdminPostPaymentRefundsReq instance) {
  final val = <String, dynamic>{
    'amount': instance.amount,
    'reason': instance.reason,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('note', instance.note);
  return val;
}

AdminPostPriceListPricesPricesReq _$AdminPostPriceListPricesPricesReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostPriceListPricesPricesReq(
      prices: (json['prices'] as List<dynamic>?)
          ?.map((e) => AdminPostPriceListPricesPricesReq$Prices$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      override: json['override'] as bool?,
    );

Map<String, dynamic> _$AdminPostPriceListPricesPricesReqToJson(
    AdminPostPriceListPricesPricesReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('prices', instance.prices?.map((e) => e.toJson()).toList());
  writeNotNull('override', instance.override);
  return val;
}

AdminPostPriceListsPriceListPriceListReq
    _$AdminPostPriceListsPriceListPriceListReqFromJson(
            Map<String, dynamic> json) =>
        AdminPostPriceListsPriceListPriceListReq(
          name: json['name'] as String? ?? 'default',
          description: json['description'] as String? ?? 'default',
          startsAt: json['starts_at'] == null
              ? null
              : DateTime.parse(json['starts_at'] as String),
          endsAt: json['ends_at'] == null
              ? null
              : DateTime.parse(json['ends_at'] as String),
          type: adminPostPriceListsPriceListPriceListReqTypeNullableFromJson(
              json['type']),
          status:
              adminPostPriceListsPriceListPriceListReqStatusNullableFromJson(
                  json['status']),
          prices: (json['prices'] as List<dynamic>?)
              ?.map((e) =>
                  AdminPostPriceListsPriceListPriceListReq$Prices$Item.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          customerGroups: (json['customer_groups'] as List<dynamic>?)
              ?.map((e) =>
                  AdminPostPriceListsPriceListPriceListReq$CustomerGroups$Item
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          includesTax: json['includes_tax'] as bool?,
        );

Map<String, dynamic> _$AdminPostPriceListsPriceListPriceListReqToJson(
    AdminPostPriceListsPriceListPriceListReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  writeNotNull('starts_at', _dateToJson(instance.startsAt));
  writeNotNull('ends_at', _dateToJson(instance.endsAt));
  writeNotNull(
      'type',
      adminPostPriceListsPriceListPriceListReqTypeNullableToJson(
          instance.type));
  writeNotNull(
      'status',
      adminPostPriceListsPriceListPriceListReqStatusNullableToJson(
          instance.status));
  writeNotNull('prices', instance.prices?.map((e) => e.toJson()).toList());
  writeNotNull('customer_groups',
      instance.customerGroups?.map((e) => e.toJson()).toList());
  writeNotNull('includes_tax', instance.includesTax);
  return val;
}

AdminPostPriceListsPriceListReq _$AdminPostPriceListsPriceListReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostPriceListsPriceListReq(
      name: json['name'] as String? ?? 'default',
      description: json['description'] as String? ?? 'default',
      startsAt: json['starts_at'] == null
          ? null
          : DateTime.parse(json['starts_at'] as String),
      endsAt: json['ends_at'] == null
          ? null
          : DateTime.parse(json['ends_at'] as String),
      type: adminPostPriceListsPriceListReqTypeFromJson(json['type']),
      status:
          adminPostPriceListsPriceListReqStatusNullableFromJson(json['status']),
      prices: (json['prices'] as List<dynamic>)
          .map((e) => AdminPostPriceListsPriceListReq$Prices$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      customerGroups: (json['customer_groups'] as List<dynamic>?)
          ?.map((e) =>
              AdminPostPriceListsPriceListReq$CustomerGroups$Item.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      includesTax: json['includes_tax'] as bool?,
    );

Map<String, dynamic> _$AdminPostPriceListsPriceListReqToJson(
    AdminPostPriceListsPriceListReq instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'description': instance.description,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('starts_at', _dateToJson(instance.startsAt));
  writeNotNull('ends_at', _dateToJson(instance.endsAt));
  writeNotNull(
      'type', adminPostPriceListsPriceListReqTypeToJson(instance.type));
  writeNotNull('status',
      adminPostPriceListsPriceListReqStatusNullableToJson(instance.status));
  val['prices'] = instance.prices.map((e) => e.toJson()).toList();
  writeNotNull('customer_groups',
      instance.customerGroups?.map((e) => e.toJson()).toList());
  writeNotNull('includes_tax', instance.includesTax);
  return val;
}

AdminPostProductCategoriesCategoryProductsBatchReq
    _$AdminPostProductCategoriesCategoryProductsBatchReqFromJson(
            Map<String, dynamic> json) =>
        AdminPostProductCategoriesCategoryProductsBatchReq(
          productIds: (json['product_ids'] as List<dynamic>)
              .map((e) =>
                  AdminPostProductCategoriesCategoryProductsBatchReq$ProductIds$Item
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$AdminPostProductCategoriesCategoryProductsBatchReqToJson(
        AdminPostProductCategoriesCategoryProductsBatchReq instance) =>
    <String, dynamic>{
      'product_ids': instance.productIds.map((e) => e.toJson()).toList(),
    };

AdminPostProductCategoriesCategoryReq
    _$AdminPostProductCategoriesCategoryReqFromJson(
            Map<String, dynamic> json) =>
        AdminPostProductCategoriesCategoryReq(
          name: json['name'] as String? ?? 'default',
          description: json['description'] as String? ?? 'default',
          handle: json['handle'] as String? ?? 'default',
          isInternal: json['is_internal'] as bool?,
          isActive: json['is_active'] as bool?,
          parentCategoryId: json['parent_category_id'] as String? ?? 'default',
          rank: (json['rank'] as num?)?.toDouble(),
          metadata: json['metadata'],
        );

Map<String, dynamic> _$AdminPostProductCategoriesCategoryReqToJson(
    AdminPostProductCategoriesCategoryReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  writeNotNull('handle', instance.handle);
  writeNotNull('is_internal', instance.isInternal);
  writeNotNull('is_active', instance.isActive);
  writeNotNull('parent_category_id', instance.parentCategoryId);
  writeNotNull('rank', instance.rank);
  writeNotNull('metadata', instance.metadata);
  return val;
}

AdminPostProductCategoriesReq _$AdminPostProductCategoriesReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostProductCategoriesReq(
      name: json['name'] as String? ?? 'default',
      description: json['description'] as String? ?? 'default',
      handle: json['handle'] as String? ?? 'default',
      isInternal: json['is_internal'] as bool?,
      isActive: json['is_active'] as bool?,
      parentCategoryId: json['parent_category_id'] as String? ?? 'default',
      metadata: json['metadata'],
    );

Map<String, dynamic> _$AdminPostProductCategoriesReqToJson(
    AdminPostProductCategoriesReq instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('handle', instance.handle);
  writeNotNull('is_internal', instance.isInternal);
  writeNotNull('is_active', instance.isActive);
  writeNotNull('parent_category_id', instance.parentCategoryId);
  writeNotNull('metadata', instance.metadata);
  return val;
}

AdminPostProductsProductMetadataReq
    _$AdminPostProductsProductMetadataReqFromJson(Map<String, dynamic> json) =>
        AdminPostProductsProductMetadataReq(
          key: json['key'] as String? ?? 'default',
          value: json['value'] as String? ?? 'default',
        );

Map<String, dynamic> _$AdminPostProductsProductMetadataReqToJson(
        AdminPostProductsProductMetadataReq instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };

AdminPostProductsProductOptionsOption
    _$AdminPostProductsProductOptionsOptionFromJson(
            Map<String, dynamic> json) =>
        AdminPostProductsProductOptionsOption(
          title: json['title'] as String? ?? 'default',
        );

Map<String, dynamic> _$AdminPostProductsProductOptionsOptionToJson(
        AdminPostProductsProductOptionsOption instance) =>
    <String, dynamic>{
      'title': instance.title,
    };

AdminPostProductsProductOptionsReq _$AdminPostProductsProductOptionsReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostProductsProductOptionsReq(
      title: json['title'] as String? ?? 'default',
    );

Map<String, dynamic> _$AdminPostProductsProductOptionsReqToJson(
        AdminPostProductsProductOptionsReq instance) =>
    <String, dynamic>{
      'title': instance.title,
    };

AdminPostProductsProductReq _$AdminPostProductsProductReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostProductsProductReq(
      title: json['title'] as String? ?? 'default',
      subtitle: json['subtitle'] as String? ?? 'default',
      description: json['description'] as String? ?? 'default',
      discountable: json['discountable'] as bool?,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      thumbnail: json['thumbnail'] as String? ?? 'default',
      handle: json['handle'] as String? ?? 'default',
      status: adminPostProductsProductReqStatusNullableFromJson(json['status']),
      type: json['type'] == null
          ? null
          : AdminPostProductsProductReq$Type$.fromJson(
              json['type'] as Map<String, dynamic>),
      collectionId: json['collection_id'] as String? ?? 'default',
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => AdminPostProductsProductReq$Tags$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      salesChannels: (json['sales_channels'] as List<dynamic>?)
          ?.map((e) => AdminPostProductsProductReq$SalesChannels$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => AdminPostProductsProductReq$Categories$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      variants: (json['variants'] as List<dynamic>?)
          ?.map((e) => AdminPostProductsProductReq$Variants$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      weight: (json['weight'] as num?)?.toDouble(),
      length: (json['length'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      width: (json['width'] as num?)?.toDouble(),
      hsCode: json['hs_code'] as String? ?? 'default',
      originCountry: json['origin_country'] as String? ?? 'default',
      midCode: json['mid_code'] as String? ?? 'default',
      material: json['material'] as String? ?? 'default',
      metadata: json['metadata'],
    );

Map<String, dynamic> _$AdminPostProductsProductReqToJson(
    AdminPostProductsProductReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('subtitle', instance.subtitle);
  writeNotNull('description', instance.description);
  writeNotNull('discountable', instance.discountable);
  writeNotNull('images', instance.images);
  writeNotNull('thumbnail', instance.thumbnail);
  writeNotNull('handle', instance.handle);
  writeNotNull('status',
      adminPostProductsProductReqStatusNullableToJson(instance.status));
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('collection_id', instance.collectionId);
  writeNotNull('tags', instance.tags?.map((e) => e.toJson()).toList());
  writeNotNull('sales_channels',
      instance.salesChannels?.map((e) => e.toJson()).toList());
  writeNotNull(
      'categories', instance.categories?.map((e) => e.toJson()).toList());
  writeNotNull('variants', instance.variants?.map((e) => e.toJson()).toList());
  writeNotNull('weight', instance.weight);
  writeNotNull('length', instance.length);
  writeNotNull('height', instance.height);
  writeNotNull('width', instance.width);
  writeNotNull('hs_code', instance.hsCode);
  writeNotNull('origin_country', instance.originCountry);
  writeNotNull('mid_code', instance.midCode);
  writeNotNull('material', instance.material);
  writeNotNull('metadata', instance.metadata);
  return val;
}

AdminPostProductsProductVariantsReq
    _$AdminPostProductsProductVariantsReqFromJson(Map<String, dynamic> json) =>
        AdminPostProductsProductVariantsReq(
          title: json['title'] as String? ?? 'default',
          sku: json['sku'] as String? ?? 'default',
          ean: json['ean'] as String? ?? 'default',
          upc: json['upc'] as String? ?? 'default',
          barcode: json['barcode'] as String? ?? 'default',
          hsCode: json['hs_code'] as String? ?? 'default',
          inventoryQuantity: json['inventory_quantity'] as int? ?? 36,
          allowBackorder: json['allow_backorder'] as bool?,
          manageInventory: json['manage_inventory'] as bool? ?? true,
          weight: (json['weight'] as num?)?.toDouble(),
          length: (json['length'] as num?)?.toDouble(),
          height: (json['height'] as num?)?.toDouble(),
          width: (json['width'] as num?)?.toDouble(),
          originCountry: json['origin_country'] as String? ?? 'default',
          midCode: json['mid_code'] as String? ?? 'default',
          material: json['material'] as String? ?? 'default',
          metadata: json['metadata'],
          prices: (json['prices'] as List<dynamic>)
              .map((e) =>
                  AdminPostProductsProductVariantsReq$Prices$Item.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          options: (json['options'] as List<dynamic>)
              .map((e) =>
                  AdminPostProductsProductVariantsReq$Options$Item.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$AdminPostProductsProductVariantsReqToJson(
    AdminPostProductsProductVariantsReq instance) {
  final val = <String, dynamic>{
    'title': instance.title,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sku', instance.sku);
  writeNotNull('ean', instance.ean);
  writeNotNull('upc', instance.upc);
  writeNotNull('barcode', instance.barcode);
  writeNotNull('hs_code', instance.hsCode);
  writeNotNull('inventory_quantity', instance.inventoryQuantity);
  writeNotNull('allow_backorder', instance.allowBackorder);
  writeNotNull('manage_inventory', instance.manageInventory);
  writeNotNull('weight', instance.weight);
  writeNotNull('length', instance.length);
  writeNotNull('height', instance.height);
  writeNotNull('width', instance.width);
  writeNotNull('origin_country', instance.originCountry);
  writeNotNull('mid_code', instance.midCode);
  writeNotNull('material', instance.material);
  writeNotNull('metadata', instance.metadata);
  val['prices'] = instance.prices.map((e) => e.toJson()).toList();
  val['options'] = instance.options.map((e) => e.toJson()).toList();
  return val;
}

AdminPostProductsProductVariantsVariantReq
    _$AdminPostProductsProductVariantsVariantReqFromJson(
            Map<String, dynamic> json) =>
        AdminPostProductsProductVariantsVariantReq(
          title: json['title'] as String? ?? 'default',
          sku: json['sku'] as String? ?? 'default',
          ean: json['ean'] as String? ?? 'default',
          upc: json['upc'] as String? ?? 'default',
          barcode: json['barcode'] as String? ?? 'default',
          hsCode: json['hs_code'] as String? ?? 'default',
          inventoryQuantity: json['inventory_quantity'] as int? ?? 36,
          allowBackorder: json['allow_backorder'] as bool?,
          manageInventory: json['manage_inventory'] as bool?,
          weight: (json['weight'] as num?)?.toDouble(),
          length: (json['length'] as num?)?.toDouble(),
          height: (json['height'] as num?)?.toDouble(),
          width: (json['width'] as num?)?.toDouble(),
          originCountry: json['origin_country'] as String? ?? 'default',
          midCode: json['mid_code'] as String? ?? 'default',
          material: json['material'] as String? ?? 'default',
          metadata: json['metadata'],
          prices: (json['prices'] as List<dynamic>?)
              ?.map((e) =>
                  AdminPostProductsProductVariantsVariantReq$Prices$Item
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          options: (json['options'] as List<dynamic>?)
              ?.map((e) =>
                  AdminPostProductsProductVariantsVariantReq$Options$Item
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$AdminPostProductsProductVariantsVariantReqToJson(
    AdminPostProductsProductVariantsVariantReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('sku', instance.sku);
  writeNotNull('ean', instance.ean);
  writeNotNull('upc', instance.upc);
  writeNotNull('barcode', instance.barcode);
  writeNotNull('hs_code', instance.hsCode);
  writeNotNull('inventory_quantity', instance.inventoryQuantity);
  writeNotNull('allow_backorder', instance.allowBackorder);
  writeNotNull('manage_inventory', instance.manageInventory);
  writeNotNull('weight', instance.weight);
  writeNotNull('length', instance.length);
  writeNotNull('height', instance.height);
  writeNotNull('width', instance.width);
  writeNotNull('origin_country', instance.originCountry);
  writeNotNull('mid_code', instance.midCode);
  writeNotNull('material', instance.material);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('prices', instance.prices?.map((e) => e.toJson()).toList());
  writeNotNull('options', instance.options?.map((e) => e.toJson()).toList());
  return val;
}

AdminPostProductsReq _$AdminPostProductsReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostProductsReq(
      title: json['title'] as String? ?? 'default',
      subtitle: json['subtitle'] as String? ?? 'default',
      description: json['description'] as String? ?? 'default',
      isGiftcard: json['is_giftcard'] as bool? ?? false,
      discountable: json['discountable'] as bool? ?? true,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      thumbnail: json['thumbnail'] as String? ?? 'default',
      handle: json['handle'] as String? ?? 'default',
      status:
          AdminPostProductsReq.adminPostProductsReqStatusStatusNullableFromJson(
              json['status']),
      type: json['type'] == null
          ? null
          : AdminPostProductsReq$Type$.fromJson(
              json['type'] as Map<String, dynamic>),
      collectionId: json['collection_id'] as String? ?? 'default',
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => AdminPostProductsReq$Tags$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      salesChannels: (json['sales_channels'] as List<dynamic>?)
          ?.map((e) => AdminPostProductsReq$SalesChannels$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => AdminPostProductsReq$Categories$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => AdminPostProductsReq$Options$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      variants: (json['variants'] as List<dynamic>?)
          ?.map((e) => AdminPostProductsReq$Variants$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      weight: (json['weight'] as num?)?.toDouble(),
      length: (json['length'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      width: (json['width'] as num?)?.toDouble(),
      hsCode: json['hs_code'] as String? ?? 'default',
      originCountry: json['origin_country'] as String? ?? 'default',
      midCode: json['mid_code'] as String? ?? 'default',
      material: json['material'] as String? ?? 'default',
      metadata: json['metadata'],
    );

Map<String, dynamic> _$AdminPostProductsReqToJson(
    AdminPostProductsReq instance) {
  final val = <String, dynamic>{
    'title': instance.title,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('subtitle', instance.subtitle);
  writeNotNull('description', instance.description);
  writeNotNull('is_giftcard', instance.isGiftcard);
  writeNotNull('discountable', instance.discountable);
  writeNotNull('images', instance.images);
  writeNotNull('thumbnail', instance.thumbnail);
  writeNotNull('handle', instance.handle);
  writeNotNull(
      'status', adminPostProductsReqStatusNullableToJson(instance.status));
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('collection_id', instance.collectionId);
  writeNotNull('tags', instance.tags?.map((e) => e.toJson()).toList());
  writeNotNull('sales_channels',
      instance.salesChannels?.map((e) => e.toJson()).toList());
  writeNotNull(
      'categories', instance.categories?.map((e) => e.toJson()).toList());
  writeNotNull('options', instance.options?.map((e) => e.toJson()).toList());
  writeNotNull('variants', instance.variants?.map((e) => e.toJson()).toList());
  writeNotNull('weight', instance.weight);
  writeNotNull('length', instance.length);
  writeNotNull('height', instance.height);
  writeNotNull('width', instance.width);
  writeNotNull('hs_code', instance.hsCode);
  writeNotNull('origin_country', instance.originCountry);
  writeNotNull('mid_code', instance.midCode);
  writeNotNull('material', instance.material);
  writeNotNull('metadata', instance.metadata);
  return val;
}

AdminPostProductsToCollectionReq _$AdminPostProductsToCollectionReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostProductsToCollectionReq(
      productIds: (json['product_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$AdminPostProductsToCollectionReqToJson(
        AdminPostProductsToCollectionReq instance) =>
    <String, dynamic>{
      'product_ids': instance.productIds,
    };

AdminPostPublishableApiKeySalesChannelsBatchReq
    _$AdminPostPublishableApiKeySalesChannelsBatchReqFromJson(
            Map<String, dynamic> json) =>
        AdminPostPublishableApiKeySalesChannelsBatchReq(
          salesChannelIds: (json['sales_channel_ids'] as List<dynamic>)
              .map((e) =>
                  AdminPostPublishableApiKeySalesChannelsBatchReq$SalesChannelIds$Item
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$AdminPostPublishableApiKeySalesChannelsBatchReqToJson(
        AdminPostPublishableApiKeySalesChannelsBatchReq instance) =>
    <String, dynamic>{
      'sales_channel_ids':
          instance.salesChannelIds.map((e) => e.toJson()).toList(),
    };

AdminPostPublishableApiKeysPublishableApiKeyReq
    _$AdminPostPublishableApiKeysPublishableApiKeyReqFromJson(
            Map<String, dynamic> json) =>
        AdminPostPublishableApiKeysPublishableApiKeyReq(
          title: json['title'] as String? ?? 'default',
        );

Map<String, dynamic> _$AdminPostPublishableApiKeysPublishableApiKeyReqToJson(
    AdminPostPublishableApiKeysPublishableApiKeyReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  return val;
}

AdminPostPublishableApiKeysReq _$AdminPostPublishableApiKeysReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostPublishableApiKeysReq(
      title: json['title'] as String? ?? 'default',
    );

Map<String, dynamic> _$AdminPostPublishableApiKeysReqToJson(
        AdminPostPublishableApiKeysReq instance) =>
    <String, dynamic>{
      'title': instance.title,
    };

AdminPostRegionsRegionCountriesReq _$AdminPostRegionsRegionCountriesReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostRegionsRegionCountriesReq(
      countryCode: json['country_code'] as String? ?? 'default',
    );

Map<String, dynamic> _$AdminPostRegionsRegionCountriesReqToJson(
        AdminPostRegionsRegionCountriesReq instance) =>
    <String, dynamic>{
      'country_code': instance.countryCode,
    };

AdminPostRegionsRegionFulfillmentProvidersReq
    _$AdminPostRegionsRegionFulfillmentProvidersReqFromJson(
            Map<String, dynamic> json) =>
        AdminPostRegionsRegionFulfillmentProvidersReq(
          providerId: json['provider_id'] as String? ?? 'default',
        );

Map<String, dynamic> _$AdminPostRegionsRegionFulfillmentProvidersReqToJson(
        AdminPostRegionsRegionFulfillmentProvidersReq instance) =>
    <String, dynamic>{
      'provider_id': instance.providerId,
    };

AdminPostRegionsRegionPaymentProvidersReq
    _$AdminPostRegionsRegionPaymentProvidersReqFromJson(
            Map<String, dynamic> json) =>
        AdminPostRegionsRegionPaymentProvidersReq(
          providerId: json['provider_id'] as String? ?? 'default',
        );

Map<String, dynamic> _$AdminPostRegionsRegionPaymentProvidersReqToJson(
        AdminPostRegionsRegionPaymentProvidersReq instance) =>
    <String, dynamic>{
      'provider_id': instance.providerId,
    };

AdminPostRegionsRegionReq _$AdminPostRegionsRegionReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostRegionsRegionReq(
      name: json['name'] as String? ?? 'default',
      currencyCode: json['currency_code'] as String? ?? 'default',
      automaticTaxes: json['automatic_taxes'] as bool?,
      giftCardsTaxable: json['gift_cards_taxable'] as bool?,
      taxProviderId: json['tax_provider_id'] as String? ?? 'default',
      taxCode: json['tax_code'] as String? ?? 'default',
      taxRate: (json['tax_rate'] as num?)?.toDouble(),
      includesTax: json['includes_tax'] as bool?,
      paymentProviders: (json['payment_providers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      fulfillmentProviders: (json['fulfillment_providers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      countries: (json['countries'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$AdminPostRegionsRegionReqToJson(
    AdminPostRegionsRegionReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('currency_code', instance.currencyCode);
  writeNotNull('automatic_taxes', instance.automaticTaxes);
  writeNotNull('gift_cards_taxable', instance.giftCardsTaxable);
  writeNotNull('tax_provider_id', instance.taxProviderId);
  writeNotNull('tax_code', instance.taxCode);
  writeNotNull('tax_rate', instance.taxRate);
  writeNotNull('includes_tax', instance.includesTax);
  writeNotNull('payment_providers', instance.paymentProviders);
  writeNotNull('fulfillment_providers', instance.fulfillmentProviders);
  writeNotNull('countries', instance.countries);
  return val;
}

AdminPostRegionsReq _$AdminPostRegionsReqFromJson(Map<String, dynamic> json) =>
    AdminPostRegionsReq(
      name: json['name'] as String? ?? 'default',
      currencyCode: json['currency_code'] as String? ?? 'default',
      taxCode: json['tax_code'] as String? ?? 'default',
      taxRate: (json['tax_rate'] as num).toDouble(),
      paymentProviders: (json['payment_providers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      fulfillmentProviders: (json['fulfillment_providers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      countries: (json['countries'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      includesTax: json['includes_tax'] as bool?,
    );

Map<String, dynamic> _$AdminPostRegionsReqToJson(AdminPostRegionsReq instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'currency_code': instance.currencyCode,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tax_code', instance.taxCode);
  val['tax_rate'] = instance.taxRate;
  val['payment_providers'] = instance.paymentProviders;
  val['fulfillment_providers'] = instance.fulfillmentProviders;
  val['countries'] = instance.countries;
  writeNotNull('includes_tax', instance.includesTax);
  return val;
}

AdminPostReservationsReq _$AdminPostReservationsReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostReservationsReq(
      lineItemId: json['line_item_id'] as String? ?? 'default',
      locationId: json['location_id'] as String? ?? 'default',
      inventoryItemId: json['inventory_item_id'] as String? ?? 'default',
      quantity: (json['quantity'] as num).toDouble(),
      description: json['description'] as String? ?? 'default',
      metadata: json['metadata'],
    );

Map<String, dynamic> _$AdminPostReservationsReqToJson(
    AdminPostReservationsReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('line_item_id', instance.lineItemId);
  val['location_id'] = instance.locationId;
  val['inventory_item_id'] = instance.inventoryItemId;
  val['quantity'] = instance.quantity;
  writeNotNull('description', instance.description);
  writeNotNull('metadata', instance.metadata);
  return val;
}

AdminPostReservationsReservationReq
    _$AdminPostReservationsReservationReqFromJson(Map<String, dynamic> json) =>
        AdminPostReservationsReservationReq(
          locationId: json['location_id'] as String? ?? 'default',
          quantity: (json['quantity'] as num?)?.toDouble(),
          description: json['description'] as String? ?? 'default',
          metadata: json['metadata'],
        );

Map<String, dynamic> _$AdminPostReservationsReservationReqToJson(
    AdminPostReservationsReservationReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('location_id', instance.locationId);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('description', instance.description);
  writeNotNull('metadata', instance.metadata);
  return val;
}

AdminPostReturnReasonsReasonReq _$AdminPostReturnReasonsReasonReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostReturnReasonsReasonReq(
      label: json['label'] as String? ?? 'default',
      value: json['value'] as String? ?? 'default',
      description: json['description'] as String? ?? 'default',
      metadata: json['metadata'],
    );

Map<String, dynamic> _$AdminPostReturnReasonsReasonReqToJson(
    AdminPostReturnReasonsReasonReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('label', instance.label);
  writeNotNull('value', instance.value);
  writeNotNull('description', instance.description);
  writeNotNull('metadata', instance.metadata);
  return val;
}

AdminPostReturnReasonsReq _$AdminPostReturnReasonsReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostReturnReasonsReq(
      label: json['label'] as String? ?? 'default',
      value: json['value'] as String? ?? 'default',
      parentReturnReasonId:
          json['parent_return_reason_id'] as String? ?? 'default',
      description: json['description'] as String? ?? 'default',
      metadata: json['metadata'],
    );

Map<String, dynamic> _$AdminPostReturnReasonsReqToJson(
    AdminPostReturnReasonsReq instance) {
  final val = <String, dynamic>{
    'label': instance.label,
    'value': instance.value,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('parent_return_reason_id', instance.parentReturnReasonId);
  writeNotNull('description', instance.description);
  writeNotNull('metadata', instance.metadata);
  return val;
}

AdminPostReturnsReturnReceiveReq _$AdminPostReturnsReturnReceiveReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostReturnsReturnReceiveReq(
      items: (json['items'] as List<dynamic>)
          .map((e) => AdminPostReturnsReturnReceiveReq$Items$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      refund: (json['refund'] as num?)?.toDouble(),
      locationId: json['location_id'] as String? ?? 'default',
    );

Map<String, dynamic> _$AdminPostReturnsReturnReceiveReqToJson(
    AdminPostReturnsReturnReceiveReq instance) {
  final val = <String, dynamic>{
    'items': instance.items.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('refund', instance.refund);
  writeNotNull('location_id', instance.locationId);
  return val;
}

AdminPostSalesChannelsChannelProductsBatchReq
    _$AdminPostSalesChannelsChannelProductsBatchReqFromJson(
            Map<String, dynamic> json) =>
        AdminPostSalesChannelsChannelProductsBatchReq(
          productIds: (json['product_ids'] as List<dynamic>)
              .map((e) =>
                  AdminPostSalesChannelsChannelProductsBatchReq$ProductIds$Item
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$AdminPostSalesChannelsChannelProductsBatchReqToJson(
        AdminPostSalesChannelsChannelProductsBatchReq instance) =>
    <String, dynamic>{
      'product_ids': instance.productIds.map((e) => e.toJson()).toList(),
    };

AdminPostSalesChannelsChannelStockLocationsReq
    _$AdminPostSalesChannelsChannelStockLocationsReqFromJson(
            Map<String, dynamic> json) =>
        AdminPostSalesChannelsChannelStockLocationsReq(
          locationId: json['location_id'] as String? ?? 'default',
        );

Map<String, dynamic> _$AdminPostSalesChannelsChannelStockLocationsReqToJson(
        AdminPostSalesChannelsChannelStockLocationsReq instance) =>
    <String, dynamic>{
      'location_id': instance.locationId,
    };

AdminPostSalesChannelsReq _$AdminPostSalesChannelsReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostSalesChannelsReq(
      name: json['name'] as String? ?? 'default',
      description: json['description'] as String? ?? 'default',
      isDisabled: json['is_disabled'] as bool?,
    );

Map<String, dynamic> _$AdminPostSalesChannelsReqToJson(
    AdminPostSalesChannelsReq instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('is_disabled', instance.isDisabled);
  return val;
}

AdminPostSalesChannelsSalesChannelReq
    _$AdminPostSalesChannelsSalesChannelReqFromJson(
            Map<String, dynamic> json) =>
        AdminPostSalesChannelsSalesChannelReq(
          name: json['name'] as String? ?? 'default',
          description: json['description'] as String? ?? 'default',
          isDisabled: json['is_disabled'] as bool?,
        );

Map<String, dynamic> _$AdminPostSalesChannelsSalesChannelReqToJson(
    AdminPostSalesChannelsSalesChannelReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  writeNotNull('is_disabled', instance.isDisabled);
  return val;
}

AdminPostShippingOptionsOptionReq _$AdminPostShippingOptionsOptionReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostShippingOptionsOptionReq(
      name: json['name'] as String? ?? 'default',
      amount: json['amount'] as int? ?? 36,
      adminOnly: json['admin_only'] as bool?,
      metadata: json['metadata'],
      requirements: (json['requirements'] as List<dynamic>)
          .map((e) =>
              AdminPostShippingOptionsOptionReq$Requirements$Item.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      includesTax: json['includes_tax'] as bool?,
    );

Map<String, dynamic> _$AdminPostShippingOptionsOptionReqToJson(
    AdminPostShippingOptionsOptionReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('amount', instance.amount);
  writeNotNull('admin_only', instance.adminOnly);
  writeNotNull('metadata', instance.metadata);
  val['requirements'] = instance.requirements.map((e) => e.toJson()).toList();
  writeNotNull('includes_tax', instance.includesTax);
  return val;
}

AdminPostShippingOptionsReq _$AdminPostShippingOptionsReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostShippingOptionsReq(
      name: json['name'] as String? ?? 'default',
      regionId: json['region_id'] as String? ?? 'default',
      providerId: json['provider_id'] as String? ?? 'default',
      profileId: (json['profile_id'] as num?)?.toDouble(),
      data: json['data'] as Object,
      priceType:
          adminPostShippingOptionsReqPriceTypeFromJson(json['price_type']),
      amount: json['amount'] as int? ?? 36,
      requirements: (json['requirements'] as List<dynamic>?)
          ?.map((e) => AdminPostShippingOptionsReq$Requirements$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      isReturn: json['is_return'] as bool? ?? false,
      adminOnly: json['admin_only'] as bool? ?? false,
      metadata: json['metadata'],
      includesTax: json['includes_tax'] as bool?,
    );

Map<String, dynamic> _$AdminPostShippingOptionsReqToJson(
    AdminPostShippingOptionsReq instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'region_id': instance.regionId,
    'provider_id': instance.providerId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('profile_id', instance.profileId);
  val['data'] = instance.data;
  writeNotNull('price_type',
      adminPostShippingOptionsReqPriceTypeToJson(instance.priceType));
  writeNotNull('amount', instance.amount);
  writeNotNull(
      'requirements', instance.requirements?.map((e) => e.toJson()).toList());
  writeNotNull('is_return', instance.isReturn);
  writeNotNull('admin_only', instance.adminOnly);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('includes_tax', instance.includesTax);
  return val;
}

AdminPostShippingProfilesProfileReq
    _$AdminPostShippingProfilesProfileReqFromJson(Map<String, dynamic> json) =>
        AdminPostShippingProfilesProfileReq(
          name: json['name'] as String? ?? 'default',
          metadata: json['metadata'],
          type: adminPostShippingProfilesProfileReqTypeNullableFromJson(
              json['type']),
          products: (json['products'] as List<dynamic>?)
                  ?.map((e) => e as Object)
                  .toList() ??
              [],
          shippingOptions: (json['shipping_options'] as List<dynamic>?)
                  ?.map((e) => e as Object)
                  .toList() ??
              [],
        );

Map<String, dynamic> _$AdminPostShippingProfilesProfileReqToJson(
    AdminPostShippingProfilesProfileReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('type',
      adminPostShippingProfilesProfileReqTypeNullableToJson(instance.type));
  writeNotNull('products', instance.products);
  writeNotNull('shipping_options', instance.shippingOptions);
  return val;
}

AdminPostShippingProfilesReq _$AdminPostShippingProfilesReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostShippingProfilesReq(
      name: json['name'] as String? ?? 'default',
      type: adminPostShippingProfilesReqTypeFromJson(json['type']),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$AdminPostShippingProfilesReqToJson(
    AdminPostShippingProfilesReq instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', adminPostShippingProfilesReqTypeToJson(instance.type));
  writeNotNull('metadata', instance.metadata);
  return val;
}

AdminPostStockLocationsLocationReq _$AdminPostStockLocationsLocationReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostStockLocationsLocationReq(
      name: json['name'] as String? ?? 'default',
      addressId: json['address_id'] as String? ?? 'default',
      metadata: json['metadata'],
      address: json['address'] == null
          ? null
          : StockLocationAddressInput.fromJson(
              json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminPostStockLocationsLocationReqToJson(
    AdminPostStockLocationsLocationReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('address_id', instance.addressId);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('address', instance.address?.toJson());
  return val;
}

AdminPostStockLocationsReq _$AdminPostStockLocationsReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostStockLocationsReq(
      name: json['name'] as String? ?? 'default',
      addressId: json['address_id'] as String? ?? 'default',
      metadata: json['metadata'],
      address: json['address'] == null
          ? null
          : StockLocationAddressInput.fromJson(
              json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminPostStockLocationsReqToJson(
    AdminPostStockLocationsReq instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address_id', instance.addressId);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('address', instance.address?.toJson());
  return val;
}

AdminPostStockLocationsReqAddress _$AdminPostStockLocationsReqAddressFromJson(
        Map<String, dynamic> json) =>
    AdminPostStockLocationsReqAddress(
      address1: json['address_1'] as String? ?? 'default',
      address2: json['address_2'] as String? ?? 'default',
      company: json['company'] as String? ?? 'default',
      city: json['city'] as String? ?? 'default',
      countryCode: json['country_code'] as String? ?? 'default',
      phone: json['phone'] as String? ?? 'default',
      postalCode: json['postal_code'] as String? ?? 'default',
      province: json['province'] as String? ?? 'default',
    );

Map<String, dynamic> _$AdminPostStockLocationsReqAddressToJson(
    AdminPostStockLocationsReqAddress instance) {
  final val = <String, dynamic>{
    'address_1': instance.address1,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address_2', instance.address2);
  writeNotNull('company', instance.company);
  writeNotNull('city', instance.city);
  val['country_code'] = instance.countryCode;
  writeNotNull('phone', instance.phone);
  writeNotNull('postal_code', instance.postalCode);
  writeNotNull('province', instance.province);
  return val;
}

AdminPostStoreReq _$AdminPostStoreReqFromJson(Map<String, dynamic> json) =>
    AdminPostStoreReq(
      name: json['name'] as String? ?? 'default',
      swapLinkTemplate: json['swap_link_template'] as String? ?? 'default',
      paymentLinkTemplate:
          json['payment_link_template'] as String? ?? 'default',
      inviteLinkTemplate: json['invite_link_template'] as String? ?? 'default',
      defaultCurrencyCode:
          json['default_currency_code'] as String? ?? 'default',
      currencies: (json['currencies'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      metadata: json['metadata'],
    );

Map<String, dynamic> _$AdminPostStoreReqToJson(AdminPostStoreReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('swap_link_template', instance.swapLinkTemplate);
  writeNotNull('payment_link_template', instance.paymentLinkTemplate);
  writeNotNull('invite_link_template', instance.inviteLinkTemplate);
  writeNotNull('default_currency_code', instance.defaultCurrencyCode);
  writeNotNull('currencies', instance.currencies);
  writeNotNull('metadata', instance.metadata);
  return val;
}

AdminPostTaxRatesReq _$AdminPostTaxRatesReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostTaxRatesReq(
      code: json['code'] as String? ?? 'default',
      name: json['name'] as String? ?? 'default',
      regionId: json['region_id'] as String? ?? 'default',
      rate: (json['rate'] as num?)?.toDouble(),
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      shippingOptions: (json['shipping_options'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      productTypes: (json['product_types'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$AdminPostTaxRatesReqToJson(
    AdminPostTaxRatesReq instance) {
  final val = <String, dynamic>{
    'code': instance.code,
    'name': instance.name,
    'region_id': instance.regionId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('rate', instance.rate);
  writeNotNull('products', instance.products);
  writeNotNull('shipping_options', instance.shippingOptions);
  writeNotNull('product_types', instance.productTypes);
  return val;
}

AdminPostTaxRatesTaxRateProductTypesReq
    _$AdminPostTaxRatesTaxRateProductTypesReqFromJson(
            Map<String, dynamic> json) =>
        AdminPostTaxRatesTaxRateProductTypesReq(
          productTypes: (json['product_types'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
        );

Map<String, dynamic> _$AdminPostTaxRatesTaxRateProductTypesReqToJson(
        AdminPostTaxRatesTaxRateProductTypesReq instance) =>
    <String, dynamic>{
      'product_types': instance.productTypes,
    };

AdminPostTaxRatesTaxRateProductsReq
    _$AdminPostTaxRatesTaxRateProductsReqFromJson(Map<String, dynamic> json) =>
        AdminPostTaxRatesTaxRateProductsReq(
          products: (json['products'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
        );

Map<String, dynamic> _$AdminPostTaxRatesTaxRateProductsReqToJson(
        AdminPostTaxRatesTaxRateProductsReq instance) =>
    <String, dynamic>{
      'products': instance.products,
    };

AdminPostTaxRatesTaxRateReq _$AdminPostTaxRatesTaxRateReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostTaxRatesTaxRateReq(
      code: json['code'] as String? ?? 'default',
      name: json['name'] as String? ?? 'default',
      regionId: json['region_id'] as String? ?? 'default',
      rate: (json['rate'] as num?)?.toDouble(),
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      shippingOptions: (json['shipping_options'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      productTypes: (json['product_types'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$AdminPostTaxRatesTaxRateReqToJson(
    AdminPostTaxRatesTaxRateReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('name', instance.name);
  writeNotNull('region_id', instance.regionId);
  writeNotNull('rate', instance.rate);
  writeNotNull('products', instance.products);
  writeNotNull('shipping_options', instance.shippingOptions);
  writeNotNull('product_types', instance.productTypes);
  return val;
}

AdminPostTaxRatesTaxRateShippingOptionsReq
    _$AdminPostTaxRatesTaxRateShippingOptionsReqFromJson(
            Map<String, dynamic> json) =>
        AdminPostTaxRatesTaxRateShippingOptionsReq(
          shippingOptions: (json['shipping_options'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
        );

Map<String, dynamic> _$AdminPostTaxRatesTaxRateShippingOptionsReqToJson(
        AdminPostTaxRatesTaxRateShippingOptionsReq instance) =>
    <String, dynamic>{
      'shipping_options': instance.shippingOptions,
    };

AdminPostUploadsDownloadUrlReq _$AdminPostUploadsDownloadUrlReqFromJson(
        Map<String, dynamic> json) =>
    AdminPostUploadsDownloadUrlReq(
      fileKey: json['file_key'] as String? ?? 'default',
    );

Map<String, dynamic> _$AdminPostUploadsDownloadUrlReqToJson(
        AdminPostUploadsDownloadUrlReq instance) =>
    <String, dynamic>{
      'file_key': instance.fileKey,
    };

AdminPriceListDeleteBatchRes _$AdminPriceListDeleteBatchResFromJson(
        Map<String, dynamic> json) =>
    AdminPriceListDeleteBatchRes(
      ids: (json['ids'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          [],
      object: json['object'] as String? ?? 'default',
      deleted: json['deleted'] as bool? ?? true,
    );

Map<String, dynamic> _$AdminPriceListDeleteBatchResToJson(
        AdminPriceListDeleteBatchRes instance) =>
    <String, dynamic>{
      'ids': instance.ids,
      'object': instance.object,
      'deleted': instance.deleted,
    };

AdminPriceListDeleteProductPricesRes
    _$AdminPriceListDeleteProductPricesResFromJson(Map<String, dynamic> json) =>
        AdminPriceListDeleteProductPricesRes(
          ids: (json['ids'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
          object: json['object'] as String? ?? 'default',
          deleted: json['deleted'] as bool? ?? true,
        );

Map<String, dynamic> _$AdminPriceListDeleteProductPricesResToJson(
        AdminPriceListDeleteProductPricesRes instance) =>
    <String, dynamic>{
      'ids': instance.ids,
      'object': instance.object,
      'deleted': instance.deleted,
    };

AdminPriceListDeleteRes _$AdminPriceListDeleteResFromJson(
        Map<String, dynamic> json) =>
    AdminPriceListDeleteRes(
      id: json['id'] as String? ?? 'default',
      object: json['object'] as String? ?? 'default',
      deleted: json['deleted'] as bool? ?? true,
    );

Map<String, dynamic> _$AdminPriceListDeleteResToJson(
        AdminPriceListDeleteRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'deleted': instance.deleted,
    };

AdminPriceListDeleteVariantPricesRes
    _$AdminPriceListDeleteVariantPricesResFromJson(Map<String, dynamic> json) =>
        AdminPriceListDeleteVariantPricesRes(
          ids: (json['ids'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
          object: json['object'] as String? ?? 'default',
          deleted: json['deleted'] as bool? ?? true,
        );

Map<String, dynamic> _$AdminPriceListDeleteVariantPricesResToJson(
        AdminPriceListDeleteVariantPricesRes instance) =>
    <String, dynamic>{
      'ids': instance.ids,
      'object': instance.object,
      'deleted': instance.deleted,
    };

AdminPriceListRes _$AdminPriceListResFromJson(Map<String, dynamic> json) =>
    AdminPriceListRes(
      priceList: json['price_list'] == null
          ? null
          : PriceList.fromJson(json['price_list'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminPriceListResToJson(AdminPriceListRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('price_list', instance.priceList?.toJson());
  return val;
}

AdminPriceListsListRes _$AdminPriceListsListResFromJson(
        Map<String, dynamic> json) =>
    AdminPriceListsListRes(
      priceLists: (json['price_lists'] as List<dynamic>?)
              ?.map((e) => PriceList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$AdminPriceListsListResToJson(
        AdminPriceListsListRes instance) =>
    <String, dynamic>{
      'price_lists': instance.priceLists.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
    };

AdminPriceListsProductsListRes _$AdminPriceListsProductsListResFromJson(
        Map<String, dynamic> json) =>
    AdminPriceListsProductsListRes(
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$AdminPriceListsProductsListResToJson(
        AdminPriceListsProductsListRes instance) =>
    <String, dynamic>{
      'products': instance.products.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
    };

AdminProductCategoriesCategoryDeleteRes
    _$AdminProductCategoriesCategoryDeleteResFromJson(
            Map<String, dynamic> json) =>
        AdminProductCategoriesCategoryDeleteRes(
          id: json['id'] as String? ?? 'default',
          object: json['object'] as String? ?? 'default',
          deleted: json['deleted'] as bool? ?? true,
        );

Map<String, dynamic> _$AdminProductCategoriesCategoryDeleteResToJson(
        AdminProductCategoriesCategoryDeleteRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'deleted': instance.deleted,
    };

AdminProductCategoriesCategoryRes _$AdminProductCategoriesCategoryResFromJson(
        Map<String, dynamic> json) =>
    AdminProductCategoriesCategoryRes(
      productCategory: json['product_category'] == null
          ? null
          : ProductCategory.fromJson(
              json['product_category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminProductCategoriesCategoryResToJson(
    AdminProductCategoriesCategoryRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('product_category', instance.productCategory?.toJson());
  return val;
}

AdminProductCategoriesListRes _$AdminProductCategoriesListResFromJson(
        Map<String, dynamic> json) =>
    AdminProductCategoriesListRes(
      productCategories: (json['product_categories'] as List<dynamic>?)
              ?.map((e) => ProductCategory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$AdminProductCategoriesListResToJson(
        AdminProductCategoriesListRes instance) =>
    <String, dynamic>{
      'product_categories':
          instance.productCategories.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
    };

AdminProductTagsListRes _$AdminProductTagsListResFromJson(
        Map<String, dynamic> json) =>
    AdminProductTagsListRes(
      productTags: (json['product_tags'] as List<dynamic>?)
              ?.map((e) => ProductTag.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$AdminProductTagsListResToJson(
        AdminProductTagsListRes instance) =>
    <String, dynamic>{
      'product_tags': instance.productTags.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
    };

AdminProductTypesListRes _$AdminProductTypesListResFromJson(
        Map<String, dynamic> json) =>
    AdminProductTypesListRes(
      productTypes: (json['product_types'] as List<dynamic>?)
              ?.map((e) => ProductType.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$AdminProductTypesListResToJson(
        AdminProductTypesListRes instance) =>
    <String, dynamic>{
      'product_types': instance.productTypes.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
    };

AdminProductsDeleteOptionRes _$AdminProductsDeleteOptionResFromJson(
        Map<String, dynamic> json) =>
    AdminProductsDeleteOptionRes(
      optionId: json['option_id'] as String? ?? 'default',
      object: json['object'] as String? ?? 'default',
      deleted: json['deleted'] as bool? ?? true,
      product: PricedProduct.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminProductsDeleteOptionResToJson(
        AdminProductsDeleteOptionRes instance) =>
    <String, dynamic>{
      'option_id': instance.optionId,
      'object': instance.object,
      'deleted': instance.deleted,
      'product': instance.product.toJson(),
    };

AdminProductsDeleteRes _$AdminProductsDeleteResFromJson(
        Map<String, dynamic> json) =>
    AdminProductsDeleteRes(
      id: json['id'] as String? ?? 'default',
      object: json['object'] as String? ?? 'default',
      deleted: json['deleted'] as bool? ?? true,
    );

Map<String, dynamic> _$AdminProductsDeleteResToJson(
        AdminProductsDeleteRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'deleted': instance.deleted,
    };

AdminProductsDeleteVariantRes _$AdminProductsDeleteVariantResFromJson(
        Map<String, dynamic> json) =>
    AdminProductsDeleteVariantRes(
      variantId: json['variant_id'] as String? ?? 'default',
      object: json['object'] as String? ?? 'default',
      deleted: json['deleted'] as bool? ?? true,
      product: PricedProduct.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminProductsDeleteVariantResToJson(
        AdminProductsDeleteVariantRes instance) =>
    <String, dynamic>{
      'variant_id': instance.variantId,
      'object': instance.object,
      'deleted': instance.deleted,
      'product': instance.product.toJson(),
    };

AdminProductsListRes _$AdminProductsListResFromJson(
        Map<String, dynamic> json) =>
    AdminProductsListRes(
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => PricedProduct.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$AdminProductsListResToJson(
        AdminProductsListRes instance) =>
    <String, dynamic>{
      'products': instance.products.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
    };

AdminProductsListTagsRes _$AdminProductsListTagsResFromJson(
        Map<String, dynamic> json) =>
    AdminProductsListTagsRes(
      tags: (json['tags'] as List<dynamic>)
          .map((e) => AdminProductsListTagsRes$Tags$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AdminProductsListTagsResToJson(
        AdminProductsListTagsRes instance) =>
    <String, dynamic>{
      'tags': instance.tags.map((e) => e.toJson()).toList(),
    };

AdminProductsListTypesRes _$AdminProductsListTypesResFromJson(
        Map<String, dynamic> json) =>
    AdminProductsListTypesRes(
      types: (json['types'] as List<dynamic>?)
              ?.map((e) => ProductType.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AdminProductsListTypesResToJson(
        AdminProductsListTypesRes instance) =>
    <String, dynamic>{
      'types': instance.types.map((e) => e.toJson()).toList(),
    };

AdminProductsListVariantsRes _$AdminProductsListVariantsResFromJson(
        Map<String, dynamic> json) =>
    AdminProductsListVariantsRes(
      variants: (json['variants'] as List<dynamic>?)
              ?.map((e) => ProductVariant.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$AdminProductsListVariantsResToJson(
        AdminProductsListVariantsRes instance) =>
    <String, dynamic>{
      'variants': instance.variants.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
    };

AdminProductsRes _$AdminProductsResFromJson(Map<String, dynamic> json) =>
    AdminProductsRes(
      product: PricedProduct.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminProductsResToJson(AdminProductsRes instance) =>
    <String, dynamic>{
      'product': instance.product.toJson(),
    };

AdminPublishableApiKeyDeleteRes _$AdminPublishableApiKeyDeleteResFromJson(
        Map<String, dynamic> json) =>
    AdminPublishableApiKeyDeleteRes(
      id: json['id'] as String? ?? 'default',
      object: json['object'] as String? ?? 'default',
      deleted: json['deleted'] as bool? ?? true,
    );

Map<String, dynamic> _$AdminPublishableApiKeyDeleteResToJson(
        AdminPublishableApiKeyDeleteRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'deleted': instance.deleted,
    };

AdminPublishableApiKeysListRes _$AdminPublishableApiKeysListResFromJson(
        Map<String, dynamic> json) =>
    AdminPublishableApiKeysListRes(
      publishableApiKeys: (json['publishable_api_keys'] as List<dynamic>?)
              ?.map(
                  (e) => PublishableApiKey.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$AdminPublishableApiKeysListResToJson(
        AdminPublishableApiKeysListRes instance) =>
    <String, dynamic>{
      'publishable_api_keys':
          instance.publishableApiKeys.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
    };

AdminPublishableApiKeysListSalesChannelsRes
    _$AdminPublishableApiKeysListSalesChannelsResFromJson(
            Map<String, dynamic> json) =>
        AdminPublishableApiKeysListSalesChannelsRes(
          salesChannels: (json['sales_channels'] as List<dynamic>?)
                  ?.map((e) => SalesChannel.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              [],
        );

Map<String, dynamic> _$AdminPublishableApiKeysListSalesChannelsResToJson(
        AdminPublishableApiKeysListSalesChannelsRes instance) =>
    <String, dynamic>{
      'sales_channels': instance.salesChannels.map((e) => e.toJson()).toList(),
    };

AdminPublishableApiKeysRes _$AdminPublishableApiKeysResFromJson(
        Map<String, dynamic> json) =>
    AdminPublishableApiKeysRes(
      publishableApiKey: json['publishable_api_key'] == null
          ? null
          : PublishableApiKey.fromJson(
              json['publishable_api_key'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminPublishableApiKeysResToJson(
    AdminPublishableApiKeysRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('publishable_api_key', instance.publishableApiKey?.toJson());
  return val;
}

AdminRefundRes _$AdminRefundResFromJson(Map<String, dynamic> json) =>
    AdminRefundRes(
      refund: Refund.fromJson(json['refund'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminRefundResToJson(AdminRefundRes instance) =>
    <String, dynamic>{
      'refund': instance.refund.toJson(),
    };

AdminRegionsDeleteRes _$AdminRegionsDeleteResFromJson(
        Map<String, dynamic> json) =>
    AdminRegionsDeleteRes(
      id: json['id'] as String? ?? 'default',
      object: json['object'] as String? ?? 'default',
      deleted: json['deleted'] as bool? ?? true,
    );

Map<String, dynamic> _$AdminRegionsDeleteResToJson(
        AdminRegionsDeleteRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'deleted': instance.deleted,
    };

AdminRegionsListRes _$AdminRegionsListResFromJson(Map<String, dynamic> json) =>
    AdminRegionsListRes(
      regions: (json['regions'] as List<dynamic>?)
              ?.map((e) => Region.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$AdminRegionsListResToJson(
        AdminRegionsListRes instance) =>
    <String, dynamic>{
      'regions': instance.regions.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
    };

AdminRegionsRes _$AdminRegionsResFromJson(Map<String, dynamic> json) =>
    AdminRegionsRes(
      region: Region.fromJson(json['region'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminRegionsResToJson(AdminRegionsRes instance) =>
    <String, dynamic>{
      'region': instance.region.toJson(),
    };

AdminReservationsDeleteRes _$AdminReservationsDeleteResFromJson(
        Map<String, dynamic> json) =>
    AdminReservationsDeleteRes(
      id: json['id'] as String? ?? 'default',
      object: json['object'] as String? ?? 'default',
      deleted: json['deleted'] as bool? ?? true,
    );

Map<String, dynamic> _$AdminReservationsDeleteResToJson(
        AdminReservationsDeleteRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'deleted': instance.deleted,
    };

AdminReservationsListRes _$AdminReservationsListResFromJson(
        Map<String, dynamic> json) =>
    AdminReservationsListRes(
      reservations: (json['reservations'] as List<dynamic>?)
              ?.map((e) =>
                  ExtendedReservationItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$AdminReservationsListResToJson(
        AdminReservationsListRes instance) =>
    <String, dynamic>{
      'reservations': instance.reservations.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
    };

AdminReservationsRes _$AdminReservationsResFromJson(
        Map<String, dynamic> json) =>
    AdminReservationsRes(
      reservation: ReservationItemDTO.fromJson(
          json['reservation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminReservationsResToJson(
        AdminReservationsRes instance) =>
    <String, dynamic>{
      'reservation': instance.reservation.toJson(),
    };

AdminResetPasswordRequest _$AdminResetPasswordRequestFromJson(
        Map<String, dynamic> json) =>
    AdminResetPasswordRequest(
      email: json['email'] as String? ?? 'default',
      token: json['token'] as String? ?? 'default',
      password: json['password'] as String? ?? 'default',
    );

Map<String, dynamic> _$AdminResetPasswordRequestToJson(
    AdminResetPasswordRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  val['token'] = instance.token;
  val['password'] = instance.password;
  return val;
}

AdminResetPasswordTokenRequest _$AdminResetPasswordTokenRequestFromJson(
        Map<String, dynamic> json) =>
    AdminResetPasswordTokenRequest(
      email: json['email'] as String? ?? 'default',
    );

Map<String, dynamic> _$AdminResetPasswordTokenRequestToJson(
        AdminResetPasswordTokenRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
    };

AdminReturnReasonsDeleteRes _$AdminReturnReasonsDeleteResFromJson(
        Map<String, dynamic> json) =>
    AdminReturnReasonsDeleteRes(
      id: json['id'] as String? ?? 'default',
      object: json['object'] as String? ?? 'default',
      deleted: json['deleted'] as bool? ?? true,
    );

Map<String, dynamic> _$AdminReturnReasonsDeleteResToJson(
        AdminReturnReasonsDeleteRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'deleted': instance.deleted,
    };

AdminReturnReasonsListRes _$AdminReturnReasonsListResFromJson(
        Map<String, dynamic> json) =>
    AdminReturnReasonsListRes(
      returnReasons: (json['return_reasons'] as List<dynamic>?)
              ?.map((e) => ReturnReason.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AdminReturnReasonsListResToJson(
        AdminReturnReasonsListRes instance) =>
    <String, dynamic>{
      'return_reasons': instance.returnReasons.map((e) => e.toJson()).toList(),
    };

AdminReturnReasonsRes _$AdminReturnReasonsResFromJson(
        Map<String, dynamic> json) =>
    AdminReturnReasonsRes(
      returnReason: json['return_reason'] == null
          ? null
          : ReturnReason.fromJson(
              json['return_reason'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminReturnReasonsResToJson(
    AdminReturnReasonsRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('return_reason', instance.returnReason?.toJson());
  return val;
}

AdminReturnsCancelRes _$AdminReturnsCancelResFromJson(
        Map<String, dynamic> json) =>
    AdminReturnsCancelRes(
      order: Order.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminReturnsCancelResToJson(
        AdminReturnsCancelRes instance) =>
    <String, dynamic>{
      'order': instance.order.toJson(),
    };

AdminReturnsListRes _$AdminReturnsListResFromJson(Map<String, dynamic> json) =>
    AdminReturnsListRes(
      returns: (json['returns'] as List<dynamic>?)
              ?.map((e) => Return.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$AdminReturnsListResToJson(
        AdminReturnsListRes instance) =>
    <String, dynamic>{
      'returns': instance.returns.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
    };

AdminReturnsRes _$AdminReturnsResFromJson(Map<String, dynamic> json) =>
    AdminReturnsRes(
      $return: json['return'] == null
          ? null
          : Return.fromJson(json['return'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminReturnsResToJson(AdminReturnsRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('return', instance.$return?.toJson());
  return val;
}

AdminSalesChannelsDeleteLocationRes
    _$AdminSalesChannelsDeleteLocationResFromJson(Map<String, dynamic> json) =>
        AdminSalesChannelsDeleteLocationRes(
          id: json['id'] as String? ?? 'default',
          object: json['object'] as String? ?? 'default',
          deleted: json['deleted'] as bool? ?? true,
        );

Map<String, dynamic> _$AdminSalesChannelsDeleteLocationResToJson(
        AdminSalesChannelsDeleteLocationRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'deleted': instance.deleted,
    };

AdminSalesChannelsDeleteRes _$AdminSalesChannelsDeleteResFromJson(
        Map<String, dynamic> json) =>
    AdminSalesChannelsDeleteRes(
      id: json['id'] as String? ?? 'default',
      object: json['object'] as String? ?? 'default',
      deleted: json['deleted'] as bool? ?? true,
    );

Map<String, dynamic> _$AdminSalesChannelsDeleteResToJson(
        AdminSalesChannelsDeleteRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'deleted': instance.deleted,
    };

AdminSalesChannelsListRes _$AdminSalesChannelsListResFromJson(
        Map<String, dynamic> json) =>
    AdminSalesChannelsListRes(
      salesChannels: (json['sales_channels'] as List<dynamic>?)
              ?.map((e) => SalesChannel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$AdminSalesChannelsListResToJson(
        AdminSalesChannelsListRes instance) =>
    <String, dynamic>{
      'sales_channels': instance.salesChannels.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
    };

AdminSalesChannelsRes _$AdminSalesChannelsResFromJson(
        Map<String, dynamic> json) =>
    AdminSalesChannelsRes(
      salesChannel: json['sales_channel'] == null
          ? null
          : SalesChannel.fromJson(
              json['sales_channel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminSalesChannelsResToJson(
    AdminSalesChannelsRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sales_channel', instance.salesChannel?.toJson());
  return val;
}

AdminShippingOptionsDeleteRes _$AdminShippingOptionsDeleteResFromJson(
        Map<String, dynamic> json) =>
    AdminShippingOptionsDeleteRes(
      id: json['id'] as String? ?? 'default',
      object: json['object'] as String? ?? 'default',
      deleted: json['deleted'] as bool? ?? true,
    );

Map<String, dynamic> _$AdminShippingOptionsDeleteResToJson(
        AdminShippingOptionsDeleteRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'deleted': instance.deleted,
    };

AdminShippingOptionsListRes _$AdminShippingOptionsListResFromJson(
        Map<String, dynamic> json) =>
    AdminShippingOptionsListRes(
      shippingOptions: (json['shipping_options'] as List<dynamic>?)
              ?.map((e) => ShippingOption.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$AdminShippingOptionsListResToJson(
        AdminShippingOptionsListRes instance) =>
    <String, dynamic>{
      'shipping_options':
          instance.shippingOptions.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
    };

AdminShippingOptionsRes _$AdminShippingOptionsResFromJson(
        Map<String, dynamic> json) =>
    AdminShippingOptionsRes(
      shippingOption: json['shipping_option'] == null
          ? null
          : ShippingOption.fromJson(
              json['shipping_option'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminShippingOptionsResToJson(
    AdminShippingOptionsRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('shipping_option', instance.shippingOption?.toJson());
  return val;
}

AdminShippingProfilesListRes _$AdminShippingProfilesListResFromJson(
        Map<String, dynamic> json) =>
    AdminShippingProfilesListRes(
      shippingProfiles: (json['shipping_profiles'] as List<dynamic>?)
              ?.map((e) => ShippingProfile.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AdminShippingProfilesListResToJson(
        AdminShippingProfilesListRes instance) =>
    <String, dynamic>{
      'shipping_profiles':
          instance.shippingProfiles.map((e) => e.toJson()).toList(),
    };

AdminShippingProfilesRes _$AdminShippingProfilesResFromJson(
        Map<String, dynamic> json) =>
    AdminShippingProfilesRes(
      shippingProfile: json['shipping_profile'] == null
          ? null
          : ShippingProfile.fromJson(
              json['shipping_profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminShippingProfilesResToJson(
    AdminShippingProfilesRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('shipping_profile', instance.shippingProfile?.toJson());
  return val;
}

AdminStockLocationsDeleteRes _$AdminStockLocationsDeleteResFromJson(
        Map<String, dynamic> json) =>
    AdminStockLocationsDeleteRes(
      id: json['id'] as String? ?? 'default',
      object: json['object'] as String? ?? 'default',
      deleted: json['deleted'] as bool? ?? true,
    );

Map<String, dynamic> _$AdminStockLocationsDeleteResToJson(
        AdminStockLocationsDeleteRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'deleted': instance.deleted,
    };

AdminStockLocationsListRes _$AdminStockLocationsListResFromJson(
        Map<String, dynamic> json) =>
    AdminStockLocationsListRes(
      stockLocations: (json['stock_locations'] as List<dynamic>?)
              ?.map((e) =>
                  StockLocationExpandedDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$AdminStockLocationsListResToJson(
        AdminStockLocationsListRes instance) =>
    <String, dynamic>{
      'stock_locations':
          instance.stockLocations.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
    };

AdminStockLocationsRes _$AdminStockLocationsResFromJson(
        Map<String, dynamic> json) =>
    AdminStockLocationsRes(
      stockLocation: json['stock_location'] == null
          ? null
          : StockLocationExpandedDTO.fromJson(
              json['stock_location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminStockLocationsResToJson(
    AdminStockLocationsRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('stock_location', instance.stockLocation?.toJson());
  return val;
}

AdminStoresRes _$AdminStoresResFromJson(Map<String, dynamic> json) =>
    AdminStoresRes(
      store: Store.fromJson(json['store'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminStoresResToJson(AdminStoresRes instance) =>
    <String, dynamic>{
      'store': instance.store.toJson(),
    };

AdminSwapsListRes _$AdminSwapsListResFromJson(Map<String, dynamic> json) =>
    AdminSwapsListRes(
      swaps: (json['swaps'] as List<dynamic>?)
              ?.map((e) => Swap.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$AdminSwapsListResToJson(AdminSwapsListRes instance) =>
    <String, dynamic>{
      'swaps': instance.swaps.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
    };

AdminSwapsRes _$AdminSwapsResFromJson(Map<String, dynamic> json) =>
    AdminSwapsRes(
      swap: Swap.fromJson(json['swap'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminSwapsResToJson(AdminSwapsRes instance) =>
    <String, dynamic>{
      'swap': instance.swap.toJson(),
    };

AdminTaxProvidersList _$AdminTaxProvidersListFromJson(
        Map<String, dynamic> json) =>
    AdminTaxProvidersList(
      taxProviders: (json['tax_providers'] as List<dynamic>?)
              ?.map((e) => TaxProvider.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AdminTaxProvidersListToJson(
        AdminTaxProvidersList instance) =>
    <String, dynamic>{
      'tax_providers': instance.taxProviders.map((e) => e.toJson()).toList(),
    };

AdminTaxRatesDeleteRes _$AdminTaxRatesDeleteResFromJson(
        Map<String, dynamic> json) =>
    AdminTaxRatesDeleteRes(
      id: json['id'] as String? ?? 'default',
      object: json['object'] as String? ?? 'default',
      deleted: json['deleted'] as bool? ?? true,
    );

Map<String, dynamic> _$AdminTaxRatesDeleteResToJson(
        AdminTaxRatesDeleteRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'deleted': instance.deleted,
    };

AdminTaxRatesListRes _$AdminTaxRatesListResFromJson(
        Map<String, dynamic> json) =>
    AdminTaxRatesListRes(
      taxRates: (json['tax_rates'] as List<dynamic>?)
              ?.map((e) => TaxRate.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$AdminTaxRatesListResToJson(
        AdminTaxRatesListRes instance) =>
    <String, dynamic>{
      'tax_rates': instance.taxRates.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
    };

AdminTaxRatesRes _$AdminTaxRatesResFromJson(Map<String, dynamic> json) =>
    AdminTaxRatesRes(
      taxRate: json['tax_rate'] == null
          ? null
          : TaxRate.fromJson(json['tax_rate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminTaxRatesResToJson(AdminTaxRatesRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tax_rate', instance.taxRate?.toJson());
  return val;
}

AdminUpdatePaymentCollectionsReq _$AdminUpdatePaymentCollectionsReqFromJson(
        Map<String, dynamic> json) =>
    AdminUpdatePaymentCollectionsReq(
      description: json['description'] as String? ?? 'default',
      metadata: json['metadata'],
    );

Map<String, dynamic> _$AdminUpdatePaymentCollectionsReqToJson(
    AdminUpdatePaymentCollectionsReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('metadata', instance.metadata);
  return val;
}

AdminUpdateUserRequest _$AdminUpdateUserRequestFromJson(
        Map<String, dynamic> json) =>
    AdminUpdateUserRequest(
      firstName: json['first_name'] as String? ?? 'default',
      lastName: json['last_name'] as String? ?? 'default',
      role: adminUpdateUserRequestRoleNullableFromJson(json['role']),
      apiToken: json['api_token'] as String? ?? 'default',
      metadata: json['metadata'],
    );

Map<String, dynamic> _$AdminUpdateUserRequestToJson(
    AdminUpdateUserRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('role', adminUpdateUserRequestRoleNullableToJson(instance.role));
  writeNotNull('api_token', instance.apiToken);
  writeNotNull('metadata', instance.metadata);
  return val;
}

AdminUploadsDownloadUrlRes _$AdminUploadsDownloadUrlResFromJson(
        Map<String, dynamic> json) =>
    AdminUploadsDownloadUrlRes(
      downloadUrl: json['download_url'] as String? ?? 'default',
    );

Map<String, dynamic> _$AdminUploadsDownloadUrlResToJson(
        AdminUploadsDownloadUrlRes instance) =>
    <String, dynamic>{
      'download_url': instance.downloadUrl,
    };

AdminUploadsRes _$AdminUploadsResFromJson(Map<String, dynamic> json) =>
    AdminUploadsRes(
      uploads: (json['uploads'] as List<dynamic>)
          .map((e) =>
              AdminUploadsRes$Uploads$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AdminUploadsResToJson(AdminUploadsRes instance) =>
    <String, dynamic>{
      'uploads': instance.uploads.map((e) => e.toJson()).toList(),
    };

AdminUserRes _$AdminUserResFromJson(Map<String, dynamic> json) => AdminUserRes(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminUserResToJson(AdminUserRes instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
    };

AdminUsersListRes _$AdminUsersListResFromJson(Map<String, dynamic> json) =>
    AdminUsersListRes(
      users: (json['users'] as List<dynamic>?)
              ?.map((e) => User.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AdminUsersListResToJson(AdminUsersListRes instance) =>
    <String, dynamic>{
      'users': instance.users.map((e) => e.toJson()).toList(),
    };

AdminVariantsListRes _$AdminVariantsListResFromJson(
        Map<String, dynamic> json) =>
    AdminVariantsListRes(
      variants: (json['variants'] as List<dynamic>?)
              ?.map((e) => PricedVariant.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$AdminVariantsListResToJson(
        AdminVariantsListRes instance) =>
    <String, dynamic>{
      'variants': instance.variants.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
    };

AdminVariantsRes _$AdminVariantsResFromJson(Map<String, dynamic> json) =>
    AdminVariantsRes(
      variant: PricedVariant.fromJson(json['variant'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminVariantsResToJson(AdminVariantsRes instance) =>
    <String, dynamic>{
      'variant': instance.variant.toJson(),
    };

BatchJob _$BatchJobFromJson(Map<String, dynamic> json) => BatchJob(
      id: json['id'] as String? ?? 'default',
      type: batchJobTypeFromJson(json['type']),
      status: BatchJob.batchJobStatusStatusFromJson(json['status']),
      createdBy: json['created_by'] as String? ?? 'default',
      createdByUser: json['created_by_user'] == null
          ? null
          : User.fromJson(json['created_by_user'] as Map<String, dynamic>),
      context: json['context'],
      dryRun: json['dry_run'] as bool? ?? false,
      result: json['result'],
      preProcessedAt: json['pre_processed_at'] == null
          ? null
          : DateTime.parse(json['pre_processed_at'] as String),
      processingAt: json['processing_at'] == null
          ? null
          : DateTime.parse(json['processing_at'] as String),
      confirmedAt: json['confirmed_at'] == null
          ? null
          : DateTime.parse(json['confirmed_at'] as String),
      completedAt: json['completed_at'] == null
          ? null
          : DateTime.parse(json['completed_at'] as String),
      canceledAt: json['canceled_at'] == null
          ? null
          : DateTime.parse(json['canceled_at'] as String),
      failedAt: json['failed_at'] == null
          ? null
          : DateTime.parse(json['failed_at'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
    );

Map<String, dynamic> _$BatchJobToJson(BatchJob instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', batchJobTypeToJson(instance.type));
  writeNotNull('status', batchJobStatusToJson(instance.status));
  writeNotNull('created_by', instance.createdBy);
  writeNotNull('created_by_user', instance.createdByUser?.toJson());
  writeNotNull('context', instance.context);
  val['dry_run'] = instance.dryRun;
  writeNotNull('result', instance.result);
  writeNotNull('pre_processed_at', instance.preProcessedAt?.toIso8601String());
  writeNotNull('processing_at', instance.processingAt?.toIso8601String());
  writeNotNull('confirmed_at', instance.confirmedAt?.toIso8601String());
  writeNotNull('completed_at', instance.completedAt?.toIso8601String());
  writeNotNull('canceled_at', instance.canceledAt?.toIso8601String());
  writeNotNull('failed_at', instance.failedAt?.toIso8601String());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  return val;
}

Cart _$CartFromJson(Map<String, dynamic> json) => Cart(
      id: json['id'] as String? ?? 'default',
      email: json['email'] as String? ?? 'default',
      billingAddressId: json['billing_address_id'] as String? ?? 'default',
      billingAddress: json['billing_address'] == null
          ? null
          : Address.fromJson(json['billing_address'] as Map<String, dynamic>),
      shippingAddressId: json['shipping_address_id'] as String? ?? 'default',
      shippingAddress: json['shipping_address'] == null
          ? null
          : Address.fromJson(json['shipping_address'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      regionId: json['region_id'] as String? ?? 'default',
      region: json['region'] == null
          ? null
          : Region.fromJson(json['region'] as Map<String, dynamic>),
      discounts: (json['discounts'] as List<dynamic>?)
              ?.map((e) => Discount.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      giftCards: (json['gift_cards'] as List<dynamic>?)
              ?.map((e) => GiftCard.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      customerId: json['customer_id'] as String? ?? 'default',
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
      paymentSession: json['payment_session'] == null
          ? null
          : PaymentSession.fromJson(
              json['payment_session'] as Map<String, dynamic>),
      paymentSessions: (json['payment_sessions'] as List<dynamic>?)
              ?.map((e) => PaymentSession.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      paymentId: json['payment_id'] as String? ?? 'default',
      payment: json['payment'] == null
          ? null
          : Payment.fromJson(json['payment'] as Map<String, dynamic>),
      shippingMethods: (json['shipping_methods'] as List<dynamic>?)
              ?.map((e) => ShippingMethod.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      type: Cart.cartTypeTypeFromJson(json['type']),
      completedAt: json['completed_at'] == null
          ? null
          : DateTime.parse(json['completed_at'] as String),
      paymentAuthorizedAt: json['payment_authorized_at'] == null
          ? null
          : DateTime.parse(json['payment_authorized_at'] as String),
      idempotencyKey: json['idempotency_key'] as String? ?? 'default',
      context: json['context'],
      salesChannelId: json['sales_channel_id'] as String? ?? 'default',
      salesChannel: json['sales_channel'] == null
          ? null
          : SalesChannel.fromJson(
              json['sales_channel'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      metadata: json['metadata'],
      shippingTotal: json['shipping_total'] as int? ?? 36,
      discountTotal: json['discount_total'] as int? ?? 36,
      rawDiscountTotal: json['raw_discount_total'] as int? ?? 36,
      itemTaxTotal: json['item_tax_total'] as int? ?? 36,
      shippingTaxTotal: json['shipping_tax_total'] as int? ?? 36,
      taxTotal: json['tax_total'] as int? ?? 36,
      refundedTotal: json['refunded_total'] as int? ?? 36,
      total: json['total'] as int? ?? 36,
      subtotal: json['subtotal'] as int? ?? 36,
      refundableAmount: json['refundable_amount'] as int? ?? 36,
      giftCardTotal: json['gift_card_total'] as int? ?? 36,
      giftCardTaxTotal: json['gift_card_tax_total'] as int? ?? 36,
    );

Map<String, dynamic> _$CartToJson(Cart instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  writeNotNull('billing_address_id', instance.billingAddressId);
  writeNotNull('billing_address', instance.billingAddress?.toJson());
  writeNotNull('shipping_address_id', instance.shippingAddressId);
  writeNotNull('shipping_address', instance.shippingAddress?.toJson());
  writeNotNull('items', instance.items?.map((e) => e.toJson()).toList());
  val['region_id'] = instance.regionId;
  writeNotNull('region', instance.region?.toJson());
  writeNotNull(
      'discounts', instance.discounts?.map((e) => e.toJson()).toList());
  writeNotNull(
      'gift_cards', instance.giftCards?.map((e) => e.toJson()).toList());
  writeNotNull('customer_id', instance.customerId);
  writeNotNull('customer', instance.customer?.toJson());
  writeNotNull('payment_session', instance.paymentSession?.toJson());
  writeNotNull('payment_sessions',
      instance.paymentSessions?.map((e) => e.toJson()).toList());
  writeNotNull('payment_id', instance.paymentId);
  writeNotNull('payment', instance.payment?.toJson());
  writeNotNull('shipping_methods',
      instance.shippingMethods?.map((e) => e.toJson()).toList());
  writeNotNull('type', cartTypeToJson(instance.type));
  writeNotNull('completed_at', instance.completedAt?.toIso8601String());
  writeNotNull(
      'payment_authorized_at', instance.paymentAuthorizedAt?.toIso8601String());
  writeNotNull('idempotency_key', instance.idempotencyKey);
  writeNotNull('context', instance.context);
  writeNotNull('sales_channel_id', instance.salesChannelId);
  writeNotNull('sales_channel', instance.salesChannel?.toJson());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  writeNotNull('shipping_total', instance.shippingTotal);
  writeNotNull('discount_total', instance.discountTotal);
  writeNotNull('raw_discount_total', instance.rawDiscountTotal);
  writeNotNull('item_tax_total', instance.itemTaxTotal);
  writeNotNull('shipping_tax_total', instance.shippingTaxTotal);
  writeNotNull('tax_total', instance.taxTotal);
  writeNotNull('refunded_total', instance.refundedTotal);
  writeNotNull('total', instance.total);
  writeNotNull('subtotal', instance.subtotal);
  writeNotNull('refundable_amount', instance.refundableAmount);
  writeNotNull('gift_card_total', instance.giftCardTotal);
  writeNotNull('gift_card_tax_total', instance.giftCardTaxTotal);
  return val;
}

ClaimImage _$ClaimImageFromJson(Map<String, dynamic> json) => ClaimImage(
      id: json['id'] as String? ?? 'default',
      claimItemId: json['claim_item_id'] as String? ?? 'default',
      claimItem: json['claim_item'] == null
          ? null
          : ClaimItem.fromJson(json['claim_item'] as Map<String, dynamic>),
      url: json['url'] as String? ?? 'default',
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$ClaimImageToJson(ClaimImage instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'claim_item_id': instance.claimItemId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('claim_item', instance.claimItem?.toJson());
  val['url'] = instance.url;
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  return val;
}

ClaimItem _$ClaimItemFromJson(Map<String, dynamic> json) => ClaimItem(
      id: json['id'] as String? ?? 'default',
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ClaimImage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      claimOrderId: json['claim_order_id'] as String? ?? 'default',
      claimOrder: json['claim_order'] == null
          ? null
          : ClaimOrder.fromJson(json['claim_order'] as Map<String, dynamic>),
      itemId: json['item_id'] as String? ?? 'default',
      item: json['item'] == null
          ? null
          : LineItem.fromJson(json['item'] as Map<String, dynamic>),
      variantId: json['variant_id'] as String? ?? 'default',
      variant: json['variant'] == null
          ? null
          : ProductVariant.fromJson(json['variant'] as Map<String, dynamic>),
      reason: claimItemReasonFromJson(json['reason']),
      note: json['note'] as String? ?? 'default',
      quantity: json['quantity'] as int? ?? 36,
      tags: (json['tags'] as List<dynamic>?)
              ?.map((e) => ClaimTag.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$ClaimItemToJson(ClaimItem instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('images', instance.images?.map((e) => e.toJson()).toList());
  val['claim_order_id'] = instance.claimOrderId;
  writeNotNull('claim_order', instance.claimOrder?.toJson());
  val['item_id'] = instance.itemId;
  writeNotNull('item', instance.item?.toJson());
  val['variant_id'] = instance.variantId;
  writeNotNull('variant', instance.variant?.toJson());
  writeNotNull('reason', claimItemReasonToJson(instance.reason));
  writeNotNull('note', instance.note);
  val['quantity'] = instance.quantity;
  writeNotNull('tags', instance.tags?.map((e) => e.toJson()).toList());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  return val;
}

ClaimOrder _$ClaimOrderFromJson(Map<String, dynamic> json) => ClaimOrder(
      id: json['id'] as String? ?? 'default',
      type: claimOrderTypeFromJson(json['type']),
      paymentStatus: ClaimOrder.claimOrderPaymentStatusPaymentStatusFromJson(
          json['payment_status']),
      fulfillmentStatus:
          ClaimOrder.claimOrderFulfillmentStatusFulfillmentStatusFromJson(
              json['fulfillment_status']),
      claimItems: (json['claim_items'] as List<dynamic>?)
              ?.map((e) => ClaimItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      additionalItems: (json['additional_items'] as List<dynamic>?)
              ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      orderId: json['order_id'] as String? ?? 'default',
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
      returnOrder: json['return_order'] == null
          ? null
          : Return.fromJson(json['return_order'] as Map<String, dynamic>),
      shippingAddressId: json['shipping_address_id'] as String? ?? 'default',
      shippingAddress: json['shipping_address'] == null
          ? null
          : Address.fromJson(json['shipping_address'] as Map<String, dynamic>),
      shippingMethods: (json['shipping_methods'] as List<dynamic>?)
              ?.map((e) => ShippingMethod.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      fulfillments: (json['fulfillments'] as List<dynamic>?)
              ?.map((e) => Fulfillment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      refundAmount: json['refund_amount'] as int? ?? 36,
      canceledAt: json['canceled_at'] == null
          ? null
          : DateTime.parse(json['canceled_at'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      metadata: json['metadata'],
      noNotification: json['no_notification'] as bool?,
      idempotencyKey: json['idempotency_key'] as String? ?? 'default',
    );

Map<String, dynamic> _$ClaimOrderToJson(ClaimOrder instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', claimOrderTypeToJson(instance.type));
  writeNotNull(
      'payment_status', claimOrderPaymentStatusToJson(instance.paymentStatus));
  writeNotNull('fulfillment_status',
      claimOrderFulfillmentStatusToJson(instance.fulfillmentStatus));
  writeNotNull(
      'claim_items', instance.claimItems?.map((e) => e.toJson()).toList());
  writeNotNull('additional_items',
      instance.additionalItems?.map((e) => e.toJson()).toList());
  val['order_id'] = instance.orderId;
  writeNotNull('order', instance.order?.toJson());
  writeNotNull('return_order', instance.returnOrder?.toJson());
  writeNotNull('shipping_address_id', instance.shippingAddressId);
  writeNotNull('shipping_address', instance.shippingAddress?.toJson());
  writeNotNull('shipping_methods',
      instance.shippingMethods?.map((e) => e.toJson()).toList());
  writeNotNull(
      'fulfillments', instance.fulfillments?.map((e) => e.toJson()).toList());
  writeNotNull('refund_amount', instance.refundAmount);
  writeNotNull('canceled_at', instance.canceledAt?.toIso8601String());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  writeNotNull('no_notification', instance.noNotification);
  writeNotNull('idempotency_key', instance.idempotencyKey);
  return val;
}

ClaimTag _$ClaimTagFromJson(Map<String, dynamic> json) => ClaimTag(
      id: json['id'] as String? ?? 'default',
      value: json['value'] as String? ?? 'default',
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$ClaimTagToJson(ClaimTag instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'value': instance.value,
    'created_at': instance.createdAt.toIso8601String(),
    'updated_at': instance.updatedAt.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  return val;
}

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
      id: json['id'] as String? ?? 'default',
      iso2: json['iso_2'] as String? ?? 'default',
      iso3: json['iso_3'] as String? ?? 'default',
      numCode: json['num_code'] as String? ?? 'default',
      name: json['name'] as String? ?? 'default',
      displayName: json['display_name'] as String? ?? 'default',
      regionId: json['region_id'] as String? ?? 'default',
      region: json['region'] == null
          ? null
          : Region.fromJson(json['region'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CountryToJson(Country instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'iso_2': instance.iso2,
    'iso_3': instance.iso3,
    'num_code': instance.numCode,
    'name': instance.name,
    'display_name': instance.displayName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('region_id', instance.regionId);
  writeNotNull('region', instance.region?.toJson());
  return val;
}

CreateStockLocationInput _$CreateStockLocationInputFromJson(
        Map<String, dynamic> json) =>
    CreateStockLocationInput(
      name: json['name'] as String? ?? 'default',
      addressId: json['address_id'] as String? ?? 'default',
      address: json['address'] == null
          ? null
          : StockLocationAddressInput.fromJson(
              json['address'] as Map<String, dynamic>),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$CreateStockLocationInputToJson(
    CreateStockLocationInput instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address_id', instance.addressId);
  writeNotNull('address', instance.address?.toJson());
  writeNotNull('metadata', instance.metadata);
  return val;
}

Currency _$CurrencyFromJson(Map<String, dynamic> json) => Currency(
      code: json['code'] as String? ?? 'default',
      symbol: json['symbol'] as String? ?? 'default',
      symbolNative: json['symbol_native'] as String? ?? 'default',
      name: json['name'] as String? ?? 'default',
      includesTax: json['includes_tax'] as bool? ?? false,
    );

Map<String, dynamic> _$CurrencyToJson(Currency instance) {
  final val = <String, dynamic>{
    'code': instance.code,
    'symbol': instance.symbol,
    'symbol_native': instance.symbolNative,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('includes_tax', instance.includesTax);
  return val;
}

CustomShippingOption _$CustomShippingOptionFromJson(
        Map<String, dynamic> json) =>
    CustomShippingOption(
      id: json['id'] as String? ?? 'default',
      price: json['price'] as int? ?? 36,
      shippingOptionId: json['shipping_option_id'] as String? ?? 'default',
      shippingOption: json['shipping_option'] == null
          ? null
          : ShippingOption.fromJson(
              json['shipping_option'] as Map<String, dynamic>),
      cartId: json['cart_id'] as String? ?? 'default',
      cart: json['cart'] == null
          ? null
          : Cart.fromJson(json['cart'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$CustomShippingOptionToJson(
    CustomShippingOption instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'price': instance.price,
    'shipping_option_id': instance.shippingOptionId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('shipping_option', instance.shippingOption?.toJson());
  writeNotNull('cart_id', instance.cartId);
  writeNotNull('cart', instance.cart?.toJson());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  return val;
}

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
      id: json['id'] as String? ?? 'default',
      email: json['email'] as String? ?? 'default',
      firstName: json['first_name'] as String? ?? 'default',
      lastName: json['last_name'] as String? ?? 'default',
      billingAddressId: json['billing_address_id'] as String? ?? 'default',
      billingAddress: json['billing_address'] == null
          ? null
          : Address.fromJson(json['billing_address'] as Map<String, dynamic>),
      shippingAddresses: (json['shipping_addresses'] as List<dynamic>?)
              ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      phone: json['phone'] as String? ?? 'default',
      hasAccount: json['has_account'] as bool? ?? false,
      orders: (json['orders'] as List<dynamic>?)
              ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      groups: (json['groups'] as List<dynamic>?)
              ?.map((e) => CustomerGroup.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'email': instance.email,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('billing_address_id', instance.billingAddressId);
  writeNotNull('billing_address', instance.billingAddress?.toJson());
  writeNotNull('shipping_addresses',
      instance.shippingAddresses?.map((e) => e.toJson()).toList());
  writeNotNull('phone', instance.phone);
  val['has_account'] = instance.hasAccount;
  writeNotNull('orders', instance.orders?.map((e) => e.toJson()).toList());
  writeNotNull('groups', instance.groups?.map((e) => e.toJson()).toList());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  return val;
}

CustomerGroup _$CustomerGroupFromJson(Map<String, dynamic> json) =>
    CustomerGroup(
      id: json['id'] as String? ?? 'default',
      name: json['name'] as String? ?? 'default',
      customers: (json['customers'] as List<dynamic>?)
              ?.map((e) => Customer.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      priceLists: (json['price_lists'] as List<dynamic>?)
              ?.map((e) => PriceList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$CustomerGroupToJson(CustomerGroup instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'customers', instance.customers?.map((e) => e.toJson()).toList());
  writeNotNull(
      'price_lists', instance.priceLists?.map((e) => e.toJson()).toList());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  return val;
}

DecoratedInventoryItemDTO _$DecoratedInventoryItemDTOFromJson(
        Map<String, dynamic> json) =>
    DecoratedInventoryItemDTO(
      locationLevels: (json['location_levels'] as List<dynamic>?)
              ?.map(
                  (e) => InventoryLevelDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      variants: (json['variants'] as List<dynamic>?)
              ?.map((e) => ProductVariant.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      stockedQuantity: (json['stocked_quantity'] as num).toDouble(),
      reservedQuantity: (json['reserved_quantity'] as num).toDouble(),
      id: json['id'] as String? ?? 'default',
      sku: json['sku'] as String? ?? 'default',
      hsCode: json['hs_code'] as String? ?? 'default',
      originCountry: json['origin_country'] as String? ?? 'default',
      midCode: json['mid_code'] as String? ?? 'default',
      title: json['title'] as String? ?? 'default',
      description: json['description'] as String? ?? 'default',
      thumbnail: json['thumbnail'] as String? ?? 'default',
      material: json['material'] as String? ?? 'default',
      weight: (json['weight'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      width: (json['width'] as num?)?.toDouble(),
      length: (json['length'] as num?)?.toDouble(),
      requiresShipping: json['requires_shipping'] as bool?,
      metadata: json['metadata'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
    );

Map<String, dynamic> _$DecoratedInventoryItemDTOToJson(
    DecoratedInventoryItemDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('location_levels',
      instance.locationLevels?.map((e) => e.toJson()).toList());
  writeNotNull('variants', instance.variants?.map((e) => e.toJson()).toList());
  val['stocked_quantity'] = instance.stockedQuantity;
  val['reserved_quantity'] = instance.reservedQuantity;
  writeNotNull('id', instance.id);
  val['sku'] = instance.sku;
  writeNotNull('hs_code', instance.hsCode);
  writeNotNull('origin_country', instance.originCountry);
  writeNotNull('mid_code', instance.midCode);
  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('thumbnail', instance.thumbnail);
  writeNotNull('material', instance.material);
  writeNotNull('weight', instance.weight);
  writeNotNull('height', instance.height);
  writeNotNull('width', instance.width);
  writeNotNull('length', instance.length);
  writeNotNull('requires_shipping', instance.requiresShipping);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('created_at', instance.createdAt?.toIso8601String());
  writeNotNull('updated_at', instance.updatedAt?.toIso8601String());
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  return val;
}

Discount _$DiscountFromJson(Map<String, dynamic> json) => Discount(
      id: json['id'] as String? ?? 'default',
      code: json['code'] as String? ?? 'default',
      isDynamic: json['is_dynamic'] as bool,
      ruleId: json['rule_id'] as String? ?? 'default',
      rule: json['rule'] == null
          ? null
          : DiscountRule.fromJson(json['rule'] as Map<String, dynamic>),
      isDisabled: json['is_disabled'] as bool,
      parentDiscountId: json['parent_discount_id'] as String? ?? 'default',
      parentDiscount: json['parent_discount'] == null
          ? null
          : Discount.fromJson(json['parent_discount'] as Map<String, dynamic>),
      startsAt: DateTime.parse(json['starts_at'] as String),
      endsAt: json['ends_at'] == null
          ? null
          : DateTime.parse(json['ends_at'] as String),
      validDuration: json['valid_duration'] as String? ?? 'default',
      regions: (json['regions'] as List<dynamic>?)
              ?.map((e) => Region.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      usageLimit: json['usage_limit'] as int? ?? 36,
      usageCount: json['usage_count'] as int? ?? 36,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$DiscountToJson(Discount instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'code': instance.code,
    'is_dynamic': instance.isDynamic,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('rule_id', instance.ruleId);
  writeNotNull('rule', instance.rule?.toJson());
  val['is_disabled'] = instance.isDisabled;
  writeNotNull('parent_discount_id', instance.parentDiscountId);
  writeNotNull('parent_discount', instance.parentDiscount?.toJson());
  val['starts_at'] = instance.startsAt.toIso8601String();
  writeNotNull('ends_at', instance.endsAt?.toIso8601String());
  writeNotNull('valid_duration', instance.validDuration);
  writeNotNull('regions', instance.regions?.map((e) => e.toJson()).toList());
  writeNotNull('usage_limit', instance.usageLimit);
  val['usage_count'] = instance.usageCount;
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  return val;
}

DiscountCondition _$DiscountConditionFromJson(Map<String, dynamic> json) =>
    DiscountCondition(
      id: json['id'] as String? ?? 'default',
      type: discountConditionTypeFromJson(json['type']),
      $operator: discountConditionOperatorFromJson(json['operator']),
      discountRuleId: json['discount_rule_id'] as String? ?? 'default',
      discountRule: json['discount_rule'] == null
          ? null
          : DiscountRule.fromJson(
              json['discount_rule'] as Map<String, dynamic>),
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      productTypes: (json['product_types'] as List<dynamic>?)
              ?.map((e) => ProductType.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      productTags: (json['product_tags'] as List<dynamic>?)
              ?.map((e) => ProductTag.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      productCollections: (json['product_collections'] as List<dynamic>?)
              ?.map(
                  (e) => ProductCollection.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      customerGroups: (json['customer_groups'] as List<dynamic>?)
              ?.map((e) => CustomerGroup.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$DiscountConditionToJson(DiscountCondition instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', discountConditionTypeToJson(instance.type));
  writeNotNull('operator', discountConditionOperatorToJson(instance.$operator));
  val['discount_rule_id'] = instance.discountRuleId;
  writeNotNull('discount_rule', instance.discountRule?.toJson());
  writeNotNull('products', instance.products?.map((e) => e.toJson()).toList());
  writeNotNull(
      'product_types', instance.productTypes?.map((e) => e.toJson()).toList());
  writeNotNull(
      'product_tags', instance.productTags?.map((e) => e.toJson()).toList());
  writeNotNull('product_collections',
      instance.productCollections?.map((e) => e.toJson()).toList());
  writeNotNull('customer_groups',
      instance.customerGroups?.map((e) => e.toJson()).toList());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  return val;
}

DiscountConditionCustomerGroup _$DiscountConditionCustomerGroupFromJson(
        Map<String, dynamic> json) =>
    DiscountConditionCustomerGroup(
      customerGroupId: json['customer_group_id'] as String? ?? 'default',
      conditionId: json['condition_id'] as String? ?? 'default',
      customerGroup: json['customer_group'] == null
          ? null
          : CustomerGroup.fromJson(
              json['customer_group'] as Map<String, dynamic>),
      discountCondition: json['discount_condition'] == null
          ? null
          : DiscountCondition.fromJson(
              json['discount_condition'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$DiscountConditionCustomerGroupToJson(
    DiscountConditionCustomerGroup instance) {
  final val = <String, dynamic>{
    'customer_group_id': instance.customerGroupId,
    'condition_id': instance.conditionId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer_group', instance.customerGroup?.toJson());
  writeNotNull('discount_condition', instance.discountCondition?.toJson());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('metadata', instance.metadata);
  return val;
}

DiscountConditionProduct _$DiscountConditionProductFromJson(
        Map<String, dynamic> json) =>
    DiscountConditionProduct(
      productId: json['product_id'] as String? ?? 'default',
      conditionId: json['condition_id'] as String? ?? 'default',
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      discountCondition: json['discount_condition'] == null
          ? null
          : DiscountCondition.fromJson(
              json['discount_condition'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$DiscountConditionProductToJson(
    DiscountConditionProduct instance) {
  final val = <String, dynamic>{
    'product_id': instance.productId,
    'condition_id': instance.conditionId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('product', instance.product?.toJson());
  writeNotNull('discount_condition', instance.discountCondition?.toJson());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('metadata', instance.metadata);
  return val;
}

DiscountConditionProductCollection _$DiscountConditionProductCollectionFromJson(
        Map<String, dynamic> json) =>
    DiscountConditionProductCollection(
      productCollectionId:
          json['product_collection_id'] as String? ?? 'default',
      conditionId: json['condition_id'] as String? ?? 'default',
      productCollection: json['product_collection'] == null
          ? null
          : ProductCollection.fromJson(
              json['product_collection'] as Map<String, dynamic>),
      discountCondition: json['discount_condition'] == null
          ? null
          : DiscountCondition.fromJson(
              json['discount_condition'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$DiscountConditionProductCollectionToJson(
    DiscountConditionProductCollection instance) {
  final val = <String, dynamic>{
    'product_collection_id': instance.productCollectionId,
    'condition_id': instance.conditionId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('product_collection', instance.productCollection?.toJson());
  writeNotNull('discount_condition', instance.discountCondition?.toJson());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('metadata', instance.metadata);
  return val;
}

DiscountConditionProductTag _$DiscountConditionProductTagFromJson(
        Map<String, dynamic> json) =>
    DiscountConditionProductTag(
      productTagId: json['product_tag_id'] as String? ?? 'default',
      conditionId: json['condition_id'] as String? ?? 'default',
      productTag: json['product_tag'] == null
          ? null
          : ProductTag.fromJson(json['product_tag'] as Map<String, dynamic>),
      discountCondition: json['discount_condition'] == null
          ? null
          : DiscountCondition.fromJson(
              json['discount_condition'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$DiscountConditionProductTagToJson(
    DiscountConditionProductTag instance) {
  final val = <String, dynamic>{
    'product_tag_id': instance.productTagId,
    'condition_id': instance.conditionId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('product_tag', instance.productTag?.toJson());
  writeNotNull('discount_condition', instance.discountCondition?.toJson());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('metadata', instance.metadata);
  return val;
}

DiscountConditionProductType _$DiscountConditionProductTypeFromJson(
        Map<String, dynamic> json) =>
    DiscountConditionProductType(
      productTypeId: json['product_type_id'] as String? ?? 'default',
      conditionId: json['condition_id'] as String? ?? 'default',
      productType: json['product_type'] == null
          ? null
          : ProductType.fromJson(json['product_type'] as Map<String, dynamic>),
      discountCondition: json['discount_condition'] == null
          ? null
          : DiscountCondition.fromJson(
              json['discount_condition'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$DiscountConditionProductTypeToJson(
    DiscountConditionProductType instance) {
  final val = <String, dynamic>{
    'product_type_id': instance.productTypeId,
    'condition_id': instance.conditionId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('product_type', instance.productType?.toJson());
  writeNotNull('discount_condition', instance.discountCondition?.toJson());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('metadata', instance.metadata);
  return val;
}

DiscountRule _$DiscountRuleFromJson(Map<String, dynamic> json) => DiscountRule(
      id: json['id'] as String? ?? 'default',
      type: discountRuleTypeFromJson(json['type']),
      description: json['description'] as String? ?? 'default',
      value: json['value'] as int? ?? 36,
      allocation: discountRuleAllocationNullableFromJson(json['allocation']),
      conditions: (json['conditions'] as List<dynamic>?)
              ?.map(
                  (e) => DiscountCondition.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$DiscountRuleToJson(DiscountRule instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', discountRuleTypeToJson(instance.type));
  writeNotNull('description', instance.description);
  val['value'] = instance.value;
  writeNotNull(
      'allocation', discountRuleAllocationNullableToJson(instance.allocation));
  writeNotNull(
      'conditions', instance.conditions?.map((e) => e.toJson()).toList());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  return val;
}

DraftOrder _$DraftOrderFromJson(Map<String, dynamic> json) => DraftOrder(
      id: json['id'] as String? ?? 'default',
      status: DraftOrder.draftOrderStatusStatusFromJson(json['status']),
      displayId: json['display_id'] as String? ?? 'default',
      cartId: json['cart_id'] as String? ?? 'default',
      cart: json['cart'] == null
          ? null
          : Cart.fromJson(json['cart'] as Map<String, dynamic>),
      orderId: json['order_id'] as String? ?? 'default',
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
      canceledAt: json['canceled_at'] == null
          ? null
          : DateTime.parse(json['canceled_at'] as String),
      completedAt: json['completed_at'] == null
          ? null
          : DateTime.parse(json['completed_at'] as String),
      noNotificationOrder: json['no_notification_order'] as bool?,
      idempotencyKey: json['idempotency_key'] as String? ?? 'default',
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$DraftOrderToJson(DraftOrder instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', draftOrderStatusToJson(instance.status));
  val['display_id'] = instance.displayId;
  writeNotNull('cart_id', instance.cartId);
  writeNotNull('cart', instance.cart?.toJson());
  writeNotNull('order_id', instance.orderId);
  writeNotNull('order', instance.order?.toJson());
  writeNotNull('canceled_at', instance.canceledAt?.toIso8601String());
  writeNotNull('completed_at', instance.completedAt?.toIso8601String());
  writeNotNull('no_notification_order', instance.noNotificationOrder);
  writeNotNull('idempotency_key', instance.idempotencyKey);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('metadata', instance.metadata);
  return val;
}

Error _$ErrorFromJson(Map<String, dynamic> json) => Error(
      code: errorCodeNullableFromJson(json['code']),
      message: json['message'] as String? ?? 'default',
      type: errorTypeNullableFromJson(json['type']),
    );

Map<String, dynamic> _$ErrorToJson(Error instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', errorCodeNullableToJson(instance.code));
  writeNotNull('message', instance.message);
  writeNotNull('type', errorTypeNullableToJson(instance.type));
  return val;
}

ExtendedReservationItem _$ExtendedReservationItemFromJson(
        Map<String, dynamic> json) =>
    ExtendedReservationItem(
      lineItem: json['line_item'] == null
          ? null
          : LineItem.fromJson(json['line_item'] as Map<String, dynamic>),
      inventoryItem: json['inventory_item'] == null
          ? null
          : InventoryItemDTO.fromJson(
              json['inventory_item'] as Map<String, dynamic>),
      id: json['id'] as String? ?? 'default',
      locationId: json['location_id'] as String? ?? 'default',
      inventoryItemId: json['inventory_item_id'] as String? ?? 'default',
      description: json['description'] as String? ?? 'default',
      createdBy: json['created_by'] as String? ?? 'default',
      quantity: (json['quantity'] as num).toDouble(),
      metadata: json['metadata'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
    );

Map<String, dynamic> _$ExtendedReservationItemToJson(
    ExtendedReservationItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('line_item', instance.lineItem?.toJson());
  writeNotNull('inventory_item', instance.inventoryItem?.toJson());
  val['id'] = instance.id;
  val['location_id'] = instance.locationId;
  val['inventory_item_id'] = instance.inventoryItemId;
  writeNotNull('description', instance.description);
  writeNotNull('created_by', instance.createdBy);
  val['quantity'] = instance.quantity;
  writeNotNull('metadata', instance.metadata);
  writeNotNull('created_at', instance.createdAt?.toIso8601String());
  writeNotNull('updated_at', instance.updatedAt?.toIso8601String());
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  return val;
}

ExtendedStoreDTO _$ExtendedStoreDTOFromJson(Map<String, dynamic> json) =>
    ExtendedStoreDTO(
      paymentProviders: json['payment_providers'] == null
          ? null
          : PaymentProvider.fromJson(
              json['payment_providers'] as Map<String, dynamic>),
      fulfillmentProviders: json['fulfillment_providers'] == null
          ? null
          : FulfillmentProvider.fromJson(
              json['fulfillment_providers'] as Map<String, dynamic>),
      featureFlags: (json['feature_flags'] as List<dynamic>?)
          ?.map((e) =>
              FeatureFlagsResponse$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      modules: (json['modules'] as List<dynamic>)
          .map((e) => ModulesResponse$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String? ?? 'default',
      name: json['name'] as String? ?? 'default',
      defaultCurrencyCode:
          json['default_currency_code'] as String? ?? 'default',
      defaultCurrency: json['default_currency'] == null
          ? null
          : Currency.fromJson(json['default_currency'] as Map<String, dynamic>),
      currencies: (json['currencies'] as List<dynamic>?)
              ?.map((e) => Currency.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      swapLinkTemplate: json['swap_link_template'] as String? ?? 'default',
      paymentLinkTemplate:
          json['payment_link_template'] as String? ?? 'default',
      inviteLinkTemplate: json['invite_link_template'] as String? ?? 'default',
      defaultLocationId: json['default_location_id'] as String? ?? 'default',
      defaultSalesChannelId:
          json['default_sales_channel_id'] as String? ?? 'default',
      defaultSalesChannel: json['default_sales_channel'] == null
          ? null
          : SalesChannel.fromJson(
              json['default_sales_channel'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$ExtendedStoreDTOToJson(ExtendedStoreDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('payment_providers', instance.paymentProviders?.toJson());
  writeNotNull(
      'fulfillment_providers', instance.fulfillmentProviders?.toJson());
  writeNotNull(
      'feature_flags', instance.featureFlags?.map((e) => e.toJson()).toList());
  val['modules'] = instance.modules.map((e) => e.toJson()).toList();
  val['id'] = instance.id;
  val['name'] = instance.name;
  val['default_currency_code'] = instance.defaultCurrencyCode;
  writeNotNull('default_currency', instance.defaultCurrency?.toJson());
  writeNotNull(
      'currencies', instance.currencies?.map((e) => e.toJson()).toList());
  writeNotNull('swap_link_template', instance.swapLinkTemplate);
  writeNotNull('payment_link_template', instance.paymentLinkTemplate);
  writeNotNull('invite_link_template', instance.inviteLinkTemplate);
  writeNotNull('default_location_id', instance.defaultLocationId);
  writeNotNull('default_sales_channel_id', instance.defaultSalesChannelId);
  writeNotNull('default_sales_channel', instance.defaultSalesChannel?.toJson());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('metadata', instance.metadata);
  return val;
}

FeatureFlagsResponse$Item _$FeatureFlagsResponse$ItemFromJson(
        Map<String, dynamic> json) =>
    FeatureFlagsResponse$Item(
      key: json['key'] as String? ?? 'default',
      value: json['value'] as bool,
    );

Map<String, dynamic> _$FeatureFlagsResponse$ItemToJson(
        FeatureFlagsResponse$Item instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };

Fulfillment _$FulfillmentFromJson(Map<String, dynamic> json) => Fulfillment(
      id: json['id'] as String? ?? 'default',
      claimOrderId: json['claim_order_id'] as String? ?? 'default',
      claimOrder: json['claim_order'] == null
          ? null
          : ClaimOrder.fromJson(json['claim_order'] as Map<String, dynamic>),
      swapId: json['swap_id'] as String? ?? 'default',
      swap: json['swap'] == null
          ? null
          : Swap.fromJson(json['swap'] as Map<String, dynamic>),
      orderId: json['order_id'] as String? ?? 'default',
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
      providerId: json['provider_id'] as String? ?? 'default',
      provider: json['provider'] == null
          ? null
          : FulfillmentProvider.fromJson(
              json['provider'] as Map<String, dynamic>),
      locationId: json['location_id'] as String? ?? 'default',
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => FulfillmentItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      trackingLinks: (json['tracking_links'] as List<dynamic>?)
              ?.map((e) => TrackingLink.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      trackingNumbers: (json['tracking_numbers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      data: json['data'] as Object,
      shippedAt: json['shipped_at'] == null
          ? null
          : DateTime.parse(json['shipped_at'] as String),
      noNotification: json['no_notification'] as bool?,
      canceledAt: json['canceled_at'] == null
          ? null
          : DateTime.parse(json['canceled_at'] as String),
      idempotencyKey: json['idempotency_key'] as String? ?? 'default',
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$FulfillmentToJson(Fulfillment instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('claim_order_id', instance.claimOrderId);
  writeNotNull('claim_order', instance.claimOrder?.toJson());
  writeNotNull('swap_id', instance.swapId);
  writeNotNull('swap', instance.swap?.toJson());
  writeNotNull('order_id', instance.orderId);
  writeNotNull('order', instance.order?.toJson());
  val['provider_id'] = instance.providerId;
  writeNotNull('provider', instance.provider?.toJson());
  writeNotNull('location_id', instance.locationId);
  writeNotNull('items', instance.items?.map((e) => e.toJson()).toList());
  writeNotNull('tracking_links',
      instance.trackingLinks?.map((e) => e.toJson()).toList());
  val['tracking_numbers'] = instance.trackingNumbers;
  val['data'] = instance.data;
  writeNotNull('shipped_at', instance.shippedAt?.toIso8601String());
  writeNotNull('no_notification', instance.noNotification);
  writeNotNull('canceled_at', instance.canceledAt?.toIso8601String());
  writeNotNull('idempotency_key', instance.idempotencyKey);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('metadata', instance.metadata);
  return val;
}

FulfillmentItem _$FulfillmentItemFromJson(Map<String, dynamic> json) =>
    FulfillmentItem(
      fulfillmentId: json['fulfillment_id'] as String? ?? 'default',
      itemId: json['item_id'] as String? ?? 'default',
      fulfillment: json['fulfillment'] == null
          ? null
          : Fulfillment.fromJson(json['fulfillment'] as Map<String, dynamic>),
      item: json['item'] == null
          ? null
          : LineItem.fromJson(json['item'] as Map<String, dynamic>),
      quantity: json['quantity'] as int? ?? 36,
    );

Map<String, dynamic> _$FulfillmentItemToJson(FulfillmentItem instance) {
  final val = <String, dynamic>{
    'fulfillment_id': instance.fulfillmentId,
    'item_id': instance.itemId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fulfillment', instance.fulfillment?.toJson());
  writeNotNull('item', instance.item?.toJson());
  val['quantity'] = instance.quantity;
  return val;
}

FulfillmentProvider _$FulfillmentProviderFromJson(Map<String, dynamic> json) =>
    FulfillmentProvider(
      id: json['id'] as String? ?? 'default',
      isInstalled: json['is_installed'] as bool? ?? true,
    );

Map<String, dynamic> _$FulfillmentProviderToJson(
        FulfillmentProvider instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_installed': instance.isInstalled,
    };

GiftCard _$GiftCardFromJson(Map<String, dynamic> json) => GiftCard(
      id: json['id'] as String? ?? 'default',
      code: json['code'] as String? ?? 'default',
      value: json['value'] as int? ?? 36,
      balance: json['balance'] as int? ?? 36,
      regionId: json['region_id'] as String? ?? 'default',
      region: json['region'] == null
          ? null
          : Region.fromJson(json['region'] as Map<String, dynamic>),
      orderId: json['order_id'] as String? ?? 'default',
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
      isDisabled: json['is_disabled'] as bool? ?? false,
      endsAt: json['ends_at'] == null
          ? null
          : DateTime.parse(json['ends_at'] as String),
      taxRate: (json['tax_rate'] as num?)?.toDouble(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$GiftCardToJson(GiftCard instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'code': instance.code,
    'value': instance.value,
    'balance': instance.balance,
    'region_id': instance.regionId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('region', instance.region?.toJson());
  writeNotNull('order_id', instance.orderId);
  writeNotNull('order', instance.order?.toJson());
  val['is_disabled'] = instance.isDisabled;
  writeNotNull('ends_at', instance.endsAt?.toIso8601String());
  writeNotNull('tax_rate', instance.taxRate);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  return val;
}

GiftCardTransaction _$GiftCardTransactionFromJson(Map<String, dynamic> json) =>
    GiftCardTransaction(
      id: json['id'] as String? ?? 'default',
      giftCardId: json['gift_card_id'] as String? ?? 'default',
      giftCard: json['gift_card'] == null
          ? null
          : GiftCard.fromJson(json['gift_card'] as Map<String, dynamic>),
      orderId: json['order_id'] as String? ?? 'default',
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
      amount: json['amount'] as int? ?? 36,
      createdAt: DateTime.parse(json['created_at'] as String),
      isTaxable: json['is_taxable'] as bool?,
      taxRate: (json['tax_rate'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$GiftCardTransactionToJson(GiftCardTransaction instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'gift_card_id': instance.giftCardId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('gift_card', instance.giftCard?.toJson());
  val['order_id'] = instance.orderId;
  writeNotNull('order', instance.order?.toJson());
  val['amount'] = instance.amount;
  val['created_at'] = instance.createdAt.toIso8601String();
  writeNotNull('is_taxable', instance.isTaxable);
  writeNotNull('tax_rate', instance.taxRate);
  return val;
}

IdempotencyKey _$IdempotencyKeyFromJson(Map<String, dynamic> json) =>
    IdempotencyKey(
      id: json['id'] as String? ?? 'default',
      idempotencyKey: json['idempotency_key'] as String? ?? 'default',
      createdAt: DateTime.parse(json['created_at'] as String),
      lockedAt: json['locked_at'] == null
          ? null
          : DateTime.parse(json['locked_at'] as String),
      requestMethod: json['request_method'] as String? ?? 'default',
      requestParams: json['request_params'],
      requestPath: json['request_path'] as String? ?? 'default',
      responseCode: json['response_code'] as String? ?? 'default',
      responseBody: json['response_body'],
      recoveryPoint: json['recovery_point'] as String? ?? 'default',
    );

Map<String, dynamic> _$IdempotencyKeyToJson(IdempotencyKey instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'idempotency_key': instance.idempotencyKey,
    'created_at': instance.createdAt.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locked_at', instance.lockedAt?.toIso8601String());
  writeNotNull('request_method', instance.requestMethod);
  writeNotNull('request_params', instance.requestParams);
  writeNotNull('request_path', instance.requestPath);
  writeNotNull('response_code', instance.responseCode);
  writeNotNull('response_body', instance.responseBody);
  val['recovery_point'] = instance.recoveryPoint;
  return val;
}

Image _$ImageFromJson(Map<String, dynamic> json) => Image(
      id: json['id'] as String? ?? 'default',
      url: json['url'] as String? ?? 'default',
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$ImageToJson(Image instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'url': instance.url,
    'created_at': instance.createdAt.toIso8601String(),
    'updated_at': instance.updatedAt.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  return val;
}

InventoryItemDTO _$InventoryItemDTOFromJson(Map<String, dynamic> json) =>
    InventoryItemDTO(
      id: json['id'] as String? ?? 'default',
      sku: json['sku'] as String? ?? 'default',
      hsCode: json['hs_code'] as String? ?? 'default',
      originCountry: json['origin_country'] as String? ?? 'default',
      midCode: json['mid_code'] as String? ?? 'default',
      title: json['title'] as String? ?? 'default',
      description: json['description'] as String? ?? 'default',
      thumbnail: json['thumbnail'] as String? ?? 'default',
      material: json['material'] as String? ?? 'default',
      weight: (json['weight'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      width: (json['width'] as num?)?.toDouble(),
      length: (json['length'] as num?)?.toDouble(),
      requiresShipping: json['requires_shipping'] as bool?,
      metadata: json['metadata'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
    );

Map<String, dynamic> _$InventoryItemDTOToJson(InventoryItemDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['sku'] = instance.sku;
  writeNotNull('hs_code', instance.hsCode);
  writeNotNull('origin_country', instance.originCountry);
  writeNotNull('mid_code', instance.midCode);
  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('thumbnail', instance.thumbnail);
  writeNotNull('material', instance.material);
  writeNotNull('weight', instance.weight);
  writeNotNull('height', instance.height);
  writeNotNull('width', instance.width);
  writeNotNull('length', instance.length);
  writeNotNull('requires_shipping', instance.requiresShipping);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('created_at', instance.createdAt?.toIso8601String());
  writeNotNull('updated_at', instance.updatedAt?.toIso8601String());
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  return val;
}

InventoryLevelDTO _$InventoryLevelDTOFromJson(Map<String, dynamic> json) =>
    InventoryLevelDTO(
      locationId: json['location_id'] as String? ?? 'default',
      stockedQuantity: (json['stocked_quantity'] as num).toDouble(),
      reservedQuantity: (json['reserved_quantity'] as num).toDouble(),
      incomingQuantity: (json['incoming_quantity'] as num).toDouble(),
      metadata: json['metadata'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
    );

Map<String, dynamic> _$InventoryLevelDTOToJson(InventoryLevelDTO instance) {
  final val = <String, dynamic>{
    'location_id': instance.locationId,
    'stocked_quantity': instance.stockedQuantity,
    'reserved_quantity': instance.reservedQuantity,
    'incoming_quantity': instance.incomingQuantity,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('metadata', instance.metadata);
  writeNotNull('created_at', instance.createdAt?.toIso8601String());
  writeNotNull('updated_at', instance.updatedAt?.toIso8601String());
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  return val;
}

Invite _$InviteFromJson(Map<String, dynamic> json) => Invite(
      id: json['id'] as String? ?? 'default',
      userEmail: json['user_email'] as String? ?? 'default',
      role: Invite.inviteRoleRoleNullableFromJson(json['role']),
      accepted: json['accepted'] as bool? ?? false,
      token: json['token'] as String? ?? 'default',
      expiresAt: DateTime.parse(json['expires_at'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$InviteToJson(Invite instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'user_email': instance.userEmail,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('role', inviteRoleNullableToJson(instance.role));
  val['accepted'] = instance.accepted;
  val['token'] = instance.token;
  val['expires_at'] = instance.expiresAt.toIso8601String();
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  return val;
}

LineItem _$LineItemFromJson(Map<String, dynamic> json) => LineItem(
      id: json['id'] as String? ?? 'default',
      cartId: json['cart_id'] as String? ?? 'default',
      cart: json['cart'] == null
          ? null
          : Cart.fromJson(json['cart'] as Map<String, dynamic>),
      orderId: json['order_id'] as String? ?? 'default',
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
      swapId: json['swap_id'] as String? ?? 'default',
      swap: json['swap'] == null
          ? null
          : Swap.fromJson(json['swap'] as Map<String, dynamic>),
      claimOrderId: json['claim_order_id'] as String? ?? 'default',
      claimOrder: json['claim_order'] == null
          ? null
          : ClaimOrder.fromJson(json['claim_order'] as Map<String, dynamic>),
      taxLines: (json['tax_lines'] as List<dynamic>?)
              ?.map((e) => LineItemTaxLine.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      adjustments: (json['adjustments'] as List<dynamic>?)
              ?.map(
                  (e) => LineItemAdjustment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      originalItemId: json['original_item_id'] as String? ?? 'default',
      orderEditId: json['order_edit_id'] as String? ?? 'default',
      orderEdit: json['order_edit'] == null
          ? null
          : OrderEdit.fromJson(json['order_edit'] as Map<String, dynamic>),
      title: json['title'] as String? ?? 'default',
      description: json['description'] as String? ?? 'default',
      thumbnail: json['thumbnail'] as String? ?? 'default',
      isReturn: json['is_return'] as bool? ?? false,
      isGiftcard: json['is_giftcard'] as bool? ?? false,
      shouldMerge: json['should_merge'] as bool? ?? true,
      allowDiscounts: json['allow_discounts'] as bool? ?? true,
      hasShipping: json['has_shipping'] as bool?,
      unitPrice: json['unit_price'] as int? ?? 36,
      variantId: json['variant_id'] as String? ?? 'default',
      variant: json['variant'] == null
          ? null
          : ProductVariant.fromJson(json['variant'] as Map<String, dynamic>),
      quantity: json['quantity'] as int? ?? 36,
      fulfilledQuantity: json['fulfilled_quantity'] as int? ?? 36,
      returnedQuantity: json['returned_quantity'] as int? ?? 36,
      shippedQuantity: json['shipped_quantity'] as int? ?? 36,
      refundable: json['refundable'] as int? ?? 36,
      subtotal: json['subtotal'] as int? ?? 36,
      taxTotal: json['tax_total'] as int? ?? 36,
      total: json['total'] as int? ?? 36,
      originalTotal: json['original_total'] as int? ?? 36,
      originalTaxTotal: json['original_tax_total'] as int? ?? 36,
      discountTotal: json['discount_total'] as int? ?? 36,
      rawDiscountTotal: json['raw_discount_total'] as int? ?? 36,
      giftCardTotal: json['gift_card_total'] as int? ?? 36,
      includesTax: json['includes_tax'] as bool? ?? false,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$LineItemToJson(LineItem instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cart_id', instance.cartId);
  writeNotNull('cart', instance.cart?.toJson());
  writeNotNull('order_id', instance.orderId);
  writeNotNull('order', instance.order?.toJson());
  writeNotNull('swap_id', instance.swapId);
  writeNotNull('swap', instance.swap?.toJson());
  writeNotNull('claim_order_id', instance.claimOrderId);
  writeNotNull('claim_order', instance.claimOrder?.toJson());
  writeNotNull('tax_lines', instance.taxLines?.map((e) => e.toJson()).toList());
  writeNotNull(
      'adjustments', instance.adjustments?.map((e) => e.toJson()).toList());
  writeNotNull('original_item_id', instance.originalItemId);
  writeNotNull('order_edit_id', instance.orderEditId);
  writeNotNull('order_edit', instance.orderEdit?.toJson());
  val['title'] = instance.title;
  writeNotNull('description', instance.description);
  writeNotNull('thumbnail', instance.thumbnail);
  val['is_return'] = instance.isReturn;
  val['is_giftcard'] = instance.isGiftcard;
  val['should_merge'] = instance.shouldMerge;
  val['allow_discounts'] = instance.allowDiscounts;
  writeNotNull('has_shipping', instance.hasShipping);
  val['unit_price'] = instance.unitPrice;
  writeNotNull('variant_id', instance.variantId);
  writeNotNull('variant', instance.variant?.toJson());
  val['quantity'] = instance.quantity;
  writeNotNull('fulfilled_quantity', instance.fulfilledQuantity);
  writeNotNull('returned_quantity', instance.returnedQuantity);
  writeNotNull('shipped_quantity', instance.shippedQuantity);
  writeNotNull('refundable', instance.refundable);
  writeNotNull('subtotal', instance.subtotal);
  writeNotNull('tax_total', instance.taxTotal);
  writeNotNull('total', instance.total);
  writeNotNull('original_total', instance.originalTotal);
  writeNotNull('original_tax_total', instance.originalTaxTotal);
  writeNotNull('discount_total', instance.discountTotal);
  writeNotNull('raw_discount_total', instance.rawDiscountTotal);
  writeNotNull('gift_card_total', instance.giftCardTotal);
  writeNotNull('includes_tax', instance.includesTax);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('metadata', instance.metadata);
  return val;
}

LineItemAdjustment _$LineItemAdjustmentFromJson(Map<String, dynamic> json) =>
    LineItemAdjustment(
      id: json['id'] as String? ?? 'default',
      itemId: json['item_id'] as String? ?? 'default',
      item: json['item'] == null
          ? null
          : LineItem.fromJson(json['item'] as Map<String, dynamic>),
      description: json['description'] as String? ?? 'default',
      discountId: json['discount_id'] as String? ?? 'default',
      discount: json['discount'] == null
          ? null
          : Discount.fromJson(json['discount'] as Map<String, dynamic>),
      amount: (json['amount'] as num).toDouble(),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$LineItemAdjustmentToJson(LineItemAdjustment instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'item_id': instance.itemId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('item', instance.item?.toJson());
  val['description'] = instance.description;
  writeNotNull('discount_id', instance.discountId);
  writeNotNull('discount', instance.discount?.toJson());
  val['amount'] = instance.amount;
  writeNotNull('metadata', instance.metadata);
  return val;
}

LineItemTaxLine _$LineItemTaxLineFromJson(Map<String, dynamic> json) =>
    LineItemTaxLine(
      id: json['id'] as String? ?? 'default',
      code: json['code'] as String? ?? 'default',
      name: json['name'] as String? ?? 'default',
      rate: (json['rate'] as num).toDouble(),
      itemId: json['item_id'] as String? ?? 'default',
      item: json['item'] == null
          ? null
          : LineItem.fromJson(json['item'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$LineItemTaxLineToJson(LineItemTaxLine instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  val['name'] = instance.name;
  val['rate'] = instance.rate;
  val['item_id'] = instance.itemId;
  writeNotNull('item', instance.item?.toJson());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('metadata', instance.metadata);
  return val;
}

ModulesResponse$Item _$ModulesResponse$ItemFromJson(
        Map<String, dynamic> json) =>
    ModulesResponse$Item(
      module: json['module'] as String? ?? 'default',
      resolution: json['resolution'] as String? ?? 'default',
    );

Map<String, dynamic> _$ModulesResponse$ItemToJson(
        ModulesResponse$Item instance) =>
    <String, dynamic>{
      'module': instance.module,
      'resolution': instance.resolution,
    };

MoneyAmount _$MoneyAmountFromJson(Map<String, dynamic> json) => MoneyAmount(
      id: json['id'] as String? ?? 'default',
      currencyCode: json['currency_code'] as String? ?? 'default',
      currency: json['currency'] == null
          ? null
          : Currency.fromJson(json['currency'] as Map<String, dynamic>),
      amount: json['amount'] as int? ?? 36,
      minQuantity: json['min_quantity'] as int? ?? 36,
      maxQuantity: json['max_quantity'] as int? ?? 36,
      priceListId: json['price_list_id'] as String? ?? 'default',
      priceList: json['price_list'] == null
          ? null
          : PriceList.fromJson(json['price_list'] as Map<String, dynamic>),
      variantId: json['variant_id'] as String? ?? 'default',
      variant: json['variant'] == null
          ? null
          : ProductVariant.fromJson(json['variant'] as Map<String, dynamic>),
      regionId: json['region_id'] as String? ?? 'default',
      region: json['region'] == null
          ? null
          : Region.fromJson(json['region'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
    );

Map<String, dynamic> _$MoneyAmountToJson(MoneyAmount instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'currency_code': instance.currencyCode,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currency', instance.currency?.toJson());
  val['amount'] = instance.amount;
  writeNotNull('min_quantity', instance.minQuantity);
  writeNotNull('max_quantity', instance.maxQuantity);
  writeNotNull('price_list_id', instance.priceListId);
  writeNotNull('price_list', instance.priceList?.toJson());
  writeNotNull('variant_id', instance.variantId);
  writeNotNull('variant', instance.variant?.toJson());
  writeNotNull('region_id', instance.regionId);
  writeNotNull('region', instance.region?.toJson());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  return val;
}

MultipleErrors _$MultipleErrorsFromJson(Map<String, dynamic> json) =>
    MultipleErrors(
      errors: (json['errors'] as List<dynamic>?)
              ?.map((e) => Error.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      message: json['message'] as String? ?? 'default',
    );

Map<String, dynamic> _$MultipleErrorsToJson(MultipleErrors instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  writeNotNull('message', instance.message);
  return val;
}

Note _$NoteFromJson(Map<String, dynamic> json) => Note(
      id: json['id'] as String? ?? 'default',
      resourceType: json['resource_type'] as String? ?? 'default',
      resourceId: json['resource_id'] as String? ?? 'default',
      value: json['value'] as String? ?? 'default',
      authorId: json['author_id'] as String? ?? 'default',
      author: json['author'] == null
          ? null
          : User.fromJson(json['author'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$NoteToJson(Note instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'resource_type': instance.resourceType,
    'resource_id': instance.resourceId,
    'value': instance.value,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('author_id', instance.authorId);
  writeNotNull('author', instance.author?.toJson());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  return val;
}

Notification _$NotificationFromJson(Map<String, dynamic> json) => Notification(
      id: json['id'] as String? ?? 'default',
      eventName: json['event_name'] as String? ?? 'default',
      resourceType: json['resource_type'] as String? ?? 'default',
      resourceId: json['resource_id'] as String? ?? 'default',
      customerId: json['customer_id'] as String? ?? 'default',
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
      to: json['to'] as String? ?? 'default',
      data: json['data'] as Object,
      parentId: json['parent_id'] as String? ?? 'default',
      parentNotification: json['parent_notification'] == null
          ? null
          : Notification.fromJson(
              json['parent_notification'] as Map<String, dynamic>),
      resends: (json['resends'] as List<dynamic>?)
              ?.map((e) => Notification.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      providerId: json['provider_id'] as String? ?? 'default',
      provider: json['provider'] == null
          ? null
          : NotificationProvider.fromJson(
              json['provider'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$NotificationToJson(Notification instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('event_name', instance.eventName);
  val['resource_type'] = instance.resourceType;
  val['resource_id'] = instance.resourceId;
  writeNotNull('customer_id', instance.customerId);
  writeNotNull('customer', instance.customer?.toJson());
  val['to'] = instance.to;
  val['data'] = instance.data;
  writeNotNull('parent_id', instance.parentId);
  writeNotNull('parent_notification', instance.parentNotification?.toJson());
  writeNotNull('resends', instance.resends?.map((e) => e.toJson()).toList());
  writeNotNull('provider_id', instance.providerId);
  writeNotNull('provider', instance.provider?.toJson());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  return val;
}

NotificationProvider _$NotificationProviderFromJson(
        Map<String, dynamic> json) =>
    NotificationProvider(
      id: json['id'] as String? ?? 'default',
      isInstalled: json['is_installed'] as bool? ?? true,
    );

Map<String, dynamic> _$NotificationProviderToJson(
        NotificationProvider instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_installed': instance.isInstalled,
    };

OAuth _$OAuthFromJson(Map<String, dynamic> json) => OAuth(
      id: json['id'] as String? ?? 'default',
      displayName: json['display_name'] as String? ?? 'default',
      applicationName: json['application_name'] as String? ?? 'default',
      installUrl: json['install_url'] as String? ?? 'default',
      uninstallUrl: json['uninstall_url'] as String? ?? 'default',
      data: json['data'],
    );

Map<String, dynamic> _$OAuthToJson(OAuth instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'display_name': instance.displayName,
    'application_name': instance.applicationName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('install_url', instance.installUrl);
  writeNotNull('uninstall_url', instance.uninstallUrl);
  writeNotNull('data', instance.data);
  return val;
}

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      id: json['id'] as String? ?? 'default',
      status: Order.orderStatusStatusFromJson(json['status']),
      fulfillmentStatus: Order.orderFulfillmentStatusFulfillmentStatusFromJson(
          json['fulfillment_status']),
      paymentStatus:
          Order.orderPaymentStatusPaymentStatusFromJson(json['payment_status']),
      displayId: json['display_id'] as int? ?? 36,
      cartId: json['cart_id'] as String? ?? 'default',
      cart: json['cart'] == null
          ? null
          : Cart.fromJson(json['cart'] as Map<String, dynamic>),
      customerId: json['customer_id'] as String? ?? 'default',
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
      email: json['email'] as String? ?? 'default',
      billingAddressId: json['billing_address_id'] as String? ?? 'default',
      billingAddress: json['billing_address'] == null
          ? null
          : Address.fromJson(json['billing_address'] as Map<String, dynamic>),
      shippingAddressId: json['shipping_address_id'] as String? ?? 'default',
      shippingAddress: json['shipping_address'] == null
          ? null
          : Address.fromJson(json['shipping_address'] as Map<String, dynamic>),
      regionId: json['region_id'] as String? ?? 'default',
      region: json['region'] == null
          ? null
          : Region.fromJson(json['region'] as Map<String, dynamic>),
      currencyCode: json['currency_code'] as String? ?? 'default',
      currency: json['currency'] == null
          ? null
          : Currency.fromJson(json['currency'] as Map<String, dynamic>),
      taxRate: (json['tax_rate'] as num?)?.toDouble(),
      discounts: (json['discounts'] as List<dynamic>?)
              ?.map((e) => Discount.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      giftCards: (json['gift_cards'] as List<dynamic>?)
              ?.map((e) => GiftCard.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      shippingMethods: (json['shipping_methods'] as List<dynamic>?)
              ?.map((e) => ShippingMethod.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      payments: (json['payments'] as List<dynamic>?)
              ?.map((e) => Payment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      fulfillments: (json['fulfillments'] as List<dynamic>?)
              ?.map((e) => Fulfillment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      returns: (json['returns'] as List<dynamic>?)
              ?.map((e) => Return.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      claims: (json['claims'] as List<dynamic>?)
              ?.map((e) => ClaimOrder.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      refunds: (json['refunds'] as List<dynamic>?)
              ?.map((e) => Refund.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      swaps: (json['swaps'] as List<dynamic>?)
              ?.map((e) => Swap.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      draftOrderId: json['draft_order_id'] as String? ?? 'default',
      draftOrder: json['draft_order'] == null
          ? null
          : DraftOrder.fromJson(json['draft_order'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      edits: (json['edits'] as List<dynamic>?)
              ?.map((e) => OrderEdit.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      giftCardTransactions: (json['gift_card_transactions'] as List<dynamic>?)
              ?.map((e) =>
                  GiftCardTransaction.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      canceledAt: json['canceled_at'] == null
          ? null
          : DateTime.parse(json['canceled_at'] as String),
      noNotification: json['no_notification'] as bool?,
      idempotencyKey: json['idempotency_key'] as String? ?? 'default',
      externalId: json['external_id'] as String? ?? 'default',
      salesChannelId: json['sales_channel_id'] as String? ?? 'default',
      salesChannel: json['sales_channel'] == null
          ? null
          : SalesChannel.fromJson(
              json['sales_channel'] as Map<String, dynamic>),
      shippingTotal: json['shipping_total'] as int? ?? 36,
      shippingTaxTotal: json['shipping_tax_total'] as int? ?? 36,
      rawDiscountTotal: json['raw_discount_total'] as int? ?? 36,
      discountTotal: json['discount_total'] as int? ?? 36,
      taxTotal: json['tax_total'] as int? ?? 36,
      itemTaxTotal: json['item_tax_total'] as int? ?? 36,
      refundedTotal: json['refunded_total'] as int? ?? 36,
      total: json['total'] as int? ?? 36,
      subtotal: json['subtotal'] as int? ?? 36,
      paidTotal: json['paid_total'] as int? ?? 36,
      refundableAmount: json['refundable_amount'] as int? ?? 36,
      giftCardTotal: json['gift_card_total'] as int? ?? 36,
      giftCardTaxTotal: json['gift_card_tax_total'] as int? ?? 36,
      returnableItems: (json['returnable_items'] as List<dynamic>?)
              ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$OrderToJson(Order instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', orderStatusToJson(instance.status));
  writeNotNull('fulfillment_status',
      orderFulfillmentStatusToJson(instance.fulfillmentStatus));
  writeNotNull(
      'payment_status', orderPaymentStatusToJson(instance.paymentStatus));
  val['display_id'] = instance.displayId;
  writeNotNull('cart_id', instance.cartId);
  writeNotNull('cart', instance.cart?.toJson());
  val['customer_id'] = instance.customerId;
  writeNotNull('customer', instance.customer?.toJson());
  val['email'] = instance.email;
  writeNotNull('billing_address_id', instance.billingAddressId);
  writeNotNull('billing_address', instance.billingAddress?.toJson());
  writeNotNull('shipping_address_id', instance.shippingAddressId);
  writeNotNull('shipping_address', instance.shippingAddress?.toJson());
  val['region_id'] = instance.regionId;
  writeNotNull('region', instance.region?.toJson());
  val['currency_code'] = instance.currencyCode;
  writeNotNull('currency', instance.currency?.toJson());
  writeNotNull('tax_rate', instance.taxRate);
  writeNotNull(
      'discounts', instance.discounts?.map((e) => e.toJson()).toList());
  writeNotNull(
      'gift_cards', instance.giftCards?.map((e) => e.toJson()).toList());
  writeNotNull('shipping_methods',
      instance.shippingMethods?.map((e) => e.toJson()).toList());
  writeNotNull('payments', instance.payments?.map((e) => e.toJson()).toList());
  writeNotNull(
      'fulfillments', instance.fulfillments?.map((e) => e.toJson()).toList());
  writeNotNull('returns', instance.returns?.map((e) => e.toJson()).toList());
  writeNotNull('claims', instance.claims?.map((e) => e.toJson()).toList());
  writeNotNull('refunds', instance.refunds?.map((e) => e.toJson()).toList());
  writeNotNull('swaps', instance.swaps?.map((e) => e.toJson()).toList());
  writeNotNull('draft_order_id', instance.draftOrderId);
  writeNotNull('draft_order', instance.draftOrder?.toJson());
  writeNotNull('items', instance.items?.map((e) => e.toJson()).toList());
  writeNotNull('edits', instance.edits?.map((e) => e.toJson()).toList());
  writeNotNull('gift_card_transactions',
      instance.giftCardTransactions?.map((e) => e.toJson()).toList());
  writeNotNull('canceled_at', instance.canceledAt?.toIso8601String());
  writeNotNull('no_notification', instance.noNotification);
  writeNotNull('idempotency_key', instance.idempotencyKey);
  writeNotNull('external_id', instance.externalId);
  writeNotNull('sales_channel_id', instance.salesChannelId);
  writeNotNull('sales_channel', instance.salesChannel?.toJson());
  writeNotNull('shipping_total', instance.shippingTotal);
  writeNotNull('shipping_tax_total', instance.shippingTaxTotal);
  writeNotNull('raw_discount_total', instance.rawDiscountTotal);
  writeNotNull('discount_total', instance.discountTotal);
  writeNotNull('tax_total', instance.taxTotal);
  writeNotNull('item_tax_total', instance.itemTaxTotal);
  writeNotNull('refunded_total', instance.refundedTotal);
  writeNotNull('total', instance.total);
  writeNotNull('subtotal', instance.subtotal);
  writeNotNull('paid_total', instance.paidTotal);
  writeNotNull('refundable_amount', instance.refundableAmount);
  writeNotNull('gift_card_total', instance.giftCardTotal);
  writeNotNull('gift_card_tax_total', instance.giftCardTaxTotal);
  writeNotNull('returnable_items',
      instance.returnableItems?.map((e) => e.toJson()).toList());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('metadata', instance.metadata);
  return val;
}

OrderEdit _$OrderEditFromJson(Map<String, dynamic> json) => OrderEdit(
      id: json['id'] as String? ?? 'default',
      orderId: json['order_id'] as String? ?? 'default',
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
      changes: (json['changes'] as List<dynamic>?)
              ?.map((e) => OrderItemChange.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      internalNote: json['internal_note'] as String? ?? 'default',
      createdBy: json['created_by'] as String? ?? 'default',
      requestedBy: json['requested_by'] as String? ?? 'default',
      requestedAt: json['requested_at'] == null
          ? null
          : DateTime.parse(json['requested_at'] as String),
      confirmedBy: json['confirmed_by'] as String? ?? 'default',
      confirmedAt: json['confirmed_at'] == null
          ? null
          : DateTime.parse(json['confirmed_at'] as String),
      declinedBy: json['declined_by'] as String? ?? 'default',
      declinedAt: json['declined_at'] == null
          ? null
          : DateTime.parse(json['declined_at'] as String),
      declinedReason: json['declined_reason'] as String? ?? 'default',
      canceledBy: json['canceled_by'] as String? ?? 'default',
      canceledAt: json['canceled_at'] == null
          ? null
          : DateTime.parse(json['canceled_at'] as String),
      subtotal: json['subtotal'] as int? ?? 36,
      discountTotal: json['discount_total'] as int? ?? 36,
      shippingTotal: json['shipping_total'] as int? ?? 36,
      giftCardTotal: json['gift_card_total'] as int? ?? 36,
      giftCardTaxTotal: json['gift_card_tax_total'] as int? ?? 36,
      taxTotal: json['tax_total'] as int? ?? 36,
      total: json['total'] as int? ?? 36,
      differenceDue: json['difference_due'] as int? ?? 36,
      status: orderEditStatusFromJson(json['status']),
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      paymentCollectionId:
          json['payment_collection_id'] as String? ?? 'default',
      paymentCollection: json['payment_collection'] == null
          ? null
          : PaymentCollection.fromJson(
              json['payment_collection'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$OrderEditToJson(OrderEdit instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'order_id': instance.orderId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('order', instance.order?.toJson());
  writeNotNull('changes', instance.changes?.map((e) => e.toJson()).toList());
  writeNotNull('internal_note', instance.internalNote);
  val['created_by'] = instance.createdBy;
  writeNotNull('requested_by', instance.requestedBy);
  writeNotNull('requested_at', instance.requestedAt?.toIso8601String());
  writeNotNull('confirmed_by', instance.confirmedBy);
  writeNotNull('confirmed_at', instance.confirmedAt?.toIso8601String());
  writeNotNull('declined_by', instance.declinedBy);
  writeNotNull('declined_at', instance.declinedAt?.toIso8601String());
  writeNotNull('declined_reason', instance.declinedReason);
  writeNotNull('canceled_by', instance.canceledBy);
  writeNotNull('canceled_at', instance.canceledAt?.toIso8601String());
  writeNotNull('subtotal', instance.subtotal);
  writeNotNull('discount_total', instance.discountTotal);
  writeNotNull('shipping_total', instance.shippingTotal);
  writeNotNull('gift_card_total', instance.giftCardTotal);
  writeNotNull('gift_card_tax_total', instance.giftCardTaxTotal);
  writeNotNull('tax_total', instance.taxTotal);
  writeNotNull('total', instance.total);
  writeNotNull('difference_due', instance.differenceDue);
  writeNotNull('status', orderEditStatusToJson(instance.status));
  writeNotNull('items', instance.items?.map((e) => e.toJson()).toList());
  writeNotNull('payment_collection_id', instance.paymentCollectionId);
  writeNotNull('payment_collection', instance.paymentCollection?.toJson());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  return val;
}

OrderItemChange _$OrderItemChangeFromJson(Map<String, dynamic> json) =>
    OrderItemChange(
      id: json['id'] as String? ?? 'default',
      type: orderItemChangeTypeFromJson(json['type']),
      orderEditId: json['order_edit_id'] as String? ?? 'default',
      orderEdit: json['order_edit'] == null
          ? null
          : OrderEdit.fromJson(json['order_edit'] as Map<String, dynamic>),
      originalLineItemId: json['original_line_item_id'] as String? ?? 'default',
      originalLineItem: json['original_line_item'] == null
          ? null
          : LineItem.fromJson(
              json['original_line_item'] as Map<String, dynamic>),
      lineItemId: json['line_item_id'] as String? ?? 'default',
      lineItem: json['line_item'] == null
          ? null
          : LineItem.fromJson(json['line_item'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
    );

Map<String, dynamic> _$OrderItemChangeToJson(OrderItemChange instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', orderItemChangeTypeToJson(instance.type));
  val['order_edit_id'] = instance.orderEditId;
  writeNotNull('order_edit', instance.orderEdit?.toJson());
  writeNotNull('original_line_item_id', instance.originalLineItemId);
  writeNotNull('original_line_item', instance.originalLineItem?.toJson());
  writeNotNull('line_item_id', instance.lineItemId);
  writeNotNull('line_item', instance.lineItem?.toJson());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  return val;
}

Payment _$PaymentFromJson(Map<String, dynamic> json) => Payment(
      id: json['id'] as String? ?? 'default',
      swapId: json['swap_id'] as String? ?? 'default',
      swap: json['swap'] == null
          ? null
          : Swap.fromJson(json['swap'] as Map<String, dynamic>),
      cartId: json['cart_id'] as String? ?? 'default',
      cart: json['cart'] == null
          ? null
          : Cart.fromJson(json['cart'] as Map<String, dynamic>),
      orderId: json['order_id'] as String? ?? 'default',
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
      amount: json['amount'] as int? ?? 36,
      currencyCode: json['currency_code'] as String? ?? 'default',
      currency: json['currency'] == null
          ? null
          : Currency.fromJson(json['currency'] as Map<String, dynamic>),
      amountRefunded: json['amount_refunded'] as int? ?? 36,
      providerId: json['provider_id'] as String? ?? 'default',
      data: json['data'] as Object,
      capturedAt: json['captured_at'] == null
          ? null
          : DateTime.parse(json['captured_at'] as String),
      canceledAt: json['canceled_at'] == null
          ? null
          : DateTime.parse(json['canceled_at'] as String),
      idempotencyKey: json['idempotency_key'] as String? ?? 'default',
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$PaymentToJson(Payment instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('swap_id', instance.swapId);
  writeNotNull('swap', instance.swap?.toJson());
  writeNotNull('cart_id', instance.cartId);
  writeNotNull('cart', instance.cart?.toJson());
  writeNotNull('order_id', instance.orderId);
  writeNotNull('order', instance.order?.toJson());
  val['amount'] = instance.amount;
  val['currency_code'] = instance.currencyCode;
  writeNotNull('currency', instance.currency?.toJson());
  val['amount_refunded'] = instance.amountRefunded;
  val['provider_id'] = instance.providerId;
  val['data'] = instance.data;
  writeNotNull('captured_at', instance.capturedAt?.toIso8601String());
  writeNotNull('canceled_at', instance.canceledAt?.toIso8601String());
  writeNotNull('idempotency_key', instance.idempotencyKey);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('metadata', instance.metadata);
  return val;
}

PaymentCollection _$PaymentCollectionFromJson(Map<String, dynamic> json) =>
    PaymentCollection(
      id: json['id'] as String? ?? 'default',
      type: paymentCollectionTypeFromJson(json['type']),
      status: paymentCollectionStatusFromJson(json['status']),
      description: json['description'] as String? ?? 'default',
      amount: json['amount'] as int? ?? 36,
      authorizedAmount: json['authorized_amount'] as int? ?? 36,
      regionId: json['region_id'] as String? ?? 'default',
      region: json['region'] == null
          ? null
          : Region.fromJson(json['region'] as Map<String, dynamic>),
      currencyCode: json['currency_code'] as String? ?? 'default',
      currency: json['currency'] == null
          ? null
          : Currency.fromJson(json['currency'] as Map<String, dynamic>),
      paymentSessions: (json['payment_sessions'] as List<dynamic>?)
              ?.map((e) => PaymentSession.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      payments: (json['payments'] as List<dynamic>?)
              ?.map((e) => Payment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdBy: json['created_by'] as String? ?? 'default',
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$PaymentCollectionToJson(PaymentCollection instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', paymentCollectionTypeToJson(instance.type));
  writeNotNull('status', paymentCollectionStatusToJson(instance.status));
  writeNotNull('description', instance.description);
  val['amount'] = instance.amount;
  writeNotNull('authorized_amount', instance.authorizedAmount);
  val['region_id'] = instance.regionId;
  writeNotNull('region', instance.region?.toJson());
  val['currency_code'] = instance.currencyCode;
  writeNotNull('currency', instance.currency?.toJson());
  writeNotNull('payment_sessions',
      instance.paymentSessions?.map((e) => e.toJson()).toList());
  writeNotNull('payments', instance.payments?.map((e) => e.toJson()).toList());
  val['created_by'] = instance.createdBy;
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  return val;
}

PaymentProvider _$PaymentProviderFromJson(Map<String, dynamic> json) =>
    PaymentProvider(
      id: json['id'] as String? ?? 'default',
      isInstalled: json['is_installed'] as bool? ?? true,
    );

Map<String, dynamic> _$PaymentProviderToJson(PaymentProvider instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_installed': instance.isInstalled,
    };

PaymentSession _$PaymentSessionFromJson(Map<String, dynamic> json) =>
    PaymentSession(
      id: json['id'] as String? ?? 'default',
      cartId: json['cart_id'] as String? ?? 'default',
      cart: json['cart'] == null
          ? null
          : Cart.fromJson(json['cart'] as Map<String, dynamic>),
      providerId: json['provider_id'] as String? ?? 'default',
      isSelected: json['is_selected'] as bool?,
      isInitiated: json['is_initiated'] as bool? ?? false,
      status: paymentSessionStatusFromJson(json['status']),
      data: json['data'] as Object,
      idempotencyKey: json['idempotency_key'] as String? ?? 'default',
      amount: json['amount'] as int? ?? 36,
      paymentAuthorizedAt: json['payment_authorized_at'] == null
          ? null
          : DateTime.parse(json['payment_authorized_at'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$PaymentSessionToJson(PaymentSession instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cart_id', instance.cartId);
  writeNotNull('cart', instance.cart?.toJson());
  val['provider_id'] = instance.providerId;
  writeNotNull('is_selected', instance.isSelected);
  val['is_initiated'] = instance.isInitiated;
  writeNotNull('status', paymentSessionStatusToJson(instance.status));
  val['data'] = instance.data;
  writeNotNull('idempotency_key', instance.idempotencyKey);
  writeNotNull('amount', instance.amount);
  writeNotNull(
      'payment_authorized_at', instance.paymentAuthorizedAt?.toIso8601String());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  return val;
}

PriceList _$PriceListFromJson(Map<String, dynamic> json) => PriceList(
      id: json['id'] as String? ?? 'default',
      name: json['name'] as String? ?? 'default',
      description: json['description'] as String? ?? 'default',
      type: PriceList.priceListTypeTypeFromJson(json['type']),
      status: PriceList.priceListStatusStatusFromJson(json['status']),
      startsAt: json['starts_at'] == null
          ? null
          : DateTime.parse(json['starts_at'] as String),
      endsAt: json['ends_at'] == null
          ? null
          : DateTime.parse(json['ends_at'] as String),
      customerGroups: (json['customer_groups'] as List<dynamic>?)
              ?.map((e) => CustomerGroup.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      prices: (json['prices'] as List<dynamic>?)
              ?.map((e) => MoneyAmount.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      includesTax: json['includes_tax'] as bool? ?? false,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
    );

Map<String, dynamic> _$PriceListToJson(PriceList instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'description': instance.description,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', priceListTypeToJson(instance.type));
  writeNotNull('status', priceListStatusToJson(instance.status));
  writeNotNull('starts_at', instance.startsAt?.toIso8601String());
  writeNotNull('ends_at', instance.endsAt?.toIso8601String());
  writeNotNull('customer_groups',
      instance.customerGroups?.map((e) => e.toJson()).toList());
  writeNotNull('prices', instance.prices?.map((e) => e.toJson()).toList());
  writeNotNull('includes_tax', instance.includesTax);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  return val;
}

PricedProduct _$PricedProductFromJson(Map<String, dynamic> json) =>
    PricedProduct(
      variants: (json['variants'] as List<dynamic>?)
              ?.map((e) => ProductVariant.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      id: json['id'] as String? ?? 'default',
      title: json['title'] as String? ?? 'default',
      subtitle: json['subtitle'] as String? ?? 'default',
      description: json['description'] as String? ?? 'default',
      handle: json['handle'] as String? ?? 'default',
      isGiftcard: json['is_giftcard'] as bool? ?? false,
      status: PricedProduct.pricedProductStatusStatusFromJson(json['status']),
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      thumbnail: json['thumbnail'] as String? ?? 'default',
      options: (json['options'] as List<dynamic>?)
              ?.map((e) => ProductOption.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => ProductCategory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      profileId: json['profile_id'] as String? ?? 'default',
      profile: json['profile'] == null
          ? null
          : ShippingProfile.fromJson(json['profile'] as Map<String, dynamic>),
      profiles: (json['profiles'] as List<dynamic>?)
              ?.map((e) => ShippingProfile.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      weight: (json['weight'] as num?)?.toDouble(),
      length: (json['length'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      width: (json['width'] as num?)?.toDouble(),
      hsCode: json['hs_code'] as String? ?? 'default',
      originCountry: json['origin_country'] as String? ?? 'default',
      midCode: json['mid_code'] as String? ?? 'default',
      material: json['material'] as String? ?? 'default',
      collectionId: json['collection_id'] as String? ?? 'default',
      collection: json['collection'] == null
          ? null
          : ProductCollection.fromJson(
              json['collection'] as Map<String, dynamic>),
      typeId: json['type_id'] as String? ?? 'default',
      type: json['type'] == null
          ? null
          : ProductType.fromJson(json['type'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>?)
              ?.map((e) => ProductTag.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      discountable: json['discountable'] as bool? ?? true,
      externalId: json['external_id'] as String? ?? 'default',
      salesChannels: (json['sales_channels'] as List<dynamic>?)
              ?.map((e) => SalesChannel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$PricedProductToJson(PricedProduct instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('variants', instance.variants?.map((e) => e.toJson()).toList());
  val['id'] = instance.id;
  val['title'] = instance.title;
  writeNotNull('subtitle', instance.subtitle);
  writeNotNull('description', instance.description);
  writeNotNull('handle', instance.handle);
  val['is_giftcard'] = instance.isGiftcard;
  writeNotNull('status', pricedProductStatusToJson(instance.status));
  writeNotNull('images', instance.images?.map((e) => e.toJson()).toList());
  writeNotNull('thumbnail', instance.thumbnail);
  writeNotNull('options', instance.options?.map((e) => e.toJson()).toList());
  writeNotNull(
      'categories', instance.categories?.map((e) => e.toJson()).toList());
  val['profile_id'] = instance.profileId;
  writeNotNull('profile', instance.profile?.toJson());
  writeNotNull('profiles', instance.profiles?.map((e) => e.toJson()).toList());
  writeNotNull('weight', instance.weight);
  writeNotNull('length', instance.length);
  writeNotNull('height', instance.height);
  writeNotNull('width', instance.width);
  writeNotNull('hs_code', instance.hsCode);
  writeNotNull('origin_country', instance.originCountry);
  writeNotNull('mid_code', instance.midCode);
  writeNotNull('material', instance.material);
  writeNotNull('collection_id', instance.collectionId);
  writeNotNull('collection', instance.collection?.toJson());
  writeNotNull('type_id', instance.typeId);
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('tags', instance.tags?.map((e) => e.toJson()).toList());
  val['discountable'] = instance.discountable;
  writeNotNull('external_id', instance.externalId);
  writeNotNull('sales_channels',
      instance.salesChannels?.map((e) => e.toJson()).toList());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  return val;
}

PricedShippingOption _$PricedShippingOptionFromJson(
        Map<String, dynamic> json) =>
    PricedShippingOption(
      priceInclTax: (json['price_incl_tax'] as num?)?.toDouble(),
      taxRates: (json['tax_rates'] as List<dynamic>?)
          ?.map((e) => PricedShippingOption$TaxRates$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      taxAmount: (json['tax_amount'] as num?)?.toDouble(),
      id: json['id'] as String? ?? 'default',
      name: json['name'] as String? ?? 'default',
      regionId: json['region_id'] as String? ?? 'default',
      region: json['region'] == null
          ? null
          : Region.fromJson(json['region'] as Map<String, dynamic>),
      profileId: json['profile_id'] as String? ?? 'default',
      profile: json['profile'] == null
          ? null
          : ShippingProfile.fromJson(json['profile'] as Map<String, dynamic>),
      providerId: json['provider_id'] as String? ?? 'default',
      provider: json['provider'] == null
          ? null
          : FulfillmentProvider.fromJson(
              json['provider'] as Map<String, dynamic>),
      priceType: pricedShippingOptionPriceTypeFromJson(json['price_type']),
      amount: json['amount'] as int? ?? 36,
      isReturn: json['is_return'] as bool? ?? false,
      adminOnly: json['admin_only'] as bool? ?? false,
      requirements: (json['requirements'] as List<dynamic>?)
              ?.map((e) =>
                  ShippingOptionRequirement.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      data: json['data'] as Object,
      includesTax: json['includes_tax'] as bool? ?? false,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$PricedShippingOptionToJson(
    PricedShippingOption instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('price_incl_tax', instance.priceInclTax);
  writeNotNull('tax_rates', instance.taxRates?.map((e) => e.toJson()).toList());
  writeNotNull('tax_amount', instance.taxAmount);
  val['id'] = instance.id;
  val['name'] = instance.name;
  val['region_id'] = instance.regionId;
  writeNotNull('region', instance.region?.toJson());
  val['profile_id'] = instance.profileId;
  writeNotNull('profile', instance.profile?.toJson());
  val['provider_id'] = instance.providerId;
  writeNotNull('provider', instance.provider?.toJson());
  writeNotNull(
      'price_type', pricedShippingOptionPriceTypeToJson(instance.priceType));
  writeNotNull('amount', instance.amount);
  val['is_return'] = instance.isReturn;
  val['admin_only'] = instance.adminOnly;
  writeNotNull(
      'requirements', instance.requirements?.map((e) => e.toJson()).toList());
  val['data'] = instance.data;
  writeNotNull('includes_tax', instance.includesTax);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  return val;
}

PricedVariant _$PricedVariantFromJson(Map<String, dynamic> json) =>
    PricedVariant(
      originalPrice: (json['original_price'] as num?)?.toDouble(),
      calculatedPrice: (json['calculated_price'] as num?)?.toDouble(),
      originalPriceInclTax:
          (json['original_price_incl_tax'] as num?)?.toDouble(),
      calculatedPriceInclTax:
          (json['calculated_price_incl_tax'] as num?)?.toDouble(),
      originalTax: (json['original_tax'] as num?)?.toDouble(),
      calculatedTax: (json['calculated_tax'] as num?)?.toDouble(),
      taxRates: (json['tax_rates'] as List<dynamic>?)
          ?.map((e) =>
              PricedVariant$TaxRates$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String? ?? 'default',
      title: json['title'] as String? ?? 'default',
      productId: json['product_id'] as String? ?? 'default',
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      prices: (json['prices'] as List<dynamic>?)
              ?.map((e) => MoneyAmount.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      sku: json['sku'] as String? ?? 'default',
      barcode: json['barcode'] as String? ?? 'default',
      ean: json['ean'] as String? ?? 'default',
      upc: json['upc'] as String? ?? 'default',
      variantRank: (json['variant_rank'] as num?)?.toDouble(),
      inventoryQuantity: json['inventory_quantity'] as int? ?? 36,
      allowBackorder: json['allow_backorder'] as bool? ?? false,
      manageInventory: json['manage_inventory'] as bool? ?? true,
      hsCode: json['hs_code'] as String? ?? 'default',
      originCountry: json['origin_country'] as String? ?? 'default',
      midCode: json['mid_code'] as String? ?? 'default',
      material: json['material'] as String? ?? 'default',
      weight: (json['weight'] as num?)?.toDouble(),
      length: (json['length'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      width: (json['width'] as num?)?.toDouble(),
      options: (json['options'] as List<dynamic>?)
              ?.map(
                  (e) => ProductOptionValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      inventoryItems: (json['inventory_items'] as List<dynamic>?)
              ?.map((e) => ProductVariantInventoryItem.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      metadata: json['metadata'],
      purchasable: json['purchasable'] as bool?,
    );

Map<String, dynamic> _$PricedVariantToJson(PricedVariant instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('original_price', instance.originalPrice);
  writeNotNull('calculated_price', instance.calculatedPrice);
  writeNotNull('original_price_incl_tax', instance.originalPriceInclTax);
  writeNotNull('calculated_price_incl_tax', instance.calculatedPriceInclTax);
  writeNotNull('original_tax', instance.originalTax);
  writeNotNull('calculated_tax', instance.calculatedTax);
  writeNotNull('tax_rates', instance.taxRates?.map((e) => e.toJson()).toList());
  val['id'] = instance.id;
  val['title'] = instance.title;
  val['product_id'] = instance.productId;
  writeNotNull('product', instance.product?.toJson());
  writeNotNull('prices', instance.prices?.map((e) => e.toJson()).toList());
  writeNotNull('sku', instance.sku);
  writeNotNull('barcode', instance.barcode);
  writeNotNull('ean', instance.ean);
  writeNotNull('upc', instance.upc);
  writeNotNull('variant_rank', instance.variantRank);
  val['inventory_quantity'] = instance.inventoryQuantity;
  val['allow_backorder'] = instance.allowBackorder;
  val['manage_inventory'] = instance.manageInventory;
  writeNotNull('hs_code', instance.hsCode);
  writeNotNull('origin_country', instance.originCountry);
  writeNotNull('mid_code', instance.midCode);
  writeNotNull('material', instance.material);
  writeNotNull('weight', instance.weight);
  writeNotNull('length', instance.length);
  writeNotNull('height', instance.height);
  writeNotNull('width', instance.width);
  writeNotNull('options', instance.options?.map((e) => e.toJson()).toList());
  writeNotNull('inventory_items',
      instance.inventoryItems?.map((e) => e.toJson()).toList());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  writeNotNull('purchasable', instance.purchasable);
  return val;
}

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['id'] as String? ?? 'default',
      title: json['title'] as String? ?? 'default',
      subtitle: json['subtitle'] as String? ?? 'default',
      description: json['description'] as String? ?? 'default',
      handle: json['handle'] as String? ?? 'default',
      isGiftcard: json['is_giftcard'] as bool? ?? false,
      status: Product.productStatusStatusFromJson(json['status']),
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      thumbnail: json['thumbnail'] as String? ?? 'default',
      options: (json['options'] as List<dynamic>?)
              ?.map((e) => ProductOption.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      variants: (json['variants'] as List<dynamic>?)
              ?.map((e) => ProductVariant.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => ProductCategory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      profileId: json['profile_id'] as String? ?? 'default',
      profile: json['profile'] == null
          ? null
          : ShippingProfile.fromJson(json['profile'] as Map<String, dynamic>),
      profiles: (json['profiles'] as List<dynamic>?)
              ?.map((e) => ShippingProfile.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      weight: (json['weight'] as num?)?.toDouble(),
      length: (json['length'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      width: (json['width'] as num?)?.toDouble(),
      hsCode: json['hs_code'] as String? ?? 'default',
      originCountry: json['origin_country'] as String? ?? 'default',
      midCode: json['mid_code'] as String? ?? 'default',
      material: json['material'] as String? ?? 'default',
      collectionId: json['collection_id'] as String? ?? 'default',
      collection: json['collection'] == null
          ? null
          : ProductCollection.fromJson(
              json['collection'] as Map<String, dynamic>),
      typeId: json['type_id'] as String? ?? 'default',
      type: json['type'] == null
          ? null
          : ProductType.fromJson(json['type'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>?)
              ?.map((e) => ProductTag.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      discountable: json['discountable'] as bool? ?? true,
      externalId: json['external_id'] as String? ?? 'default',
      salesChannels: (json['sales_channels'] as List<dynamic>?)
              ?.map((e) => SalesChannel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$ProductToJson(Product instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'title': instance.title,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('subtitle', instance.subtitle);
  writeNotNull('description', instance.description);
  writeNotNull('handle', instance.handle);
  val['is_giftcard'] = instance.isGiftcard;
  writeNotNull('status', productStatusToJson(instance.status));
  writeNotNull('images', instance.images?.map((e) => e.toJson()).toList());
  writeNotNull('thumbnail', instance.thumbnail);
  writeNotNull('options', instance.options?.map((e) => e.toJson()).toList());
  writeNotNull('variants', instance.variants?.map((e) => e.toJson()).toList());
  writeNotNull(
      'categories', instance.categories?.map((e) => e.toJson()).toList());
  val['profile_id'] = instance.profileId;
  writeNotNull('profile', instance.profile?.toJson());
  writeNotNull('profiles', instance.profiles?.map((e) => e.toJson()).toList());
  writeNotNull('weight', instance.weight);
  writeNotNull('length', instance.length);
  writeNotNull('height', instance.height);
  writeNotNull('width', instance.width);
  writeNotNull('hs_code', instance.hsCode);
  writeNotNull('origin_country', instance.originCountry);
  writeNotNull('mid_code', instance.midCode);
  writeNotNull('material', instance.material);
  writeNotNull('collection_id', instance.collectionId);
  writeNotNull('collection', instance.collection?.toJson());
  writeNotNull('type_id', instance.typeId);
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('tags', instance.tags?.map((e) => e.toJson()).toList());
  val['discountable'] = instance.discountable;
  writeNotNull('external_id', instance.externalId);
  writeNotNull('sales_channels',
      instance.salesChannels?.map((e) => e.toJson()).toList());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  return val;
}

ProductCategory _$ProductCategoryFromJson(Map<String, dynamic> json) =>
    ProductCategory(
      id: json['id'] as String? ?? 'default',
      name: json['name'] as String? ?? 'default',
      description: json['description'] as String? ?? 'default',
      handle: json['handle'] as String? ?? 'default',
      mpath: json['mpath'] as String? ?? 'default',
      isInternal: json['is_internal'] as bool? ?? false,
      isActive: json['is_active'] as bool? ?? false,
      rank: json['rank'] as int? ?? 36,
      categoryChildren: (json['category_children'] as List<dynamic>?)
              ?.map((e) => ProductCategory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      parentCategoryId: json['parent_category_id'] as String? ?? 'default',
      parentCategory: json['parent_category'] == null
          ? null
          : ProductCategory.fromJson(
              json['parent_category'] as Map<String, dynamic>),
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$ProductCategoryToJson(ProductCategory instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  val['handle'] = instance.handle;
  writeNotNull('mpath', instance.mpath);
  val['is_internal'] = instance.isInternal;
  val['is_active'] = instance.isActive;
  writeNotNull('rank', instance.rank);
  val['category_children'] =
      instance.categoryChildren.map((e) => e.toJson()).toList();
  writeNotNull('parent_category_id', instance.parentCategoryId);
  writeNotNull('parent_category', instance.parentCategory?.toJson());
  writeNotNull('products', instance.products?.map((e) => e.toJson()).toList());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('metadata', instance.metadata);
  return val;
}

ProductCollection _$ProductCollectionFromJson(Map<String, dynamic> json) =>
    ProductCollection(
      id: json['id'] as String? ?? 'default',
      title: json['title'] as String? ?? 'default',
      handle: json['handle'] as String? ?? 'default',
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$ProductCollectionToJson(ProductCollection instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'title': instance.title,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('handle', instance.handle);
  writeNotNull('products', instance.products?.map((e) => e.toJson()).toList());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  return val;
}

ProductOption _$ProductOptionFromJson(Map<String, dynamic> json) =>
    ProductOption(
      id: json['id'] as String? ?? 'default',
      title: json['title'] as String? ?? 'default',
      values: (json['values'] as List<dynamic>?)
              ?.map(
                  (e) => ProductOptionValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      productId: json['product_id'] as String? ?? 'default',
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$ProductOptionToJson(ProductOption instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'title': instance.title,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('values', instance.values?.map((e) => e.toJson()).toList());
  val['product_id'] = instance.productId;
  writeNotNull('product', instance.product?.toJson());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  return val;
}

ProductOptionValue _$ProductOptionValueFromJson(Map<String, dynamic> json) =>
    ProductOptionValue(
      id: json['id'] as String? ?? 'default',
      value: json['value'] as String? ?? 'default',
      optionId: json['option_id'] as String? ?? 'default',
      option: json['option'] == null
          ? null
          : ProductOption.fromJson(json['option'] as Map<String, dynamic>),
      variantId: json['variant_id'] as String? ?? 'default',
      variant: json['variant'] == null
          ? null
          : ProductVariant.fromJson(json['variant'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$ProductOptionValueToJson(ProductOptionValue instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'value': instance.value,
    'option_id': instance.optionId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('option', instance.option?.toJson());
  val['variant_id'] = instance.variantId;
  writeNotNull('variant', instance.variant?.toJson());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  return val;
}

ProductTag _$ProductTagFromJson(Map<String, dynamic> json) => ProductTag(
      id: json['id'] as String? ?? 'default',
      value: json['value'] as String? ?? 'default',
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$ProductTagToJson(ProductTag instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'value': instance.value,
    'created_at': instance.createdAt.toIso8601String(),
    'updated_at': instance.updatedAt.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  return val;
}

ProductTaxRate _$ProductTaxRateFromJson(Map<String, dynamic> json) =>
    ProductTaxRate(
      productId: json['product_id'] as String? ?? 'default',
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      rateId: json['rate_id'] as String? ?? 'default',
      taxRate: json['tax_rate'] == null
          ? null
          : TaxRate.fromJson(json['tax_rate'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$ProductTaxRateToJson(ProductTaxRate instance) {
  final val = <String, dynamic>{
    'product_id': instance.productId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('product', instance.product?.toJson());
  val['rate_id'] = instance.rateId;
  writeNotNull('tax_rate', instance.taxRate?.toJson());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('metadata', instance.metadata);
  return val;
}

ProductType _$ProductTypeFromJson(Map<String, dynamic> json) => ProductType(
      id: json['id'] as String? ?? 'default',
      value: json['value'] as String? ?? 'default',
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$ProductTypeToJson(ProductType instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'value': instance.value,
    'created_at': instance.createdAt.toIso8601String(),
    'updated_at': instance.updatedAt.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  return val;
}

ProductTypeTaxRate _$ProductTypeTaxRateFromJson(Map<String, dynamic> json) =>
    ProductTypeTaxRate(
      productTypeId: json['product_type_id'] as String? ?? 'default',
      productType: json['product_type'] == null
          ? null
          : ProductType.fromJson(json['product_type'] as Map<String, dynamic>),
      rateId: json['rate_id'] as String? ?? 'default',
      taxRate: json['tax_rate'] == null
          ? null
          : TaxRate.fromJson(json['tax_rate'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$ProductTypeTaxRateToJson(ProductTypeTaxRate instance) {
  final val = <String, dynamic>{
    'product_type_id': instance.productTypeId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('product_type', instance.productType?.toJson());
  val['rate_id'] = instance.rateId;
  writeNotNull('tax_rate', instance.taxRate?.toJson());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('metadata', instance.metadata);
  return val;
}

ProductVariant _$ProductVariantFromJson(Map<String, dynamic> json) =>
    ProductVariant(
      id: json['id'] as String? ?? 'default',
      title: json['title'] as String? ?? 'default',
      productId: json['product_id'] as String? ?? 'default',
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      prices: (json['prices'] as List<dynamic>?)
              ?.map((e) => MoneyAmount.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      sku: json['sku'] as String? ?? 'default',
      barcode: json['barcode'] as String? ?? 'default',
      ean: json['ean'] as String? ?? 'default',
      upc: json['upc'] as String? ?? 'default',
      variantRank: (json['variant_rank'] as num?)?.toDouble(),
      inventoryQuantity: json['inventory_quantity'] as int? ?? 36,
      allowBackorder: json['allow_backorder'] as bool? ?? false,
      manageInventory: json['manage_inventory'] as bool? ?? true,
      hsCode: json['hs_code'] as String? ?? 'default',
      originCountry: json['origin_country'] as String? ?? 'default',
      midCode: json['mid_code'] as String? ?? 'default',
      material: json['material'] as String? ?? 'default',
      weight: (json['weight'] as num?)?.toDouble(),
      length: (json['length'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      width: (json['width'] as num?)?.toDouble(),
      options: (json['options'] as List<dynamic>?)
              ?.map(
                  (e) => ProductOptionValue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      inventoryItems: (json['inventory_items'] as List<dynamic>?)
              ?.map((e) => ProductVariantInventoryItem.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      metadata: json['metadata'],
      purchasable: json['purchasable'] as bool?,
    );

Map<String, dynamic> _$ProductVariantToJson(ProductVariant instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'title': instance.title,
    'product_id': instance.productId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('product', instance.product?.toJson());
  writeNotNull('prices', instance.prices?.map((e) => e.toJson()).toList());
  writeNotNull('sku', instance.sku);
  writeNotNull('barcode', instance.barcode);
  writeNotNull('ean', instance.ean);
  writeNotNull('upc', instance.upc);
  writeNotNull('variant_rank', instance.variantRank);
  val['inventory_quantity'] = instance.inventoryQuantity;
  val['allow_backorder'] = instance.allowBackorder;
  val['manage_inventory'] = instance.manageInventory;
  writeNotNull('hs_code', instance.hsCode);
  writeNotNull('origin_country', instance.originCountry);
  writeNotNull('mid_code', instance.midCode);
  writeNotNull('material', instance.material);
  writeNotNull('weight', instance.weight);
  writeNotNull('length', instance.length);
  writeNotNull('height', instance.height);
  writeNotNull('width', instance.width);
  writeNotNull('options', instance.options?.map((e) => e.toJson()).toList());
  writeNotNull('inventory_items',
      instance.inventoryItems?.map((e) => e.toJson()).toList());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  writeNotNull('purchasable', instance.purchasable);
  return val;
}

ProductVariantInventoryItem _$ProductVariantInventoryItemFromJson(
        Map<String, dynamic> json) =>
    ProductVariantInventoryItem(
      id: json['id'] as String? ?? 'default',
      inventoryItemId: json['inventory_item_id'] as String? ?? 'default',
      variantId: json['variant_id'] as String? ?? 'default',
      variant: json['variant'] == null
          ? null
          : ProductVariant.fromJson(json['variant'] as Map<String, dynamic>),
      requiredQuantity: json['required_quantity'] as int? ?? 36,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
    );

Map<String, dynamic> _$ProductVariantInventoryItemToJson(
    ProductVariantInventoryItem instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'inventory_item_id': instance.inventoryItemId,
    'variant_id': instance.variantId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('variant', instance.variant?.toJson());
  val['required_quantity'] = instance.requiredQuantity;
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  return val;
}

PublishableApiKey _$PublishableApiKeyFromJson(Map<String, dynamic> json) =>
    PublishableApiKey(
      id: json['id'] as String? ?? 'default',
      createdBy: json['created_by'] as String? ?? 'default',
      revokedBy: json['revoked_by'] as String? ?? 'default',
      revokedAt: json['revoked_at'] == null
          ? null
          : DateTime.parse(json['revoked_at'] as String),
      title: json['title'] as String? ?? 'default',
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$PublishableApiKeyToJson(PublishableApiKey instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created_by', instance.createdBy);
  writeNotNull('revoked_by', instance.revokedBy);
  writeNotNull('revoked_at', instance.revokedAt?.toIso8601String());
  val['title'] = instance.title;
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  return val;
}

PublishableApiKeySalesChannel _$PublishableApiKeySalesChannelFromJson(
        Map<String, dynamic> json) =>
    PublishableApiKeySalesChannel(
      salesChannelId: json['sales_channel_id'] as String? ?? 'default',
      publishableKeyId: json['publishable_key_id'] as String? ?? 'default',
    );

Map<String, dynamic> _$PublishableApiKeySalesChannelToJson(
        PublishableApiKeySalesChannel instance) =>
    <String, dynamic>{
      'sales_channel_id': instance.salesChannelId,
      'publishable_key_id': instance.publishableKeyId,
    };

Refund _$RefundFromJson(Map<String, dynamic> json) => Refund(
      id: json['id'] as String? ?? 'default',
      orderId: json['order_id'] as String? ?? 'default',
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
      paymentId: json['payment_id'] as String? ?? 'default',
      payment: json['payment'] == null
          ? null
          : Payment.fromJson(json['payment'] as Map<String, dynamic>),
      amount: json['amount'] as int? ?? 36,
      note: json['note'] as String? ?? 'default',
      reason: refundReasonFromJson(json['reason']),
      idempotencyKey: json['idempotency_key'] as String? ?? 'default',
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$RefundToJson(Refund instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('order_id', instance.orderId);
  writeNotNull('order', instance.order?.toJson());
  writeNotNull('payment_id', instance.paymentId);
  writeNotNull('payment', instance.payment?.toJson());
  val['amount'] = instance.amount;
  writeNotNull('note', instance.note);
  writeNotNull('reason', refundReasonToJson(instance.reason));
  writeNotNull('idempotency_key', instance.idempotencyKey);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('metadata', instance.metadata);
  return val;
}

Region _$RegionFromJson(Map<String, dynamic> json) => Region(
      id: json['id'] as String? ?? 'default',
      name: json['name'] as String? ?? 'default',
      currencyCode: json['currency_code'] as String? ?? 'default',
      currency: json['currency'] == null
          ? null
          : Currency.fromJson(json['currency'] as Map<String, dynamic>),
      taxRate: (json['tax_rate'] as num).toDouble(),
      taxRates: (json['tax_rates'] as List<dynamic>?)
              ?.map((e) => TaxRate.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      taxCode: json['tax_code'] as String? ?? 'default',
      giftCardsTaxable: json['gift_cards_taxable'] as bool? ?? true,
      automaticTaxes: json['automatic_taxes'] as bool? ?? true,
      countries: (json['countries'] as List<dynamic>?)
              ?.map((e) => Country.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      taxProviderId: json['tax_provider_id'] as String? ?? 'default',
      taxProvider: json['tax_provider'] == null
          ? null
          : TaxProvider.fromJson(json['tax_provider'] as Map<String, dynamic>),
      paymentProviders: (json['payment_providers'] as List<dynamic>?)
              ?.map((e) => PaymentProvider.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      fulfillmentProviders: (json['fulfillment_providers'] as List<dynamic>?)
              ?.map((e) =>
                  FulfillmentProvider.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      includesTax: json['includes_tax'] as bool? ?? false,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$RegionToJson(Region instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'currency_code': instance.currencyCode,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currency', instance.currency?.toJson());
  val['tax_rate'] = instance.taxRate;
  writeNotNull('tax_rates', instance.taxRates?.map((e) => e.toJson()).toList());
  writeNotNull('tax_code', instance.taxCode);
  val['gift_cards_taxable'] = instance.giftCardsTaxable;
  val['automatic_taxes'] = instance.automaticTaxes;
  writeNotNull(
      'countries', instance.countries?.map((e) => e.toJson()).toList());
  writeNotNull('tax_provider_id', instance.taxProviderId);
  writeNotNull('tax_provider', instance.taxProvider?.toJson());
  writeNotNull('payment_providers',
      instance.paymentProviders?.map((e) => e.toJson()).toList());
  writeNotNull('fulfillment_providers',
      instance.fulfillmentProviders?.map((e) => e.toJson()).toList());
  writeNotNull('includes_tax', instance.includesTax);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  return val;
}

ReservationItemDTO _$ReservationItemDTOFromJson(Map<String, dynamic> json) =>
    ReservationItemDTO(
      id: json['id'] as String? ?? 'default',
      locationId: json['location_id'] as String? ?? 'default',
      inventoryItemId: json['inventory_item_id'] as String? ?? 'default',
      description: json['description'] as String? ?? 'default',
      createdBy: json['created_by'] as String? ?? 'default',
      quantity: (json['quantity'] as num).toDouble(),
      metadata: json['metadata'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
    );

Map<String, dynamic> _$ReservationItemDTOToJson(ReservationItemDTO instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'location_id': instance.locationId,
    'inventory_item_id': instance.inventoryItemId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('created_by', instance.createdBy);
  val['quantity'] = instance.quantity;
  writeNotNull('metadata', instance.metadata);
  writeNotNull('created_at', instance.createdAt?.toIso8601String());
  writeNotNull('updated_at', instance.updatedAt?.toIso8601String());
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  return val;
}

ResponseInventoryItem _$ResponseInventoryItemFromJson(
        Map<String, dynamic> json) =>
    ResponseInventoryItem(
      locationLevels: (json['location_levels'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      id: json['id'] as String? ?? 'default',
      sku: json['sku'] as String? ?? 'default',
      hsCode: json['hs_code'] as String? ?? 'default',
      originCountry: json['origin_country'] as String? ?? 'default',
      midCode: json['mid_code'] as String? ?? 'default',
      title: json['title'] as String? ?? 'default',
      description: json['description'] as String? ?? 'default',
      thumbnail: json['thumbnail'] as String? ?? 'default',
      material: json['material'] as String? ?? 'default',
      weight: (json['weight'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      width: (json['width'] as num?)?.toDouble(),
      length: (json['length'] as num?)?.toDouble(),
      requiresShipping: json['requires_shipping'] as bool?,
      metadata: json['metadata'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
    );

Map<String, dynamic> _$ResponseInventoryItemToJson(
    ResponseInventoryItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('location_levels', instance.locationLevels);
  writeNotNull('id', instance.id);
  val['sku'] = instance.sku;
  writeNotNull('hs_code', instance.hsCode);
  writeNotNull('origin_country', instance.originCountry);
  writeNotNull('mid_code', instance.midCode);
  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('thumbnail', instance.thumbnail);
  writeNotNull('material', instance.material);
  writeNotNull('weight', instance.weight);
  writeNotNull('height', instance.height);
  writeNotNull('width', instance.width);
  writeNotNull('length', instance.length);
  writeNotNull('requires_shipping', instance.requiresShipping);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('created_at', instance.createdAt?.toIso8601String());
  writeNotNull('updated_at', instance.updatedAt?.toIso8601String());
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  return val;
}

Return _$ReturnFromJson(Map<String, dynamic> json) => Return(
      id: json['id'] as String? ?? 'default',
      status: Return.returnStatusStatusFromJson(json['status']),
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => ReturnItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      swapId: json['swap_id'] as String? ?? 'default',
      swap: json['swap'] == null
          ? null
          : Swap.fromJson(json['swap'] as Map<String, dynamic>),
      claimOrderId: json['claim_order_id'] as String? ?? 'default',
      claimOrder: json['claim_order'] == null
          ? null
          : ClaimOrder.fromJson(json['claim_order'] as Map<String, dynamic>),
      orderId: json['order_id'] as String? ?? 'default',
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
      shippingMethod: json['shipping_method'] == null
          ? null
          : ShippingMethod.fromJson(
              json['shipping_method'] as Map<String, dynamic>),
      shippingData: json['shipping_data'],
      locationId: json['location_id'] as String? ?? 'default',
      refundAmount: json['refund_amount'] as int? ?? 36,
      noNotification: json['no_notification'] as bool?,
      idempotencyKey: json['idempotency_key'] as String? ?? 'default',
      receivedAt: json['received_at'] == null
          ? null
          : DateTime.parse(json['received_at'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$ReturnToJson(Return instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', returnStatusToJson(instance.status));
  writeNotNull('items', instance.items?.map((e) => e.toJson()).toList());
  writeNotNull('swap_id', instance.swapId);
  writeNotNull('swap', instance.swap?.toJson());
  writeNotNull('claim_order_id', instance.claimOrderId);
  writeNotNull('claim_order', instance.claimOrder?.toJson());
  writeNotNull('order_id', instance.orderId);
  writeNotNull('order', instance.order?.toJson());
  writeNotNull('shipping_method', instance.shippingMethod?.toJson());
  writeNotNull('shipping_data', instance.shippingData);
  writeNotNull('location_id', instance.locationId);
  val['refund_amount'] = instance.refundAmount;
  writeNotNull('no_notification', instance.noNotification);
  writeNotNull('idempotency_key', instance.idempotencyKey);
  writeNotNull('received_at', instance.receivedAt?.toIso8601String());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('metadata', instance.metadata);
  return val;
}

ReturnItem _$ReturnItemFromJson(Map<String, dynamic> json) => ReturnItem(
      returnId: json['return_id'] as String? ?? 'default',
      itemId: json['item_id'] as String? ?? 'default',
      returnOrder: json['return_order'] == null
          ? null
          : Return.fromJson(json['return_order'] as Map<String, dynamic>),
      item: json['item'] == null
          ? null
          : LineItem.fromJson(json['item'] as Map<String, dynamic>),
      quantity: json['quantity'] as int? ?? 36,
      isRequested: json['is_requested'] as bool? ?? true,
      requestedQuantity: json['requested_quantity'] as int? ?? 36,
      receivedQuantity: json['received_quantity'] as int? ?? 36,
      reasonId: json['reason_id'] as String? ?? 'default',
      reason: json['reason'] == null
          ? null
          : ReturnReason.fromJson(json['reason'] as Map<String, dynamic>),
      note: json['note'] as String? ?? 'default',
      metadata: json['metadata'],
    );

Map<String, dynamic> _$ReturnItemToJson(ReturnItem instance) {
  final val = <String, dynamic>{
    'return_id': instance.returnId,
    'item_id': instance.itemId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('return_order', instance.returnOrder?.toJson());
  writeNotNull('item', instance.item?.toJson());
  val['quantity'] = instance.quantity;
  val['is_requested'] = instance.isRequested;
  writeNotNull('requested_quantity', instance.requestedQuantity);
  writeNotNull('received_quantity', instance.receivedQuantity);
  writeNotNull('reason_id', instance.reasonId);
  writeNotNull('reason', instance.reason?.toJson());
  writeNotNull('note', instance.note);
  writeNotNull('metadata', instance.metadata);
  return val;
}

ReturnReason _$ReturnReasonFromJson(Map<String, dynamic> json) => ReturnReason(
      id: json['id'] as String? ?? 'default',
      value: json['value'] as String? ?? 'default',
      label: json['label'] as String? ?? 'default',
      description: json['description'] as String? ?? 'default',
      parentReturnReasonId:
          json['parent_return_reason_id'] as String? ?? 'default',
      parentReturnReason: json['parent_return_reason'] == null
          ? null
          : ReturnReason.fromJson(
              json['parent_return_reason'] as Map<String, dynamic>),
      returnReasonChildren: json['return_reason_children'] == null
          ? null
          : ReturnReason.fromJson(
              json['return_reason_children'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$ReturnReasonToJson(ReturnReason instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'value': instance.value,
    'label': instance.label,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('parent_return_reason_id', instance.parentReturnReasonId);
  writeNotNull('parent_return_reason', instance.parentReturnReason?.toJson());
  writeNotNull(
      'return_reason_children', instance.returnReasonChildren?.toJson());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  return val;
}

SalesChannel _$SalesChannelFromJson(Map<String, dynamic> json) => SalesChannel(
      id: json['id'] as String? ?? 'default',
      name: json['name'] as String? ?? 'default',
      description: json['description'] as String? ?? 'default',
      isDisabled: json['is_disabled'] as bool? ?? false,
      locations: (json['locations'] as List<dynamic>?)
              ?.map((e) =>
                  SalesChannelLocation.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$SalesChannelToJson(SalesChannel instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  val['is_disabled'] = instance.isDisabled;
  writeNotNull(
      'locations', instance.locations?.map((e) => e.toJson()).toList());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  return val;
}

SalesChannelLocation _$SalesChannelLocationFromJson(
        Map<String, dynamic> json) =>
    SalesChannelLocation(
      id: json['id'] as String? ?? 'default',
      salesChannelId: json['sales_channel_id'] as String? ?? 'default',
      locationId: json['location_id'] as String? ?? 'default',
      salesChannel: json['sales_channel'] == null
          ? null
          : SalesChannel.fromJson(
              json['sales_channel'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
    );

Map<String, dynamic> _$SalesChannelLocationToJson(
    SalesChannelLocation instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'sales_channel_id': instance.salesChannelId,
    'location_id': instance.locationId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sales_channel', instance.salesChannel?.toJson());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  return val;
}

ShippingMethod _$ShippingMethodFromJson(Map<String, dynamic> json) =>
    ShippingMethod(
      id: json['id'] as String? ?? 'default',
      shippingOptionId: json['shipping_option_id'] as String? ?? 'default',
      orderId: json['order_id'] as String? ?? 'default',
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
      claimOrderId: json['claim_order_id'] as String? ?? 'default',
      claimOrder: json['claim_order'] == null
          ? null
          : ClaimOrder.fromJson(json['claim_order'] as Map<String, dynamic>),
      cartId: json['cart_id'] as String? ?? 'default',
      cart: json['cart'] == null
          ? null
          : Cart.fromJson(json['cart'] as Map<String, dynamic>),
      swapId: json['swap_id'] as String? ?? 'default',
      swap: json['swap'] == null
          ? null
          : Swap.fromJson(json['swap'] as Map<String, dynamic>),
      returnId: json['return_id'] as String? ?? 'default',
      returnOrder: json['return_order'] == null
          ? null
          : Return.fromJson(json['return_order'] as Map<String, dynamic>),
      shippingOption: json['shipping_option'] == null
          ? null
          : ShippingOption.fromJson(
              json['shipping_option'] as Map<String, dynamic>),
      taxLines: (json['tax_lines'] as List<dynamic>?)
              ?.map((e) =>
                  ShippingMethodTaxLine.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      price: json['price'] as int? ?? 36,
      data: json['data'] as Object,
      includesTax: json['includes_tax'] as bool? ?? false,
      subtotal: json['subtotal'] as int? ?? 36,
      total: json['total'] as int? ?? 36,
      taxTotal: json['tax_total'] as int? ?? 36,
    );

Map<String, dynamic> _$ShippingMethodToJson(ShippingMethod instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'shipping_option_id': instance.shippingOptionId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('order_id', instance.orderId);
  writeNotNull('order', instance.order?.toJson());
  writeNotNull('claim_order_id', instance.claimOrderId);
  writeNotNull('claim_order', instance.claimOrder?.toJson());
  writeNotNull('cart_id', instance.cartId);
  writeNotNull('cart', instance.cart?.toJson());
  writeNotNull('swap_id', instance.swapId);
  writeNotNull('swap', instance.swap?.toJson());
  writeNotNull('return_id', instance.returnId);
  writeNotNull('return_order', instance.returnOrder?.toJson());
  writeNotNull('shipping_option', instance.shippingOption?.toJson());
  writeNotNull('tax_lines', instance.taxLines?.map((e) => e.toJson()).toList());
  val['price'] = instance.price;
  val['data'] = instance.data;
  writeNotNull('includes_tax', instance.includesTax);
  writeNotNull('subtotal', instance.subtotal);
  writeNotNull('total', instance.total);
  writeNotNull('tax_total', instance.taxTotal);
  return val;
}

ShippingMethodTaxLine _$ShippingMethodTaxLineFromJson(
        Map<String, dynamic> json) =>
    ShippingMethodTaxLine(
      id: json['id'] as String? ?? 'default',
      code: json['code'] as String? ?? 'default',
      name: json['name'] as String? ?? 'default',
      rate: (json['rate'] as num).toDouble(),
      shippingMethodId: json['shipping_method_id'] as String? ?? 'default',
      shippingMethod: json['shipping_method'] == null
          ? null
          : ShippingMethod.fromJson(
              json['shipping_method'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$ShippingMethodTaxLineToJson(
    ShippingMethodTaxLine instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  val['name'] = instance.name;
  val['rate'] = instance.rate;
  val['shipping_method_id'] = instance.shippingMethodId;
  writeNotNull('shipping_method', instance.shippingMethod?.toJson());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('metadata', instance.metadata);
  return val;
}

ShippingOption _$ShippingOptionFromJson(Map<String, dynamic> json) =>
    ShippingOption(
      id: json['id'] as String? ?? 'default',
      name: json['name'] as String? ?? 'default',
      regionId: json['region_id'] as String? ?? 'default',
      region: json['region'] == null
          ? null
          : Region.fromJson(json['region'] as Map<String, dynamic>),
      profileId: json['profile_id'] as String? ?? 'default',
      profile: json['profile'] == null
          ? null
          : ShippingProfile.fromJson(json['profile'] as Map<String, dynamic>),
      providerId: json['provider_id'] as String? ?? 'default',
      provider: json['provider'] == null
          ? null
          : FulfillmentProvider.fromJson(
              json['provider'] as Map<String, dynamic>),
      priceType: shippingOptionPriceTypeFromJson(json['price_type']),
      amount: json['amount'] as int? ?? 36,
      isReturn: json['is_return'] as bool? ?? false,
      adminOnly: json['admin_only'] as bool? ?? false,
      requirements: (json['requirements'] as List<dynamic>?)
              ?.map((e) =>
                  ShippingOptionRequirement.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      data: json['data'] as Object,
      includesTax: json['includes_tax'] as bool? ?? false,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$ShippingOptionToJson(ShippingOption instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'region_id': instance.regionId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('region', instance.region?.toJson());
  val['profile_id'] = instance.profileId;
  writeNotNull('profile', instance.profile?.toJson());
  val['provider_id'] = instance.providerId;
  writeNotNull('provider', instance.provider?.toJson());
  writeNotNull('price_type', shippingOptionPriceTypeToJson(instance.priceType));
  writeNotNull('amount', instance.amount);
  val['is_return'] = instance.isReturn;
  val['admin_only'] = instance.adminOnly;
  writeNotNull(
      'requirements', instance.requirements?.map((e) => e.toJson()).toList());
  val['data'] = instance.data;
  writeNotNull('includes_tax', instance.includesTax);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  return val;
}

ShippingOptionRequirement _$ShippingOptionRequirementFromJson(
        Map<String, dynamic> json) =>
    ShippingOptionRequirement(
      id: json['id'] as String? ?? 'default',
      shippingOptionId: json['shipping_option_id'] as String? ?? 'default',
      shippingOption: json['shipping_option'] == null
          ? null
          : ShippingOption.fromJson(
              json['shipping_option'] as Map<String, dynamic>),
      type: shippingOptionRequirementTypeFromJson(json['type']),
      amount: json['amount'] as int? ?? 36,
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
    );

Map<String, dynamic> _$ShippingOptionRequirementToJson(
    ShippingOptionRequirement instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'shipping_option_id': instance.shippingOptionId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('shipping_option', instance.shippingOption?.toJson());
  writeNotNull('type', shippingOptionRequirementTypeToJson(instance.type));
  val['amount'] = instance.amount;
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  return val;
}

ShippingProfile _$ShippingProfileFromJson(Map<String, dynamic> json) =>
    ShippingProfile(
      id: json['id'] as String? ?? 'default',
      name: json['name'] as String? ?? 'default',
      type: shippingProfileTypeFromJson(json['type']),
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      shippingOptions: (json['shipping_options'] as List<dynamic>?)
              ?.map((e) => ShippingOption.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$ShippingProfileToJson(ShippingProfile instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', shippingProfileTypeToJson(instance.type));
  writeNotNull('products', instance.products?.map((e) => e.toJson()).toList());
  writeNotNull('shipping_options',
      instance.shippingOptions?.map((e) => e.toJson()).toList());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  return val;
}

ShippingTaxRate _$ShippingTaxRateFromJson(Map<String, dynamic> json) =>
    ShippingTaxRate(
      shippingOptionId: json['shipping_option_id'] as String? ?? 'default',
      shippingOption: json['shipping_option'] == null
          ? null
          : ShippingOption.fromJson(
              json['shipping_option'] as Map<String, dynamic>),
      rateId: json['rate_id'] as String? ?? 'default',
      taxRate: json['tax_rate'] == null
          ? null
          : TaxRate.fromJson(json['tax_rate'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$ShippingTaxRateToJson(ShippingTaxRate instance) {
  final val = <String, dynamic>{
    'shipping_option_id': instance.shippingOptionId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('shipping_option', instance.shippingOption?.toJson());
  val['rate_id'] = instance.rateId;
  writeNotNull('tax_rate', instance.taxRate?.toJson());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('metadata', instance.metadata);
  return val;
}

StagedJob _$StagedJobFromJson(Map<String, dynamic> json) => StagedJob(
      id: json['id'] as String? ?? 'default',
      eventName: json['event_name'] as String? ?? 'default',
      data: json['data'] as Object,
      option: json['option'],
    );

Map<String, dynamic> _$StagedJobToJson(StagedJob instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'event_name': instance.eventName,
    'data': instance.data,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('option', instance.option);
  return val;
}

StockLocationAddressDTO _$StockLocationAddressDTOFromJson(
        Map<String, dynamic> json) =>
    StockLocationAddressDTO(
      id: json['id'] as String? ?? 'default',
      address1: json['address_1'] as String? ?? 'default',
      address2: json['address_2'] as String? ?? 'default',
      company: json['company'] as String? ?? 'default',
      city: json['city'] as String? ?? 'default',
      countryCode: json['country_code'] as String? ?? 'default',
      phone: json['phone'] as String? ?? 'default',
      postalCode: json['postal_code'] as String? ?? 'default',
      province: json['province'] as String? ?? 'default',
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$StockLocationAddressDTOToJson(
    StockLocationAddressDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['address_1'] = instance.address1;
  writeNotNull('address_2', instance.address2);
  writeNotNull('company', instance.company);
  writeNotNull('city', instance.city);
  val['country_code'] = instance.countryCode;
  writeNotNull('phone', instance.phone);
  writeNotNull('postal_code', instance.postalCode);
  writeNotNull('province', instance.province);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  return val;
}

StockLocationAddressInput _$StockLocationAddressInputFromJson(
        Map<String, dynamic> json) =>
    StockLocationAddressInput(
      address1: json['address_1'] as String? ?? 'default',
      address2: json['address_2'] as String? ?? 'default',
      city: json['city'] as String? ?? 'default',
      countryCode: json['country_code'] as String? ?? 'default',
      phone: json['phone'] as String? ?? 'default',
      postalCode: json['postal_code'] as String? ?? 'default',
      province: json['province'] as String? ?? 'default',
      metadata: json['metadata'],
    );

Map<String, dynamic> _$StockLocationAddressInputToJson(
    StockLocationAddressInput instance) {
  final val = <String, dynamic>{
    'address_1': instance.address1,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address_2', instance.address2);
  writeNotNull('city', instance.city);
  val['country_code'] = instance.countryCode;
  writeNotNull('phone', instance.phone);
  writeNotNull('postal_code', instance.postalCode);
  writeNotNull('province', instance.province);
  writeNotNull('metadata', instance.metadata);
  return val;
}

StockLocationDTO _$StockLocationDTOFromJson(Map<String, dynamic> json) =>
    StockLocationDTO(
      id: json['id'] as String? ?? 'default',
      addressId: json['address_id'] as String? ?? 'default',
      name: json['name'] as String? ?? 'default',
      address: json['address'] == null
          ? null
          : StockLocationAddressDTO.fromJson(
              json['address'] as Map<String, dynamic>),
      metadata: json['metadata'],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
    );

Map<String, dynamic> _$StockLocationDTOToJson(StockLocationDTO instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'address_id': instance.addressId,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address?.toJson());
  writeNotNull('metadata', instance.metadata);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  return val;
}

StockLocationExpandedDTO _$StockLocationExpandedDTOFromJson(
        Map<String, dynamic> json) =>
    StockLocationExpandedDTO(
      salesChannels: json['sales_channels'] == null
          ? null
          : SalesChannel.fromJson(
              json['sales_channels'] as Map<String, dynamic>),
      id: json['id'] as String? ?? 'default',
      addressId: json['address_id'] as String? ?? 'default',
      name: json['name'] as String? ?? 'default',
      address: json['address'] == null
          ? null
          : StockLocationAddressDTO.fromJson(
              json['address'] as Map<String, dynamic>),
      metadata: json['metadata'],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
    );

Map<String, dynamic> _$StockLocationExpandedDTOToJson(
    StockLocationExpandedDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sales_channels', instance.salesChannels?.toJson());
  val['id'] = instance.id;
  val['address_id'] = instance.addressId;
  val['name'] = instance.name;
  writeNotNull('address', instance.address?.toJson());
  writeNotNull('metadata', instance.metadata);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  return val;
}

Store _$StoreFromJson(Map<String, dynamic> json) => Store(
      id: json['id'] as String? ?? 'default',
      name: json['name'] as String? ?? 'default',
      defaultCurrencyCode:
          json['default_currency_code'] as String? ?? 'default',
      defaultCurrency: json['default_currency'] == null
          ? null
          : Currency.fromJson(json['default_currency'] as Map<String, dynamic>),
      currencies: (json['currencies'] as List<dynamic>?)
              ?.map((e) => Currency.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      swapLinkTemplate: json['swap_link_template'] as String? ?? 'default',
      paymentLinkTemplate:
          json['payment_link_template'] as String? ?? 'default',
      inviteLinkTemplate: json['invite_link_template'] as String? ?? 'default',
      defaultLocationId: json['default_location_id'] as String? ?? 'default',
      defaultSalesChannelId:
          json['default_sales_channel_id'] as String? ?? 'default',
      defaultSalesChannel: json['default_sales_channel'] == null
          ? null
          : SalesChannel.fromJson(
              json['default_sales_channel'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$StoreToJson(Store instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'default_currency_code': instance.defaultCurrencyCode,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('default_currency', instance.defaultCurrency?.toJson());
  writeNotNull(
      'currencies', instance.currencies?.map((e) => e.toJson()).toList());
  writeNotNull('swap_link_template', instance.swapLinkTemplate);
  writeNotNull('payment_link_template', instance.paymentLinkTemplate);
  writeNotNull('invite_link_template', instance.inviteLinkTemplate);
  writeNotNull('default_location_id', instance.defaultLocationId);
  writeNotNull('default_sales_channel_id', instance.defaultSalesChannelId);
  writeNotNull('default_sales_channel', instance.defaultSalesChannel?.toJson());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('metadata', instance.metadata);
  return val;
}

Swap _$SwapFromJson(Map<String, dynamic> json) => Swap(
      id: json['id'] as String? ?? 'default',
      fulfillmentStatus:
          swapFulfillmentStatusFromJson(json['fulfillment_status']),
      paymentStatus: swapPaymentStatusFromJson(json['payment_status']),
      orderId: json['order_id'] as String? ?? 'default',
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
      additionalItems: (json['additional_items'] as List<dynamic>?)
              ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      returnOrder: json['return_order'] == null
          ? null
          : Return.fromJson(json['return_order'] as Map<String, dynamic>),
      fulfillments: (json['fulfillments'] as List<dynamic>?)
              ?.map((e) => Fulfillment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      payment: json['payment'] == null
          ? null
          : Payment.fromJson(json['payment'] as Map<String, dynamic>),
      differenceDue: json['difference_due'] as int? ?? 36,
      shippingAddressId: json['shipping_address_id'] as String? ?? 'default',
      shippingAddress: json['shipping_address'] == null
          ? null
          : Address.fromJson(json['shipping_address'] as Map<String, dynamic>),
      shippingMethods: (json['shipping_methods'] as List<dynamic>?)
              ?.map((e) => ShippingMethod.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      cartId: json['cart_id'] as String? ?? 'default',
      cart: json['cart'] == null
          ? null
          : Cart.fromJson(json['cart'] as Map<String, dynamic>),
      confirmedAt: json['confirmed_at'] == null
          ? null
          : DateTime.parse(json['confirmed_at'] as String),
      canceledAt: json['canceled_at'] == null
          ? null
          : DateTime.parse(json['canceled_at'] as String),
      noNotification: json['no_notification'] as bool?,
      allowBackorder: json['allow_backorder'] as bool? ?? false,
      idempotencyKey: json['idempotency_key'] as String? ?? 'default',
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$SwapToJson(Swap instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fulfillment_status',
      swapFulfillmentStatusToJson(instance.fulfillmentStatus));
  writeNotNull(
      'payment_status', swapPaymentStatusToJson(instance.paymentStatus));
  val['order_id'] = instance.orderId;
  writeNotNull('order', instance.order?.toJson());
  writeNotNull('additional_items',
      instance.additionalItems?.map((e) => e.toJson()).toList());
  writeNotNull('return_order', instance.returnOrder?.toJson());
  writeNotNull(
      'fulfillments', instance.fulfillments?.map((e) => e.toJson()).toList());
  writeNotNull('payment', instance.payment?.toJson());
  writeNotNull('difference_due', instance.differenceDue);
  writeNotNull('shipping_address_id', instance.shippingAddressId);
  writeNotNull('shipping_address', instance.shippingAddress?.toJson());
  writeNotNull('shipping_methods',
      instance.shippingMethods?.map((e) => e.toJson()).toList());
  writeNotNull('cart_id', instance.cartId);
  writeNotNull('cart', instance.cart?.toJson());
  writeNotNull('confirmed_at', instance.confirmedAt?.toIso8601String());
  writeNotNull('canceled_at', instance.canceledAt?.toIso8601String());
  writeNotNull('no_notification', instance.noNotification);
  val['allow_backorder'] = instance.allowBackorder;
  writeNotNull('idempotency_key', instance.idempotencyKey);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  return val;
}

TaxLine _$TaxLineFromJson(Map<String, dynamic> json) => TaxLine(
      id: json['id'] as String? ?? 'default',
      code: json['code'] as String? ?? 'default',
      name: json['name'] as String? ?? 'default',
      rate: (json['rate'] as num).toDouble(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$TaxLineToJson(TaxLine instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  val['name'] = instance.name;
  val['rate'] = instance.rate;
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('metadata', instance.metadata);
  return val;
}

TaxProvider _$TaxProviderFromJson(Map<String, dynamic> json) => TaxProvider(
      id: json['id'] as String? ?? 'default',
      isInstalled: json['is_installed'] as bool? ?? true,
    );

Map<String, dynamic> _$TaxProviderToJson(TaxProvider instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_installed': instance.isInstalled,
    };

TaxRate _$TaxRateFromJson(Map<String, dynamic> json) => TaxRate(
      id: json['id'] as String? ?? 'default',
      rate: (json['rate'] as num?)?.toDouble(),
      code: json['code'] as String? ?? 'default',
      name: json['name'] as String? ?? 'default',
      regionId: json['region_id'] as String? ?? 'default',
      region: json['region'] == null
          ? null
          : Region.fromJson(json['region'] as Map<String, dynamic>),
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      productTypes: (json['product_types'] as List<dynamic>?)
              ?.map((e) => ProductType.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      shippingOptions: (json['shipping_options'] as List<dynamic>?)
              ?.map((e) => ShippingOption.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      productCount: json['product_count'] as int? ?? 36,
      productTypeCount: json['product_type_count'] as int? ?? 36,
      shippingOptionCount: json['shipping_option_count'] as int? ?? 36,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$TaxRateToJson(TaxRate instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('rate', instance.rate);
  writeNotNull('code', instance.code);
  val['name'] = instance.name;
  val['region_id'] = instance.regionId;
  writeNotNull('region', instance.region?.toJson());
  writeNotNull('products', instance.products?.map((e) => e.toJson()).toList());
  writeNotNull(
      'product_types', instance.productTypes?.map((e) => e.toJson()).toList());
  writeNotNull('shipping_options',
      instance.shippingOptions?.map((e) => e.toJson()).toList());
  writeNotNull('product_count', instance.productCount);
  writeNotNull('product_type_count', instance.productTypeCount);
  writeNotNull('shipping_option_count', instance.shippingOptionCount);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('metadata', instance.metadata);
  return val;
}

TrackingLink _$TrackingLinkFromJson(Map<String, dynamic> json) => TrackingLink(
      id: json['id'] as String? ?? 'default',
      url: json['url'] as String? ?? 'default',
      trackingNumber: json['tracking_number'] as String? ?? 'default',
      fulfillmentId: json['fulfillment_id'] as String? ?? 'default',
      fulfillment: json['fulfillment'] == null
          ? null
          : Fulfillment.fromJson(json['fulfillment'] as Map<String, dynamic>),
      idempotencyKey: json['idempotency_key'] as String? ?? 'default',
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$TrackingLinkToJson(TrackingLink instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('url', instance.url);
  val['tracking_number'] = instance.trackingNumber;
  val['fulfillment_id'] = instance.fulfillmentId;
  writeNotNull('fulfillment', instance.fulfillment?.toJson());
  writeNotNull('idempotency_key', instance.idempotencyKey);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  return val;
}

UpdateStockLocationInput _$UpdateStockLocationInputFromJson(
        Map<String, dynamic> json) =>
    UpdateStockLocationInput(
      name: json['name'] as String? ?? 'default',
      addressId: json['address_id'] as String? ?? 'default',
      address: json['address'] == null
          ? null
          : StockLocationAddressInput.fromJson(
              json['address'] as Map<String, dynamic>),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$UpdateStockLocationInputToJson(
    UpdateStockLocationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('address_id', instance.addressId);
  writeNotNull('address', instance.address?.toJson());
  writeNotNull('metadata', instance.metadata);
  return val;
}

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as String? ?? 'default',
      role: User.userRoleRoleFromJson(json['role']),
      email: json['email'] as String? ?? 'default',
      firstName: json['first_name'] as String? ?? 'default',
      lastName: json['last_name'] as String? ?? 'default',
      apiToken: json['api_token'] as String? ?? 'default',
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$UserToJson(User instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('role', userRoleToJson(instance.role));
  val['email'] = instance.email;
  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('api_token', instance.apiToken);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('metadata', instance.metadata);
  return val;
}

VariantInventory _$VariantInventoryFromJson(Map<String, dynamic> json) =>
    VariantInventory(
      id: json['id'] as String? ?? 'default',
      inventory: ResponseInventoryItem.fromJson(
          json['inventory'] as Map<String, dynamic>),
      salesChannelAvailability: (json['sales_channel_availability']
              as List<dynamic>)
          .map((e) => VariantInventory$SalesChannelAvailability$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VariantInventoryToJson(VariantInventory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'inventory': instance.inventory.toJson(),
      'sales_channel_availability':
          instance.salesChannelAvailability.map((e) => e.toJson()).toList(),
    };

StoreAuthRes _$StoreAuthResFromJson(Map<String, dynamic> json) => StoreAuthRes(
      customer: Customer.fromJson(json['customer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StoreAuthResToJson(StoreAuthRes instance) =>
    <String, dynamic>{
      'customer': instance.customer.toJson(),
    };

StoreBearerAuthRes _$StoreBearerAuthResFromJson(Map<String, dynamic> json) =>
    StoreBearerAuthRes(
      accessToken: json['access_token'] as String? ?? 'default',
    );

Map<String, dynamic> _$StoreBearerAuthResToJson(StoreBearerAuthRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('access_token', instance.accessToken);
  return val;
}

StoreCartShippingOptionsListRes _$StoreCartShippingOptionsListResFromJson(
        Map<String, dynamic> json) =>
    StoreCartShippingOptionsListRes(
      shippingOptions: (json['shipping_options'] as List<dynamic>?)
              ?.map((e) =>
                  PricedShippingOption.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$StoreCartShippingOptionsListResToJson(
        StoreCartShippingOptionsListRes instance) =>
    <String, dynamic>{
      'shipping_options':
          instance.shippingOptions.map((e) => e.toJson()).toList(),
    };

StoreCartsRes _$StoreCartsResFromJson(Map<String, dynamic> json) =>
    StoreCartsRes(
      cart: Cart.fromJson(json['cart'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StoreCartsResToJson(StoreCartsRes instance) =>
    <String, dynamic>{
      'cart': instance.cart.toJson(),
    };

StoreCollectionsListRes _$StoreCollectionsListResFromJson(
        Map<String, dynamic> json) =>
    StoreCollectionsListRes(
      collections: (json['collections'] as List<dynamic>?)
              ?.map(
                  (e) => ProductCollection.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$StoreCollectionsListResToJson(
        StoreCollectionsListRes instance) =>
    <String, dynamic>{
      'collections': instance.collections.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
    };

StoreCollectionsRes _$StoreCollectionsResFromJson(Map<String, dynamic> json) =>
    StoreCollectionsRes(
      collection: ProductCollection.fromJson(
          json['collection'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StoreCollectionsResToJson(
        StoreCollectionsRes instance) =>
    <String, dynamic>{
      'collection': instance.collection.toJson(),
    };

StoreCompleteCartRes _$StoreCompleteCartResFromJson(
        Map<String, dynamic> json) =>
    StoreCompleteCartRes(
      type: storeCompleteCartResTypeFromJson(json['type']),
      data: json['data'] as Object,
    );

Map<String, dynamic> _$StoreCompleteCartResToJson(
    StoreCompleteCartRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', storeCompleteCartResTypeToJson(instance.type));
  val['data'] = instance.data;
  return val;
}

StoreCustomersListOrdersRes _$StoreCustomersListOrdersResFromJson(
        Map<String, dynamic> json) =>
    StoreCustomersListOrdersRes(
      orders: (json['orders'] as List<dynamic>?)
              ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$StoreCustomersListOrdersResToJson(
        StoreCustomersListOrdersRes instance) =>
    <String, dynamic>{
      'orders': instance.orders.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
    };

StoreCustomersListPaymentMethodsRes
    _$StoreCustomersListPaymentMethodsResFromJson(Map<String, dynamic> json) =>
        StoreCustomersListPaymentMethodsRes(
          paymentMethods: (json['payment_methods'] as List<dynamic>)
              .map((e) =>
                  StoreCustomersListPaymentMethodsRes$PaymentMethods$Item
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$StoreCustomersListPaymentMethodsResToJson(
        StoreCustomersListPaymentMethodsRes instance) =>
    <String, dynamic>{
      'payment_methods':
          instance.paymentMethods.map((e) => e.toJson()).toList(),
    };

StoreCustomersRes _$StoreCustomersResFromJson(Map<String, dynamic> json) =>
    StoreCustomersRes(
      customer: Customer.fromJson(json['customer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StoreCustomersResToJson(StoreCustomersRes instance) =>
    <String, dynamic>{
      'customer': instance.customer.toJson(),
    };

StoreCustomersResetPasswordRes _$StoreCustomersResetPasswordResFromJson(
        Map<String, dynamic> json) =>
    StoreCustomersResetPasswordRes(
      customer: Customer.fromJson(json['customer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StoreCustomersResetPasswordResToJson(
        StoreCustomersResetPasswordRes instance) =>
    <String, dynamic>{
      'customer': instance.customer.toJson(),
    };

StoreGetAuthEmailRes _$StoreGetAuthEmailResFromJson(
        Map<String, dynamic> json) =>
    StoreGetAuthEmailRes(
      exists: json['exists'] as bool,
    );

Map<String, dynamic> _$StoreGetAuthEmailResToJson(
        StoreGetAuthEmailRes instance) =>
    <String, dynamic>{
      'exists': instance.exists,
    };

StoreGetProductCategoriesCategoryRes
    _$StoreGetProductCategoriesCategoryResFromJson(Map<String, dynamic> json) =>
        StoreGetProductCategoriesCategoryRes(
          productCategory: json['product_category'] == null
              ? null
              : ProductCategory.fromJson(
                  json['product_category'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$StoreGetProductCategoriesCategoryResToJson(
    StoreGetProductCategoriesCategoryRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('product_category', instance.productCategory?.toJson());
  return val;
}

StoreGetProductCategoriesRes _$StoreGetProductCategoriesResFromJson(
        Map<String, dynamic> json) =>
    StoreGetProductCategoriesRes(
      productCategories: (json['product_categories'] as List<dynamic>?)
              ?.map((e) => ProductCategory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$StoreGetProductCategoriesResToJson(
        StoreGetProductCategoriesRes instance) =>
    <String, dynamic>{
      'product_categories':
          instance.productCategories.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
    };

StoreGiftCardsRes _$StoreGiftCardsResFromJson(Map<String, dynamic> json) =>
    StoreGiftCardsRes(
      giftCard: json['gift_card'] == null
          ? null
          : GiftCard.fromJson(json['gift_card'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StoreGiftCardsResToJson(StoreGiftCardsRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('gift_card', instance.giftCard?.toJson());
  return val;
}

StoreOrderEditsRes _$StoreOrderEditsResFromJson(Map<String, dynamic> json) =>
    StoreOrderEditsRes(
      orderEdit: json['order_edit'] == null
          ? null
          : OrderEdit.fromJson(json['order_edit'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StoreOrderEditsResToJson(StoreOrderEditsRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('order_edit', instance.orderEdit?.toJson());
  return val;
}

StoreOrdersRes _$StoreOrdersResFromJson(Map<String, dynamic> json) =>
    StoreOrdersRes(
      order: Order.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StoreOrdersResToJson(StoreOrdersRes instance) =>
    <String, dynamic>{
      'order': instance.order.toJson(),
    };

StorePaymentCollectionSessionsReq _$StorePaymentCollectionSessionsReqFromJson(
        Map<String, dynamic> json) =>
    StorePaymentCollectionSessionsReq(
      providerId: json['provider_id'] as String? ?? 'default',
    );

Map<String, dynamic> _$StorePaymentCollectionSessionsReqToJson(
        StorePaymentCollectionSessionsReq instance) =>
    <String, dynamic>{
      'provider_id': instance.providerId,
    };

StorePaymentCollectionsRes _$StorePaymentCollectionsResFromJson(
        Map<String, dynamic> json) =>
    StorePaymentCollectionsRes(
      paymentCollection: json['payment_collection'] == null
          ? null
          : PaymentCollection.fromJson(
              json['payment_collection'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StorePaymentCollectionsResToJson(
    StorePaymentCollectionsRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('payment_collection', instance.paymentCollection?.toJson());
  return val;
}

StorePaymentCollectionsSessionRes _$StorePaymentCollectionsSessionResFromJson(
        Map<String, dynamic> json) =>
    StorePaymentCollectionsSessionRes(
      paymentSession: json['payment_session'] == null
          ? null
          : PaymentSession.fromJson(
              json['payment_session'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StorePaymentCollectionsSessionResToJson(
    StorePaymentCollectionsSessionRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('payment_session', instance.paymentSession?.toJson());
  return val;
}

StorePostAuthReq _$StorePostAuthReqFromJson(Map<String, dynamic> json) =>
    StorePostAuthReq(
      email: json['email'] as String? ?? 'default',
      password: json['password'] as String? ?? 'default',
    );

Map<String, dynamic> _$StorePostAuthReqToJson(StorePostAuthReq instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

StorePostCartReq _$StorePostCartReqFromJson(Map<String, dynamic> json) =>
    StorePostCartReq(
      regionId: json['region_id'] as String? ?? 'default',
      salesChannelId: json['sales_channel_id'] as String? ?? 'default',
      countryCode: json['country_code'] as String? ?? 'default',
      items: (json['items'] as List<dynamic>?)
          ?.map((e) =>
              StorePostCartReq$Items$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      context: json['context'],
    );

Map<String, dynamic> _$StorePostCartReqToJson(StorePostCartReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('region_id', instance.regionId);
  writeNotNull('sales_channel_id', instance.salesChannelId);
  writeNotNull('country_code', instance.countryCode);
  writeNotNull('items', instance.items?.map((e) => e.toJson()).toList());
  writeNotNull('context', instance.context);
  return val;
}

StorePostCartsCartLineItemsItemReq _$StorePostCartsCartLineItemsItemReqFromJson(
        Map<String, dynamic> json) =>
    StorePostCartsCartLineItemsItemReq(
      quantity: (json['quantity'] as num).toDouble(),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$StorePostCartsCartLineItemsItemReqToJson(
    StorePostCartsCartLineItemsItemReq instance) {
  final val = <String, dynamic>{
    'quantity': instance.quantity,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('metadata', instance.metadata);
  return val;
}

StorePostCartsCartLineItemsReq _$StorePostCartsCartLineItemsReqFromJson(
        Map<String, dynamic> json) =>
    StorePostCartsCartLineItemsReq(
      variantId: json['variant_id'] as String? ?? 'default',
      quantity: (json['quantity'] as num).toDouble(),
      metadata: json['metadata'],
    );

Map<String, dynamic> _$StorePostCartsCartLineItemsReqToJson(
    StorePostCartsCartLineItemsReq instance) {
  final val = <String, dynamic>{
    'variant_id': instance.variantId,
    'quantity': instance.quantity,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('metadata', instance.metadata);
  return val;
}

StorePostCartsCartPaymentSessionReq
    _$StorePostCartsCartPaymentSessionReqFromJson(Map<String, dynamic> json) =>
        StorePostCartsCartPaymentSessionReq(
          providerId: json['provider_id'] as String? ?? 'default',
        );

Map<String, dynamic> _$StorePostCartsCartPaymentSessionReqToJson(
        StorePostCartsCartPaymentSessionReq instance) =>
    <String, dynamic>{
      'provider_id': instance.providerId,
    };

StorePostCartsCartPaymentSessionUpdateReq
    _$StorePostCartsCartPaymentSessionUpdateReqFromJson(
            Map<String, dynamic> json) =>
        StorePostCartsCartPaymentSessionUpdateReq(
          data: json['data'] as Object,
        );

Map<String, dynamic> _$StorePostCartsCartPaymentSessionUpdateReqToJson(
        StorePostCartsCartPaymentSessionUpdateReq instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

StorePostCartsCartReq _$StorePostCartsCartReqFromJson(
        Map<String, dynamic> json) =>
    StorePostCartsCartReq(
      regionId: json['region_id'] as String? ?? 'default',
      countryCode: json['country_code'] as String? ?? 'default',
      email: json['email'] as String? ?? 'default',
      salesChannelId: json['sales_channel_id'] as String? ?? 'default',
      billingAddress: json['billingAddress'],
      shippingAddress: json['shippingAddress'],
      giftCards: (json['gift_cards'] as List<dynamic>?)
          ?.map((e) => StorePostCartsCartReq$GiftCards$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      discounts: (json['discounts'] as List<dynamic>?)
          ?.map((e) => StorePostCartsCartReq$Discounts$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      customerId: json['customer_id'] as String? ?? 'default',
      context: json['context'],
    );

Map<String, dynamic> _$StorePostCartsCartReqToJson(
    StorePostCartsCartReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('region_id', instance.regionId);
  writeNotNull('country_code', instance.countryCode);
  writeNotNull('email', instance.email);
  writeNotNull('sales_channel_id', instance.salesChannelId);
  writeNotNull('billingAddress', instance.billingAddress);
  writeNotNull('shippingAddress', instance.shippingAddress);
  writeNotNull(
      'gift_cards', instance.giftCards?.map((e) => e.toJson()).toList());
  writeNotNull(
      'discounts', instance.discounts?.map((e) => e.toJson()).toList());
  writeNotNull('customer_id', instance.customerId);
  writeNotNull('context', instance.context);
  return val;
}

StorePostCartsCartShippingMethodReq
    _$StorePostCartsCartShippingMethodReqFromJson(Map<String, dynamic> json) =>
        StorePostCartsCartShippingMethodReq(
          optionId: json['option_id'] as String? ?? 'default',
          data: json['data'],
        );

Map<String, dynamic> _$StorePostCartsCartShippingMethodReqToJson(
    StorePostCartsCartShippingMethodReq instance) {
  final val = <String, dynamic>{
    'option_id': instance.optionId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  return val;
}

StorePostCustomersCustomerAcceptClaimReq
    _$StorePostCustomersCustomerAcceptClaimReqFromJson(
            Map<String, dynamic> json) =>
        StorePostCustomersCustomerAcceptClaimReq(
          token: json['token'] as String? ?? 'default',
        );

Map<String, dynamic> _$StorePostCustomersCustomerAcceptClaimReqToJson(
        StorePostCustomersCustomerAcceptClaimReq instance) =>
    <String, dynamic>{
      'token': instance.token,
    };

StorePostCustomersCustomerAddressesReq
    _$StorePostCustomersCustomerAddressesReqFromJson(
            Map<String, dynamic> json) =>
        StorePostCustomersCustomerAddressesReq(
          address: AddressCreatePayload.fromJson(
              json['address'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$StorePostCustomersCustomerAddressesReqToJson(
        StorePostCustomersCustomerAddressesReq instance) =>
    <String, dynamic>{
      'address': instance.address.toJson(),
    };

StorePostCustomersCustomerOrderClaimReq
    _$StorePostCustomersCustomerOrderClaimReqFromJson(
            Map<String, dynamic> json) =>
        StorePostCustomersCustomerOrderClaimReq(
          orderIds: (json['order_ids'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
        );

Map<String, dynamic> _$StorePostCustomersCustomerOrderClaimReqToJson(
        StorePostCustomersCustomerOrderClaimReq instance) =>
    <String, dynamic>{
      'order_ids': instance.orderIds,
    };

StorePostCustomersCustomerPasswordTokenReq
    _$StorePostCustomersCustomerPasswordTokenReqFromJson(
            Map<String, dynamic> json) =>
        StorePostCustomersCustomerPasswordTokenReq(
          email: json['email'] as String? ?? 'default',
        );

Map<String, dynamic> _$StorePostCustomersCustomerPasswordTokenReqToJson(
        StorePostCustomersCustomerPasswordTokenReq instance) =>
    <String, dynamic>{
      'email': instance.email,
    };

StorePostCustomersCustomerReq _$StorePostCustomersCustomerReqFromJson(
        Map<String, dynamic> json) =>
    StorePostCustomersCustomerReq(
      firstName: json['first_name'] as String? ?? 'default',
      lastName: json['last_name'] as String? ?? 'default',
      billingAddress: json['billingAddress'],
      password: json['password'] as String? ?? 'default',
      phone: json['phone'] as String? ?? 'default',
      email: json['email'] as String? ?? 'default',
      metadata: json['metadata'],
    );

Map<String, dynamic> _$StorePostCustomersCustomerReqToJson(
    StorePostCustomersCustomerReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('billingAddress', instance.billingAddress);
  writeNotNull('password', instance.password);
  writeNotNull('phone', instance.phone);
  writeNotNull('email', instance.email);
  writeNotNull('metadata', instance.metadata);
  return val;
}

StorePostCustomersReq _$StorePostCustomersReqFromJson(
        Map<String, dynamic> json) =>
    StorePostCustomersReq(
      firstName: json['first_name'] as String? ?? 'default',
      lastName: json['last_name'] as String? ?? 'default',
      email: json['email'] as String? ?? 'default',
      password: json['password'] as String? ?? 'default',
      phone: json['phone'] as String? ?? 'default',
    );

Map<String, dynamic> _$StorePostCustomersReqToJson(
    StorePostCustomersReq instance) {
  final val = <String, dynamic>{
    'first_name': instance.firstName,
    'last_name': instance.lastName,
    'email': instance.email,
    'password': instance.password,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('phone', instance.phone);
  return val;
}

StorePostCustomersResetPasswordReq _$StorePostCustomersResetPasswordReqFromJson(
        Map<String, dynamic> json) =>
    StorePostCustomersResetPasswordReq(
      email: json['email'] as String? ?? 'default',
      password: json['password'] as String? ?? 'default',
      token: json['token'] as String? ?? 'default',
    );

Map<String, dynamic> _$StorePostCustomersResetPasswordReqToJson(
        StorePostCustomersResetPasswordReq instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'token': instance.token,
    };

StorePostOrderEditsOrderEditDecline
    _$StorePostOrderEditsOrderEditDeclineFromJson(Map<String, dynamic> json) =>
        StorePostOrderEditsOrderEditDecline(
          declinedReason: json['declined_reason'] as String? ?? 'default',
        );

Map<String, dynamic> _$StorePostOrderEditsOrderEditDeclineToJson(
    StorePostOrderEditsOrderEditDecline instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('declined_reason', instance.declinedReason);
  return val;
}

StorePostPaymentCollectionsBatchSessionsAuthorizeReq
    _$StorePostPaymentCollectionsBatchSessionsAuthorizeReqFromJson(
            Map<String, dynamic> json) =>
        StorePostPaymentCollectionsBatchSessionsAuthorizeReq(
          sessionIds: (json['session_ids'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
        );

Map<String, dynamic>
    _$StorePostPaymentCollectionsBatchSessionsAuthorizeReqToJson(
            StorePostPaymentCollectionsBatchSessionsAuthorizeReq instance) =>
        <String, dynamic>{
          'session_ids': instance.sessionIds,
        };

StorePostPaymentCollectionsBatchSessionsReq
    _$StorePostPaymentCollectionsBatchSessionsReqFromJson(
            Map<String, dynamic> json) =>
        StorePostPaymentCollectionsBatchSessionsReq(
          sessions: (json['sessions'] as List<dynamic>)
              .map((e) =>
                  StorePostPaymentCollectionsBatchSessionsReq$Sessions$Item
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$StorePostPaymentCollectionsBatchSessionsReqToJson(
        StorePostPaymentCollectionsBatchSessionsReq instance) =>
    <String, dynamic>{
      'sessions': instance.sessions.map((e) => e.toJson()).toList(),
    };

StorePostReturnsReq _$StorePostReturnsReqFromJson(Map<String, dynamic> json) =>
    StorePostReturnsReq(
      orderId: json['order_id'] as String? ?? 'default',
      items: (json['items'] as List<dynamic>)
          .map((e) => StorePostReturnsReq$Items$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      returnShipping: json['return_shipping'] == null
          ? null
          : StorePostReturnsReq$ReturnShipping.fromJson(
              json['return_shipping'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StorePostReturnsReqToJson(StorePostReturnsReq instance) {
  final val = <String, dynamic>{
    'order_id': instance.orderId,
    'items': instance.items.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('return_shipping', instance.returnShipping?.toJson());
  return val;
}

StorePostSearchReq _$StorePostSearchReqFromJson(Map<String, dynamic> json) =>
    StorePostSearchReq(
      q: json['q'] as String? ?? 'default',
      offset: (json['offset'] as num?)?.toDouble(),
      limit: (json['limit'] as num?)?.toDouble(),
      filter: json['filter'],
    );

Map<String, dynamic> _$StorePostSearchReqToJson(StorePostSearchReq instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('q', instance.q);
  writeNotNull('offset', instance.offset);
  writeNotNull('limit', instance.limit);
  writeNotNull('filter', instance.filter);
  return val;
}

StorePostSearchRes _$StorePostSearchResFromJson(Map<String, dynamic> json) =>
    StorePostSearchRes(
      hits:
          (json['hits'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
              [],
    );

Map<String, dynamic> _$StorePostSearchResToJson(StorePostSearchRes instance) =>
    <String, dynamic>{
      'hits': instance.hits,
    };

StorePostSwapsReq _$StorePostSwapsReqFromJson(Map<String, dynamic> json) =>
    StorePostSwapsReq(
      orderId: json['order_id'] as String? ?? 'default',
      returnItems: (json['return_items'] as List<dynamic>)
          .map((e) => StorePostSwapsReq$ReturnItems$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      returnShippingOption:
          json['return_shipping_option'] as String? ?? 'default',
      additionalItems: (json['additional_items'] as List<dynamic>)
          .map((e) => StorePostSwapsReq$AdditionalItems$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StorePostSwapsReqToJson(StorePostSwapsReq instance) {
  final val = <String, dynamic>{
    'order_id': instance.orderId,
    'return_items': instance.returnItems.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('return_shipping_option', instance.returnShippingOption);
  val['additional_items'] =
      instance.additionalItems.map((e) => e.toJson()).toList();
  return val;
}

StoreProductTagsListRes _$StoreProductTagsListResFromJson(
        Map<String, dynamic> json) =>
    StoreProductTagsListRes(
      productTags: (json['product_tags'] as List<dynamic>?)
              ?.map((e) => ProductTag.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$StoreProductTagsListResToJson(
        StoreProductTagsListRes instance) =>
    <String, dynamic>{
      'product_tags': instance.productTags.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
    };

StoreProductTypesListRes _$StoreProductTypesListResFromJson(
        Map<String, dynamic> json) =>
    StoreProductTypesListRes(
      productTypes: (json['product_types'] as List<dynamic>?)
              ?.map((e) => ProductType.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$StoreProductTypesListResToJson(
        StoreProductTypesListRes instance) =>
    <String, dynamic>{
      'product_types': instance.productTypes.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
    };

StoreProductsListRes _$StoreProductsListResFromJson(
        Map<String, dynamic> json) =>
    StoreProductsListRes(
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => PricedProduct.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$StoreProductsListResToJson(
        StoreProductsListRes instance) =>
    <String, dynamic>{
      'products': instance.products.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'offset': instance.offset,
      'limit': instance.limit,
    };

StoreProductsRes _$StoreProductsResFromJson(Map<String, dynamic> json) =>
    StoreProductsRes(
      product: PricedProduct.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StoreProductsResToJson(StoreProductsRes instance) =>
    <String, dynamic>{
      'product': instance.product.toJson(),
    };

StoreRegionsListRes _$StoreRegionsListResFromJson(Map<String, dynamic> json) =>
    StoreRegionsListRes(
      regions: (json['regions'] as List<dynamic>?)
              ?.map((e) => Region.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      count: json['count'] as int? ?? 36,
      offset: json['offset'] as int? ?? 36,
      limit: json['limit'] as int? ?? 36,
    );

Map<String, dynamic> _$StoreRegionsListResToJson(StoreRegionsListRes instance) {
  final val = <String, dynamic>{
    'regions': instance.regions.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  writeNotNull('offset', instance.offset);
  writeNotNull('limit', instance.limit);
  return val;
}

StoreRegionsRes _$StoreRegionsResFromJson(Map<String, dynamic> json) =>
    StoreRegionsRes(
      region: Region.fromJson(json['region'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StoreRegionsResToJson(StoreRegionsRes instance) =>
    <String, dynamic>{
      'region': instance.region.toJson(),
    };

StoreReturnReasonsListRes _$StoreReturnReasonsListResFromJson(
        Map<String, dynamic> json) =>
    StoreReturnReasonsListRes(
      returnReasons: (json['return_reasons'] as List<dynamic>?)
              ?.map((e) => ReturnReason.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$StoreReturnReasonsListResToJson(
        StoreReturnReasonsListRes instance) =>
    <String, dynamic>{
      'return_reasons': instance.returnReasons.map((e) => e.toJson()).toList(),
    };

StoreReturnReasonsRes _$StoreReturnReasonsResFromJson(
        Map<String, dynamic> json) =>
    StoreReturnReasonsRes(
      returnReason: json['return_reason'] == null
          ? null
          : ReturnReason.fromJson(
              json['return_reason'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StoreReturnReasonsResToJson(
    StoreReturnReasonsRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('return_reason', instance.returnReason?.toJson());
  return val;
}

StoreReturnsRes _$StoreReturnsResFromJson(Map<String, dynamic> json) =>
    StoreReturnsRes(
      $return: json['return'] == null
          ? null
          : Return.fromJson(json['return'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StoreReturnsResToJson(StoreReturnsRes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('return', instance.$return?.toJson());
  return val;
}

StoreShippingOptionsListRes _$StoreShippingOptionsListResFromJson(
        Map<String, dynamic> json) =>
    StoreShippingOptionsListRes(
      shippingOptions: (json['shipping_options'] as List<dynamic>?)
              ?.map((e) =>
                  PricedShippingOption.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$StoreShippingOptionsListResToJson(
        StoreShippingOptionsListRes instance) =>
    <String, dynamic>{
      'shipping_options':
          instance.shippingOptions.map((e) => e.toJson()).toList(),
    };

StoreSwapsRes _$StoreSwapsResFromJson(Map<String, dynamic> json) =>
    StoreSwapsRes(
      swap: Swap.fromJson(json['swap'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StoreSwapsResToJson(StoreSwapsRes instance) =>
    <String, dynamic>{
      'swap': instance.swap.toJson(),
    };

StoreVariantsListRes _$StoreVariantsListResFromJson(
        Map<String, dynamic> json) =>
    StoreVariantsListRes(
      variants: (json['variants'] as List<dynamic>?)
              ?.map((e) => PricedVariant.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$StoreVariantsListResToJson(
        StoreVariantsListRes instance) =>
    <String, dynamic>{
      'variants': instance.variants.map((e) => e.toJson()).toList(),
    };

StoreVariantsRes _$StoreVariantsResFromJson(Map<String, dynamic> json) =>
    StoreVariantsRes(
      variant: PricedVariant.fromJson(json['variant'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StoreVariantsResToJson(StoreVariantsRes instance) =>
    <String, dynamic>{
      'variant': instance.variant.toJson(),
    };

$400Error$Response _$$400Error$ResponseFromJson(Map<String, dynamic> json) =>
    $400Error$Response();

Map<String, dynamic> _$$400Error$ResponseToJson($400Error$Response instance) =>
    <String, dynamic>{};

AdminUploadsPost$RequestBody _$AdminUploadsPost$RequestBodyFromJson(
        Map<String, dynamic> json) =>
    AdminUploadsPost$RequestBody(
      files: json['files'] as String? ?? 'default',
    );

Map<String, dynamic> _$AdminUploadsPost$RequestBodyToJson(
    AdminUploadsPost$RequestBody instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('files', instance.files);
  return val;
}

AdminUploadsProtectedPost$RequestBody
    _$AdminUploadsProtectedPost$RequestBodyFromJson(
            Map<String, dynamic> json) =>
        AdminUploadsProtectedPost$RequestBody(
          files: json['files'] as String? ?? 'default',
        );

Map<String, dynamic> _$AdminUploadsProtectedPost$RequestBodyToJson(
    AdminUploadsProtectedPost$RequestBody instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('files', instance.files);
  return val;
}

AdminDeleteCustomerGroupsGroupCustomerBatchReq$CustomerIds$Item
    _$AdminDeleteCustomerGroupsGroupCustomerBatchReq$CustomerIds$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminDeleteCustomerGroupsGroupCustomerBatchReq$CustomerIds$Item(
          id: json['id'] as String? ?? 'default',
        );

Map<String, dynamic>
    _$AdminDeleteCustomerGroupsGroupCustomerBatchReq$CustomerIds$ItemToJson(
            AdminDeleteCustomerGroupsGroupCustomerBatchReq$CustomerIds$Item
                instance) =>
        <String, dynamic>{
          'id': instance.id,
        };

AdminDeleteDiscountsDiscountConditionsConditionBatchReq$Resources$Item
    _$AdminDeleteDiscountsDiscountConditionsConditionBatchReq$Resources$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminDeleteDiscountsDiscountConditionsConditionBatchReq$Resources$Item(
          id: json['id'] as String? ?? 'default',
        );

Map<String, dynamic>
    _$AdminDeleteDiscountsDiscountConditionsConditionBatchReq$Resources$ItemToJson(
            AdminDeleteDiscountsDiscountConditionsConditionBatchReq$Resources$Item
                instance) =>
        <String, dynamic>{
          'id': instance.id,
        };

AdminDeleteProductCategoriesCategoryProductsBatchReq$ProductIds$Item
    _$AdminDeleteProductCategoriesCategoryProductsBatchReq$ProductIds$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminDeleteProductCategoriesCategoryProductsBatchReq$ProductIds$Item(
          id: json['id'] as String? ?? 'default',
        );

Map<String, dynamic>
    _$AdminDeleteProductCategoriesCategoryProductsBatchReq$ProductIds$ItemToJson(
            AdminDeleteProductCategoriesCategoryProductsBatchReq$ProductIds$Item
                instance) =>
        <String, dynamic>{
          'id': instance.id,
        };

AdminDeletePublishableApiKeySalesChannelsBatchReq$SalesChannelIds$Item
    _$AdminDeletePublishableApiKeySalesChannelsBatchReq$SalesChannelIds$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminDeletePublishableApiKeySalesChannelsBatchReq$SalesChannelIds$Item(
          id: json['id'] as String? ?? 'default',
        );

Map<String, dynamic>
    _$AdminDeletePublishableApiKeySalesChannelsBatchReq$SalesChannelIds$ItemToJson(
            AdminDeletePublishableApiKeySalesChannelsBatchReq$SalesChannelIds$Item
                instance) =>
        <String, dynamic>{
          'id': instance.id,
        };

AdminDeleteSalesChannelsChannelProductsBatchReq$ProductIds$Item
    _$AdminDeleteSalesChannelsChannelProductsBatchReq$ProductIds$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminDeleteSalesChannelsChannelProductsBatchReq$ProductIds$Item(
          id: json['id'] as String? ?? 'default',
        );

Map<String, dynamic>
    _$AdminDeleteSalesChannelsChannelProductsBatchReq$ProductIds$ItemToJson(
            AdminDeleteSalesChannelsChannelProductsBatchReq$ProductIds$Item
                instance) =>
        <String, dynamic>{
          'id': instance.id,
        };

AdminGetRegionsRegionFulfillmentOptionsRes$FulfillmentOptions$Item
    _$AdminGetRegionsRegionFulfillmentOptionsRes$FulfillmentOptions$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminGetRegionsRegionFulfillmentOptionsRes$FulfillmentOptions$Item(
          providerId: json['provider_id'] as String? ?? 'default',
          options: (json['options'] as List<dynamic>?)
                  ?.map((e) => e as Object)
                  .toList() ??
              [],
        );

Map<String, dynamic>
    _$AdminGetRegionsRegionFulfillmentOptionsRes$FulfillmentOptions$ItemToJson(
            AdminGetRegionsRegionFulfillmentOptionsRes$FulfillmentOptions$Item
                instance) =>
        <String, dynamic>{
          'provider_id': instance.providerId,
          'options': instance.options,
        };

AdminInventoryItemsLocationLevelsRes$InventoryItem
    _$AdminInventoryItemsLocationLevelsRes$InventoryItemFromJson(
            Map<String, dynamic> json) =>
        AdminInventoryItemsLocationLevelsRes$InventoryItem(
          id: json['id'] as String? ?? 'default',
          locationLevels: (json['location_levels'] as List<dynamic>?)
                  ?.map((e) =>
                      InventoryLevelDTO.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              [],
        );

Map<String, dynamic> _$AdminInventoryItemsLocationLevelsRes$InventoryItemToJson(
        AdminInventoryItemsLocationLevelsRes$InventoryItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'location_levels':
          instance.locationLevels.map((e) => e.toJson()).toList(),
    };

AdminPostCustomerGroupsGroupCustomersBatchReq$CustomerIds$Item
    _$AdminPostCustomerGroupsGroupCustomersBatchReq$CustomerIds$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostCustomerGroupsGroupCustomersBatchReq$CustomerIds$Item(
          id: json['id'] as String? ?? 'default',
        );

Map<String, dynamic>
    _$AdminPostCustomerGroupsGroupCustomersBatchReq$CustomerIds$ItemToJson(
            AdminPostCustomerGroupsGroupCustomersBatchReq$CustomerIds$Item
                instance) =>
        <String, dynamic>{
          'id': instance.id,
        };

AdminPostCustomersCustomerReq$Groups$Item
    _$AdminPostCustomersCustomerReq$Groups$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostCustomersCustomerReq$Groups$Item(
          id: json['id'] as String? ?? 'default',
        );

Map<String, dynamic> _$AdminPostCustomersCustomerReq$Groups$ItemToJson(
        AdminPostCustomersCustomerReq$Groups$Item instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

AdminPostDiscountsDiscountConditionsConditionBatchReq$Resources$Item
    _$AdminPostDiscountsDiscountConditionsConditionBatchReq$Resources$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostDiscountsDiscountConditionsConditionBatchReq$Resources$Item(
          id: json['id'] as String? ?? 'default',
        );

Map<String, dynamic>
    _$AdminPostDiscountsDiscountConditionsConditionBatchReq$Resources$ItemToJson(
            AdminPostDiscountsDiscountConditionsConditionBatchReq$Resources$Item
                instance) =>
        <String, dynamic>{
          'id': instance.id,
        };

AdminPostDiscountsDiscountReq$Rule _$AdminPostDiscountsDiscountReq$RuleFromJson(
        Map<String, dynamic> json) =>
    AdminPostDiscountsDiscountReq$Rule(
      id: json['id'] as String? ?? 'default',
      description: json['description'] as String? ?? 'default',
      value: (json['value'] as num?)?.toDouble(),
      allocation: adminPostDiscountsDiscountReq$RuleAllocationNullableFromJson(
          json['allocation']),
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) =>
              AdminPostDiscountsDiscountReq$Rule$Conditions$Item.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AdminPostDiscountsDiscountReq$RuleToJson(
    AdminPostDiscountsDiscountReq$Rule instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('value', instance.value);
  writeNotNull(
      'allocation',
      adminPostDiscountsDiscountReq$RuleAllocationNullableToJson(
          instance.allocation));
  writeNotNull(
      'conditions', instance.conditions?.map((e) => e.toJson()).toList());
  return val;
}

AdminPostDiscountsReq$Rule _$AdminPostDiscountsReq$RuleFromJson(
        Map<String, dynamic> json) =>
    AdminPostDiscountsReq$Rule(
      description: json['description'] as String? ?? 'default',
      type: adminPostDiscountsReq$RuleTypeFromJson(json['type']),
      value: (json['value'] as num).toDouble(),
      allocation:
          adminPostDiscountsReq$RuleAllocationFromJson(json['allocation']),
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) => AdminPostDiscountsReq$Rule$Conditions$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AdminPostDiscountsReq$RuleToJson(
    AdminPostDiscountsReq$Rule instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('type', adminPostDiscountsReq$RuleTypeToJson(instance.type));
  val['value'] = instance.value;
  writeNotNull('allocation',
      adminPostDiscountsReq$RuleAllocationToJson(instance.allocation));
  writeNotNull(
      'conditions', instance.conditions?.map((e) => e.toJson()).toList());
  return val;
}

AdminPostDraftOrdersDraftOrderReq$Discounts$Item
    _$AdminPostDraftOrdersDraftOrderReq$Discounts$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostDraftOrdersDraftOrderReq$Discounts$Item(
          code: json['code'] as String? ?? 'default',
        );

Map<String, dynamic> _$AdminPostDraftOrdersDraftOrderReq$Discounts$ItemToJson(
        AdminPostDraftOrdersDraftOrderReq$Discounts$Item instance) =>
    <String, dynamic>{
      'code': instance.code,
    };

AdminPostDraftOrdersReq$Items$Item _$AdminPostDraftOrdersReq$Items$ItemFromJson(
        Map<String, dynamic> json) =>
    AdminPostDraftOrdersReq$Items$Item(
      variantId: json['variant_id'] as String? ?? 'default',
      unitPrice: json['unit_price'] as int? ?? 36,
      title: json['title'] as String? ?? 'default',
      quantity: json['quantity'] as int? ?? 36,
      metadata: json['metadata'],
    );

Map<String, dynamic> _$AdminPostDraftOrdersReq$Items$ItemToJson(
    AdminPostDraftOrdersReq$Items$Item instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('variant_id', instance.variantId);
  writeNotNull('unit_price', instance.unitPrice);
  writeNotNull('title', instance.title);
  val['quantity'] = instance.quantity;
  writeNotNull('metadata', instance.metadata);
  return val;
}

AdminPostDraftOrdersReq$Discounts$Item
    _$AdminPostDraftOrdersReq$Discounts$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostDraftOrdersReq$Discounts$Item(
          code: json['code'] as String? ?? 'default',
        );

Map<String, dynamic> _$AdminPostDraftOrdersReq$Discounts$ItemToJson(
        AdminPostDraftOrdersReq$Discounts$Item instance) =>
    <String, dynamic>{
      'code': instance.code,
    };

AdminPostDraftOrdersReq$ShippingMethods$Item
    _$AdminPostDraftOrdersReq$ShippingMethods$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostDraftOrdersReq$ShippingMethods$Item(
          optionId: json['option_id'] as String? ?? 'default',
          data: json['data'],
          price: json['price'] as int? ?? 36,
        );

Map<String, dynamic> _$AdminPostDraftOrdersReq$ShippingMethods$ItemToJson(
    AdminPostDraftOrdersReq$ShippingMethods$Item instance) {
  final val = <String, dynamic>{
    'option_id': instance.optionId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  writeNotNull('price', instance.price);
  return val;
}

AdminPostInvitesInviteAcceptReq$User
    _$AdminPostInvitesInviteAcceptReq$UserFromJson(Map<String, dynamic> json) =>
        AdminPostInvitesInviteAcceptReq$User(
          firstName: json['first_name'] as String? ?? 'default',
          lastName: json['last_name'] as String? ?? 'default',
          password: json['password'] as String? ?? 'default',
        );

Map<String, dynamic> _$AdminPostInvitesInviteAcceptReq$UserToJson(
        AdminPostInvitesInviteAcceptReq$User instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'password': instance.password,
    };

AdminPostOrdersOrderClaimsClaimReq$ClaimItems$Item
    _$AdminPostOrdersOrderClaimsClaimReq$ClaimItems$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostOrdersOrderClaimsClaimReq$ClaimItems$Item(
          id: json['id'] as String? ?? 'default',
          itemId: json['item_id'] as String? ?? 'default',
          quantity: json['quantity'] as int? ?? 36,
          note: json['note'] as String? ?? 'default',
          reason:
              adminPostOrdersOrderClaimsClaimReq$ClaimItems$ItemReasonNullableFromJson(
                  json['reason']),
          tags: (json['tags'] as List<dynamic>)
              .map((e) =>
                  AdminPostOrdersOrderClaimsClaimReq$ClaimItems$Item$Tags$Item
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          images: (json['images'] as List<dynamic>)
              .map((e) =>
                  AdminPostOrdersOrderClaimsClaimReq$ClaimItems$Item$Images$Item
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          metadata: json['metadata'],
        );

Map<String, dynamic> _$AdminPostOrdersOrderClaimsClaimReq$ClaimItems$ItemToJson(
    AdminPostOrdersOrderClaimsClaimReq$ClaimItems$Item instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('item_id', instance.itemId);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('note', instance.note);
  writeNotNull(
      'reason',
      adminPostOrdersOrderClaimsClaimReq$ClaimItems$ItemReasonNullableToJson(
          instance.reason));
  val['tags'] = instance.tags.map((e) => e.toJson()).toList();
  val['images'] = instance.images.map((e) => e.toJson()).toList();
  writeNotNull('metadata', instance.metadata);
  return val;
}

AdminPostOrdersOrderClaimsClaimReq$ShippingMethods$Item
    _$AdminPostOrdersOrderClaimsClaimReq$ShippingMethods$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostOrdersOrderClaimsClaimReq$ShippingMethods$Item(
          id: json['id'] as String? ?? 'default',
          optionId: json['option_id'] as String? ?? 'default',
          price: json['price'] as int? ?? 36,
          data: json['data'],
        );

Map<String, dynamic>
    _$AdminPostOrdersOrderClaimsClaimReq$ShippingMethods$ItemToJson(
        AdminPostOrdersOrderClaimsClaimReq$ShippingMethods$Item instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('option_id', instance.optionId);
  writeNotNull('price', instance.price);
  writeNotNull('data', instance.data);
  return val;
}

AdminPostOrdersOrderClaimsReq$ClaimItems$Item
    _$AdminPostOrdersOrderClaimsReq$ClaimItems$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostOrdersOrderClaimsReq$ClaimItems$Item(
          itemId: json['item_id'] as String? ?? 'default',
          quantity: json['quantity'] as int? ?? 36,
          note: json['note'] as String? ?? 'default',
          reason:
              adminPostOrdersOrderClaimsReq$ClaimItems$ItemReasonNullableFromJson(
                  json['reason']),
          tags: (json['tags'] as List<dynamic>?)
                  ?.map((e) => e as Object)
                  .toList() ??
              [],
          images: json['images'],
        );

Map<String, dynamic> _$AdminPostOrdersOrderClaimsReq$ClaimItems$ItemToJson(
    AdminPostOrdersOrderClaimsReq$ClaimItems$Item instance) {
  final val = <String, dynamic>{
    'item_id': instance.itemId,
    'quantity': instance.quantity,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('note', instance.note);
  writeNotNull(
      'reason',
      adminPostOrdersOrderClaimsReq$ClaimItems$ItemReasonNullableToJson(
          instance.reason));
  writeNotNull('tags', instance.tags);
  writeNotNull('images', instance.images);
  return val;
}

AdminPostOrdersOrderClaimsReq$ReturnShipping
    _$AdminPostOrdersOrderClaimsReq$ReturnShippingFromJson(
            Map<String, dynamic> json) =>
        AdminPostOrdersOrderClaimsReq$ReturnShipping(
          optionId: json['option_id'] as String? ?? 'default',
          price: json['price'] as int? ?? 36,
        );

Map<String, dynamic> _$AdminPostOrdersOrderClaimsReq$ReturnShippingToJson(
    AdminPostOrdersOrderClaimsReq$ReturnShipping instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('option_id', instance.optionId);
  writeNotNull('price', instance.price);
  return val;
}

AdminPostOrdersOrderClaimsReq$AdditionalItems$Item
    _$AdminPostOrdersOrderClaimsReq$AdditionalItems$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostOrdersOrderClaimsReq$AdditionalItems$Item(
          variantId: json['variant_id'] as String? ?? 'default',
          quantity: json['quantity'] as int? ?? 36,
        );

Map<String, dynamic> _$AdminPostOrdersOrderClaimsReq$AdditionalItems$ItemToJson(
        AdminPostOrdersOrderClaimsReq$AdditionalItems$Item instance) =>
    <String, dynamic>{
      'variant_id': instance.variantId,
      'quantity': instance.quantity,
    };

AdminPostOrdersOrderClaimsReq$ShippingMethods$Item
    _$AdminPostOrdersOrderClaimsReq$ShippingMethods$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostOrdersOrderClaimsReq$ShippingMethods$Item(
          id: json['id'] as String? ?? 'default',
          optionId: json['option_id'] as String? ?? 'default',
          price: json['price'] as int? ?? 36,
          data: json['data'],
        );

Map<String, dynamic> _$AdminPostOrdersOrderClaimsReq$ShippingMethods$ItemToJson(
    AdminPostOrdersOrderClaimsReq$ShippingMethods$Item instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('option_id', instance.optionId);
  writeNotNull('price', instance.price);
  writeNotNull('data', instance.data);
  return val;
}

AdminPostOrdersOrderFulfillmentsReq$Items$Item
    _$AdminPostOrdersOrderFulfillmentsReq$Items$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostOrdersOrderFulfillmentsReq$Items$Item(
          itemId: json['item_id'] as String? ?? 'default',
          quantity: json['quantity'] as int? ?? 36,
        );

Map<String, dynamic> _$AdminPostOrdersOrderFulfillmentsReq$Items$ItemToJson(
        AdminPostOrdersOrderFulfillmentsReq$Items$Item instance) =>
    <String, dynamic>{
      'item_id': instance.itemId,
      'quantity': instance.quantity,
    };

AdminPostOrdersOrderReq$PaymentMethod
    _$AdminPostOrdersOrderReq$PaymentMethodFromJson(
            Map<String, dynamic> json) =>
        AdminPostOrdersOrderReq$PaymentMethod(
          providerId: json['provider_id'] as String? ?? 'default',
          data: json['data'],
        );

Map<String, dynamic> _$AdminPostOrdersOrderReq$PaymentMethodToJson(
    AdminPostOrdersOrderReq$PaymentMethod instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('provider_id', instance.providerId);
  writeNotNull('data', instance.data);
  return val;
}

AdminPostOrdersOrderReq$ShippingMethod
    _$AdminPostOrdersOrderReq$ShippingMethodFromJson(
            Map<String, dynamic> json) =>
        AdminPostOrdersOrderReq$ShippingMethod(
          providerId: json['provider_id'] as String? ?? 'default',
          profileId: json['profile_id'] as String? ?? 'default',
          price: json['price'] as int? ?? 36,
          data: json['data'],
          items: (json['items'] as List<dynamic>?)
                  ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              [],
        );

Map<String, dynamic> _$AdminPostOrdersOrderReq$ShippingMethodToJson(
    AdminPostOrdersOrderReq$ShippingMethod instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('provider_id', instance.providerId);
  writeNotNull('profile_id', instance.profileId);
  writeNotNull('price', instance.price);
  writeNotNull('data', instance.data);
  writeNotNull('items', instance.items?.map((e) => e.toJson()).toList());
  return val;
}

AdminPostOrdersOrderReturnsReq$Items$Item
    _$AdminPostOrdersOrderReturnsReq$Items$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostOrdersOrderReturnsReq$Items$Item(
          itemId: json['item_id'] as String? ?? 'default',
          reasonId: json['reason_id'] as String? ?? 'default',
          note: json['note'] as String? ?? 'default',
          quantity: json['quantity'] as int? ?? 36,
        );

Map<String, dynamic> _$AdminPostOrdersOrderReturnsReq$Items$ItemToJson(
    AdminPostOrdersOrderReturnsReq$Items$Item instance) {
  final val = <String, dynamic>{
    'item_id': instance.itemId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('reason_id', instance.reasonId);
  writeNotNull('note', instance.note);
  val['quantity'] = instance.quantity;
  return val;
}

AdminPostOrdersOrderReturnsReq$ReturnShipping
    _$AdminPostOrdersOrderReturnsReq$ReturnShippingFromJson(
            Map<String, dynamic> json) =>
        AdminPostOrdersOrderReturnsReq$ReturnShipping(
          optionId: json['option_id'] as String? ?? 'default',
          price: json['price'] as int? ?? 36,
        );

Map<String, dynamic> _$AdminPostOrdersOrderReturnsReq$ReturnShippingToJson(
    AdminPostOrdersOrderReturnsReq$ReturnShipping instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('option_id', instance.optionId);
  writeNotNull('price', instance.price);
  return val;
}

AdminPostOrdersOrderSwapsReq$ReturnItems$Item
    _$AdminPostOrdersOrderSwapsReq$ReturnItems$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostOrdersOrderSwapsReq$ReturnItems$Item(
          itemId: json['item_id'] as String? ?? 'default',
          quantity: json['quantity'] as int? ?? 36,
          reasonId: json['reason_id'] as String? ?? 'default',
          note: json['note'] as String? ?? 'default',
        );

Map<String, dynamic> _$AdminPostOrdersOrderSwapsReq$ReturnItems$ItemToJson(
    AdminPostOrdersOrderSwapsReq$ReturnItems$Item instance) {
  final val = <String, dynamic>{
    'item_id': instance.itemId,
    'quantity': instance.quantity,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('reason_id', instance.reasonId);
  writeNotNull('note', instance.note);
  return val;
}

AdminPostOrdersOrderSwapsReq$ReturnShipping
    _$AdminPostOrdersOrderSwapsReq$ReturnShippingFromJson(
            Map<String, dynamic> json) =>
        AdminPostOrdersOrderSwapsReq$ReturnShipping(
          optionId: json['option_id'] as String? ?? 'default',
          price: json['price'] as int? ?? 36,
        );

Map<String, dynamic> _$AdminPostOrdersOrderSwapsReq$ReturnShippingToJson(
    AdminPostOrdersOrderSwapsReq$ReturnShipping instance) {
  final val = <String, dynamic>{
    'option_id': instance.optionId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('price', instance.price);
  return val;
}

AdminPostOrdersOrderSwapsReq$AdditionalItems$Item
    _$AdminPostOrdersOrderSwapsReq$AdditionalItems$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostOrdersOrderSwapsReq$AdditionalItems$Item(
          variantId: json['variant_id'] as String? ?? 'default',
          quantity: json['quantity'] as int? ?? 36,
        );

Map<String, dynamic> _$AdminPostOrdersOrderSwapsReq$AdditionalItems$ItemToJson(
        AdminPostOrdersOrderSwapsReq$AdditionalItems$Item instance) =>
    <String, dynamic>{
      'variant_id': instance.variantId,
      'quantity': instance.quantity,
    };

AdminPostOrdersOrderSwapsReq$CustomShippingOptions$Item
    _$AdminPostOrdersOrderSwapsReq$CustomShippingOptions$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostOrdersOrderSwapsReq$CustomShippingOptions$Item(
          optionId: json['option_id'] as String? ?? 'default',
          price: json['price'] as int? ?? 36,
        );

Map<String, dynamic>
    _$AdminPostOrdersOrderSwapsReq$CustomShippingOptions$ItemToJson(
            AdminPostOrdersOrderSwapsReq$CustomShippingOptions$Item instance) =>
        <String, dynamic>{
          'option_id': instance.optionId,
          'price': instance.price,
        };

AdminPostPriceListPricesPricesReq$Prices$Item
    _$AdminPostPriceListPricesPricesReq$Prices$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostPriceListPricesPricesReq$Prices$Item(
          id: json['id'] as String? ?? 'default',
          regionId: json['region_id'] as String? ?? 'default',
          currencyCode: json['currency_code'] as String? ?? 'default',
          variantId: json['variant_id'] as String? ?? 'default',
          amount: json['amount'] as int? ?? 36,
          minQuantity: json['min_quantity'] as int? ?? 36,
          maxQuantity: json['max_quantity'] as int? ?? 36,
        );

Map<String, dynamic> _$AdminPostPriceListPricesPricesReq$Prices$ItemToJson(
    AdminPostPriceListPricesPricesReq$Prices$Item instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('region_id', instance.regionId);
  writeNotNull('currency_code', instance.currencyCode);
  val['variant_id'] = instance.variantId;
  val['amount'] = instance.amount;
  writeNotNull('min_quantity', instance.minQuantity);
  writeNotNull('max_quantity', instance.maxQuantity);
  return val;
}

AdminPostPriceListsPriceListPriceListReq$Prices$Item
    _$AdminPostPriceListsPriceListPriceListReq$Prices$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostPriceListsPriceListPriceListReq$Prices$Item(
          id: json['id'] as String? ?? 'default',
          regionId: json['region_id'] as String? ?? 'default',
          currencyCode: json['currency_code'] as String? ?? 'default',
          variantId: json['variant_id'] as String? ?? 'default',
          amount: json['amount'] as int? ?? 36,
          minQuantity: json['min_quantity'] as int? ?? 36,
          maxQuantity: json['max_quantity'] as int? ?? 36,
        );

Map<String, dynamic>
    _$AdminPostPriceListsPriceListPriceListReq$Prices$ItemToJson(
        AdminPostPriceListsPriceListPriceListReq$Prices$Item instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('region_id', instance.regionId);
  writeNotNull('currency_code', instance.currencyCode);
  val['variant_id'] = instance.variantId;
  val['amount'] = instance.amount;
  writeNotNull('min_quantity', instance.minQuantity);
  writeNotNull('max_quantity', instance.maxQuantity);
  return val;
}

AdminPostPriceListsPriceListPriceListReq$CustomerGroups$Item
    _$AdminPostPriceListsPriceListPriceListReq$CustomerGroups$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostPriceListsPriceListPriceListReq$CustomerGroups$Item(
          id: json['id'] as String? ?? 'default',
        );

Map<String, dynamic>
    _$AdminPostPriceListsPriceListPriceListReq$CustomerGroups$ItemToJson(
            AdminPostPriceListsPriceListPriceListReq$CustomerGroups$Item
                instance) =>
        <String, dynamic>{
          'id': instance.id,
        };

AdminPostPriceListsPriceListReq$Prices$Item
    _$AdminPostPriceListsPriceListReq$Prices$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostPriceListsPriceListReq$Prices$Item(
          regionId: json['region_id'] as String? ?? 'default',
          currencyCode: json['currency_code'] as String? ?? 'default',
          amount: json['amount'] as int? ?? 36,
          variantId: json['variant_id'] as String? ?? 'default',
          minQuantity: json['min_quantity'] as int? ?? 36,
          maxQuantity: json['max_quantity'] as int? ?? 36,
        );

Map<String, dynamic> _$AdminPostPriceListsPriceListReq$Prices$ItemToJson(
    AdminPostPriceListsPriceListReq$Prices$Item instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('region_id', instance.regionId);
  writeNotNull('currency_code', instance.currencyCode);
  val['amount'] = instance.amount;
  val['variant_id'] = instance.variantId;
  writeNotNull('min_quantity', instance.minQuantity);
  writeNotNull('max_quantity', instance.maxQuantity);
  return val;
}

AdminPostPriceListsPriceListReq$CustomerGroups$Item
    _$AdminPostPriceListsPriceListReq$CustomerGroups$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostPriceListsPriceListReq$CustomerGroups$Item(
          id: json['id'] as String? ?? 'default',
        );

Map<String, dynamic>
    _$AdminPostPriceListsPriceListReq$CustomerGroups$ItemToJson(
            AdminPostPriceListsPriceListReq$CustomerGroups$Item instance) =>
        <String, dynamic>{
          'id': instance.id,
        };

AdminPostProductCategoriesCategoryProductsBatchReq$ProductIds$Item
    _$AdminPostProductCategoriesCategoryProductsBatchReq$ProductIds$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostProductCategoriesCategoryProductsBatchReq$ProductIds$Item(
          id: json['id'] as String? ?? 'default',
        );

Map<String, dynamic>
    _$AdminPostProductCategoriesCategoryProductsBatchReq$ProductIds$ItemToJson(
            AdminPostProductCategoriesCategoryProductsBatchReq$ProductIds$Item
                instance) =>
        <String, dynamic>{
          'id': instance.id,
        };

AdminPostProductsProductReq$Type$ _$AdminPostProductsProductReq$Type$FromJson(
        Map<String, dynamic> json) =>
    AdminPostProductsProductReq$Type$(
      id: json['id'] as String? ?? 'default',
      value: json['value'] as String? ?? 'default',
    );

Map<String, dynamic> _$AdminPostProductsProductReq$Type$ToJson(
    AdminPostProductsProductReq$Type$ instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['value'] = instance.value;
  return val;
}

AdminPostProductsProductReq$Tags$Item
    _$AdminPostProductsProductReq$Tags$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostProductsProductReq$Tags$Item(
          id: json['id'] as String? ?? 'default',
          value: json['value'] as String? ?? 'default',
        );

Map<String, dynamic> _$AdminPostProductsProductReq$Tags$ItemToJson(
    AdminPostProductsProductReq$Tags$Item instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['value'] = instance.value;
  return val;
}

AdminPostProductsProductReq$SalesChannels$Item
    _$AdminPostProductsProductReq$SalesChannels$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostProductsProductReq$SalesChannels$Item(
          id: json['id'] as String? ?? 'default',
        );

Map<String, dynamic> _$AdminPostProductsProductReq$SalesChannels$ItemToJson(
        AdminPostProductsProductReq$SalesChannels$Item instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

AdminPostProductsProductReq$Categories$Item
    _$AdminPostProductsProductReq$Categories$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostProductsProductReq$Categories$Item(
          id: json['id'] as String? ?? 'default',
        );

Map<String, dynamic> _$AdminPostProductsProductReq$Categories$ItemToJson(
        AdminPostProductsProductReq$Categories$Item instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

AdminPostProductsProductReq$Variants$Item
    _$AdminPostProductsProductReq$Variants$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostProductsProductReq$Variants$Item(
          id: json['id'] as String? ?? 'default',
          title: json['title'] as String? ?? 'default',
          sku: json['sku'] as String? ?? 'default',
          ean: json['ean'] as String? ?? 'default',
          upc: json['upc'] as String? ?? 'default',
          barcode: json['barcode'] as String? ?? 'default',
          hsCode: json['hs_code'] as String? ?? 'default',
          inventoryQuantity: json['inventory_quantity'] as int? ?? 36,
          allowBackorder: json['allow_backorder'] as bool?,
          manageInventory: json['manage_inventory'] as bool?,
          weight: (json['weight'] as num?)?.toDouble(),
          length: (json['length'] as num?)?.toDouble(),
          height: (json['height'] as num?)?.toDouble(),
          width: (json['width'] as num?)?.toDouble(),
          originCountry: json['origin_country'] as String? ?? 'default',
          midCode: json['mid_code'] as String? ?? 'default',
          material: json['material'] as String? ?? 'default',
          metadata: json['metadata'],
          prices: (json['prices'] as List<dynamic>?)
              ?.map((e) => AdminPostProductsProductReq$Variants$Item$Prices$Item
                  .fromJson(e as Map<String, dynamic>))
              .toList(),
          options: (json['options'] as List<dynamic>?)
              ?.map((e) =>
                  AdminPostProductsProductReq$Variants$Item$Options$Item
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$AdminPostProductsProductReq$Variants$ItemToJson(
    AdminPostProductsProductReq$Variants$Item instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('sku', instance.sku);
  writeNotNull('ean', instance.ean);
  writeNotNull('upc', instance.upc);
  writeNotNull('barcode', instance.barcode);
  writeNotNull('hs_code', instance.hsCode);
  writeNotNull('inventory_quantity', instance.inventoryQuantity);
  writeNotNull('allow_backorder', instance.allowBackorder);
  writeNotNull('manage_inventory', instance.manageInventory);
  writeNotNull('weight', instance.weight);
  writeNotNull('length', instance.length);
  writeNotNull('height', instance.height);
  writeNotNull('width', instance.width);
  writeNotNull('origin_country', instance.originCountry);
  writeNotNull('mid_code', instance.midCode);
  writeNotNull('material', instance.material);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('prices', instance.prices?.map((e) => e.toJson()).toList());
  writeNotNull('options', instance.options?.map((e) => e.toJson()).toList());
  return val;
}

AdminPostProductsProductVariantsReq$Prices$Item
    _$AdminPostProductsProductVariantsReq$Prices$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostProductsProductVariantsReq$Prices$Item(
          regionId: json['region_id'] as String? ?? 'default',
          currencyCode: json['currency_code'] as String? ?? 'default',
          amount: json['amount'] as int? ?? 36,
          minQuantity: json['min_quantity'] as int? ?? 36,
          maxQuantity: json['max_quantity'] as int? ?? 36,
        );

Map<String, dynamic> _$AdminPostProductsProductVariantsReq$Prices$ItemToJson(
    AdminPostProductsProductVariantsReq$Prices$Item instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('region_id', instance.regionId);
  writeNotNull('currency_code', instance.currencyCode);
  val['amount'] = instance.amount;
  writeNotNull('min_quantity', instance.minQuantity);
  writeNotNull('max_quantity', instance.maxQuantity);
  return val;
}

AdminPostProductsProductVariantsReq$Options$Item
    _$AdminPostProductsProductVariantsReq$Options$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostProductsProductVariantsReq$Options$Item(
          optionId: json['option_id'] as String? ?? 'default',
          value: json['value'] as String? ?? 'default',
        );

Map<String, dynamic> _$AdminPostProductsProductVariantsReq$Options$ItemToJson(
        AdminPostProductsProductVariantsReq$Options$Item instance) =>
    <String, dynamic>{
      'option_id': instance.optionId,
      'value': instance.value,
    };

AdminPostProductsProductVariantsVariantReq$Prices$Item
    _$AdminPostProductsProductVariantsVariantReq$Prices$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostProductsProductVariantsVariantReq$Prices$Item(
          id: json['id'] as String? ?? 'default',
          regionId: json['region_id'] as String? ?? 'default',
          currencyCode: json['currency_code'] as String? ?? 'default',
          amount: json['amount'] as int? ?? 36,
          minQuantity: json['min_quantity'] as int? ?? 36,
          maxQuantity: json['max_quantity'] as int? ?? 36,
        );

Map<String, dynamic>
    _$AdminPostProductsProductVariantsVariantReq$Prices$ItemToJson(
        AdminPostProductsProductVariantsVariantReq$Prices$Item instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('region_id', instance.regionId);
  writeNotNull('currency_code', instance.currencyCode);
  val['amount'] = instance.amount;
  writeNotNull('min_quantity', instance.minQuantity);
  writeNotNull('max_quantity', instance.maxQuantity);
  return val;
}

AdminPostProductsProductVariantsVariantReq$Options$Item
    _$AdminPostProductsProductVariantsVariantReq$Options$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostProductsProductVariantsVariantReq$Options$Item(
          optionId: json['option_id'] as String? ?? 'default',
          value: json['value'] as String? ?? 'default',
        );

Map<String, dynamic>
    _$AdminPostProductsProductVariantsVariantReq$Options$ItemToJson(
            AdminPostProductsProductVariantsVariantReq$Options$Item instance) =>
        <String, dynamic>{
          'option_id': instance.optionId,
          'value': instance.value,
        };

AdminPostProductsReq$Type$ _$AdminPostProductsReq$Type$FromJson(
        Map<String, dynamic> json) =>
    AdminPostProductsReq$Type$(
      id: json['id'] as String? ?? 'default',
      value: json['value'] as String? ?? 'default',
    );

Map<String, dynamic> _$AdminPostProductsReq$Type$ToJson(
    AdminPostProductsReq$Type$ instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['value'] = instance.value;
  return val;
}

AdminPostProductsReq$Tags$Item _$AdminPostProductsReq$Tags$ItemFromJson(
        Map<String, dynamic> json) =>
    AdminPostProductsReq$Tags$Item(
      id: json['id'] as String? ?? 'default',
      value: json['value'] as String? ?? 'default',
    );

Map<String, dynamic> _$AdminPostProductsReq$Tags$ItemToJson(
    AdminPostProductsReq$Tags$Item instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['value'] = instance.value;
  return val;
}

AdminPostProductsReq$SalesChannels$Item
    _$AdminPostProductsReq$SalesChannels$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostProductsReq$SalesChannels$Item(
          id: json['id'] as String? ?? 'default',
        );

Map<String, dynamic> _$AdminPostProductsReq$SalesChannels$ItemToJson(
        AdminPostProductsReq$SalesChannels$Item instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

AdminPostProductsReq$Categories$Item
    _$AdminPostProductsReq$Categories$ItemFromJson(Map<String, dynamic> json) =>
        AdminPostProductsReq$Categories$Item(
          id: json['id'] as String? ?? 'default',
        );

Map<String, dynamic> _$AdminPostProductsReq$Categories$ItemToJson(
        AdminPostProductsReq$Categories$Item instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

AdminPostProductsReq$Options$Item _$AdminPostProductsReq$Options$ItemFromJson(
        Map<String, dynamic> json) =>
    AdminPostProductsReq$Options$Item(
      title: json['title'] as String? ?? 'default',
    );

Map<String, dynamic> _$AdminPostProductsReq$Options$ItemToJson(
        AdminPostProductsReq$Options$Item instance) =>
    <String, dynamic>{
      'title': instance.title,
    };

AdminPostProductsReq$Variants$Item _$AdminPostProductsReq$Variants$ItemFromJson(
        Map<String, dynamic> json) =>
    AdminPostProductsReq$Variants$Item(
      title: json['title'] as String? ?? 'default',
      sku: json['sku'] as String? ?? 'default',
      ean: json['ean'] as String? ?? 'default',
      upc: json['upc'] as String? ?? 'default',
      barcode: json['barcode'] as String? ?? 'default',
      hsCode: json['hs_code'] as String? ?? 'default',
      inventoryQuantity: json['inventory_quantity'] as int? ?? 36,
      allowBackorder: json['allow_backorder'] as bool?,
      manageInventory: json['manage_inventory'] as bool?,
      weight: (json['weight'] as num?)?.toDouble(),
      length: (json['length'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      width: (json['width'] as num?)?.toDouble(),
      originCountry: json['origin_country'] as String? ?? 'default',
      midCode: json['mid_code'] as String? ?? 'default',
      material: json['material'] as String? ?? 'default',
      metadata: json['metadata'],
      prices: (json['prices'] as List<dynamic>?)
          ?.map((e) => AdminPostProductsReq$Variants$Item$Prices$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => AdminPostProductsReq$Variants$Item$Options$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AdminPostProductsReq$Variants$ItemToJson(
    AdminPostProductsReq$Variants$Item instance) {
  final val = <String, dynamic>{
    'title': instance.title,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sku', instance.sku);
  writeNotNull('ean', instance.ean);
  writeNotNull('upc', instance.upc);
  writeNotNull('barcode', instance.barcode);
  writeNotNull('hs_code', instance.hsCode);
  writeNotNull('inventory_quantity', instance.inventoryQuantity);
  writeNotNull('allow_backorder', instance.allowBackorder);
  writeNotNull('manage_inventory', instance.manageInventory);
  writeNotNull('weight', instance.weight);
  writeNotNull('length', instance.length);
  writeNotNull('height', instance.height);
  writeNotNull('width', instance.width);
  writeNotNull('origin_country', instance.originCountry);
  writeNotNull('mid_code', instance.midCode);
  writeNotNull('material', instance.material);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('prices', instance.prices?.map((e) => e.toJson()).toList());
  writeNotNull('options', instance.options?.map((e) => e.toJson()).toList());
  return val;
}

AdminPostPublishableApiKeySalesChannelsBatchReq$SalesChannelIds$Item
    _$AdminPostPublishableApiKeySalesChannelsBatchReq$SalesChannelIds$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostPublishableApiKeySalesChannelsBatchReq$SalesChannelIds$Item(
          id: json['id'] as String? ?? 'default',
        );

Map<String, dynamic>
    _$AdminPostPublishableApiKeySalesChannelsBatchReq$SalesChannelIds$ItemToJson(
            AdminPostPublishableApiKeySalesChannelsBatchReq$SalesChannelIds$Item
                instance) =>
        <String, dynamic>{
          'id': instance.id,
        };

AdminPostReturnsReturnReceiveReq$Items$Item
    _$AdminPostReturnsReturnReceiveReq$Items$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostReturnsReturnReceiveReq$Items$Item(
          itemId: json['item_id'] as String? ?? 'default',
          quantity: json['quantity'] as int? ?? 36,
        );

Map<String, dynamic> _$AdminPostReturnsReturnReceiveReq$Items$ItemToJson(
        AdminPostReturnsReturnReceiveReq$Items$Item instance) =>
    <String, dynamic>{
      'item_id': instance.itemId,
      'quantity': instance.quantity,
    };

AdminPostSalesChannelsChannelProductsBatchReq$ProductIds$Item
    _$AdminPostSalesChannelsChannelProductsBatchReq$ProductIds$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostSalesChannelsChannelProductsBatchReq$ProductIds$Item(
          id: json['id'] as String? ?? 'default',
        );

Map<String, dynamic>
    _$AdminPostSalesChannelsChannelProductsBatchReq$ProductIds$ItemToJson(
            AdminPostSalesChannelsChannelProductsBatchReq$ProductIds$Item
                instance) =>
        <String, dynamic>{
          'id': instance.id,
        };

AdminPostShippingOptionsOptionReq$Requirements$Item
    _$AdminPostShippingOptionsOptionReq$Requirements$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostShippingOptionsOptionReq$Requirements$Item(
          id: json['id'] as String? ?? 'default',
          type: adminPostShippingOptionsOptionReq$Requirements$ItemTypeFromJson(
              json['type']),
          amount: json['amount'] as int? ?? 36,
        );

Map<String, dynamic>
    _$AdminPostShippingOptionsOptionReq$Requirements$ItemToJson(
        AdminPostShippingOptionsOptionReq$Requirements$Item instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'type',
      adminPostShippingOptionsOptionReq$Requirements$ItemTypeToJson(
          instance.type));
  val['amount'] = instance.amount;
  return val;
}

AdminPostShippingOptionsReq$Requirements$Item
    _$AdminPostShippingOptionsReq$Requirements$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostShippingOptionsReq$Requirements$Item(
          type: adminPostShippingOptionsReq$Requirements$ItemTypeFromJson(
              json['type']),
          amount: json['amount'] as int? ?? 36,
        );

Map<String, dynamic> _$AdminPostShippingOptionsReq$Requirements$ItemToJson(
    AdminPostShippingOptionsReq$Requirements$Item instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type',
      adminPostShippingOptionsReq$Requirements$ItemTypeToJson(instance.type));
  val['amount'] = instance.amount;
  return val;
}

AdminProductsListTagsRes$Tags$Item _$AdminProductsListTagsRes$Tags$ItemFromJson(
        Map<String, dynamic> json) =>
    AdminProductsListTagsRes$Tags$Item(
      id: json['id'] as String? ?? 'default',
      usageCount: json['usage_count'] as String? ?? 'default',
      value: json['value'] as String? ?? 'default',
    );

Map<String, dynamic> _$AdminProductsListTagsRes$Tags$ItemToJson(
        AdminProductsListTagsRes$Tags$Item instance) =>
    <String, dynamic>{
      'id': instance.id,
      'usage_count': instance.usageCount,
      'value': instance.value,
    };

AdminUploadsRes$Uploads$Item _$AdminUploadsRes$Uploads$ItemFromJson(
        Map<String, dynamic> json) =>
    AdminUploadsRes$Uploads$Item(
      url: json['url'] as String? ?? 'default',
      key: json['key'] as String? ?? 'default',
    );

Map<String, dynamic> _$AdminUploadsRes$Uploads$ItemToJson(
        AdminUploadsRes$Uploads$Item instance) =>
    <String, dynamic>{
      'url': instance.url,
      'key': instance.key,
    };

PricedShippingOption$TaxRates$Item _$PricedShippingOption$TaxRates$ItemFromJson(
        Map<String, dynamic> json) =>
    PricedShippingOption$TaxRates$Item(
      rate: (json['rate'] as num?)?.toDouble(),
      name: json['name'] as String? ?? 'default',
      code: json['code'] as String? ?? 'default',
    );

Map<String, dynamic> _$PricedShippingOption$TaxRates$ItemToJson(
    PricedShippingOption$TaxRates$Item instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('rate', instance.rate);
  writeNotNull('name', instance.name);
  writeNotNull('code', instance.code);
  return val;
}

PricedVariant$TaxRates$Item _$PricedVariant$TaxRates$ItemFromJson(
        Map<String, dynamic> json) =>
    PricedVariant$TaxRates$Item(
      rate: (json['rate'] as num?)?.toDouble(),
      name: json['name'] as String? ?? 'default',
      code: json['code'] as String? ?? 'default',
    );

Map<String, dynamic> _$PricedVariant$TaxRates$ItemToJson(
    PricedVariant$TaxRates$Item instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('rate', instance.rate);
  writeNotNull('name', instance.name);
  writeNotNull('code', instance.code);
  return val;
}

VariantInventory$SalesChannelAvailability$Item
    _$VariantInventory$SalesChannelAvailability$ItemFromJson(
            Map<String, dynamic> json) =>
        VariantInventory$SalesChannelAvailability$Item(
          channelName: json['channel_name'] as String? ?? 'default',
          channelId: json['channel_id'] as String? ?? 'default',
          availableQuantity: (json['available_quantity'] as num).toDouble(),
        );

Map<String, dynamic> _$VariantInventory$SalesChannelAvailability$ItemToJson(
        VariantInventory$SalesChannelAvailability$Item instance) =>
    <String, dynamic>{
      'channel_name': instance.channelName,
      'channel_id': instance.channelId,
      'available_quantity': instance.availableQuantity,
    };

StoreCustomersListPaymentMethodsRes$PaymentMethods$Item
    _$StoreCustomersListPaymentMethodsRes$PaymentMethods$ItemFromJson(
            Map<String, dynamic> json) =>
        StoreCustomersListPaymentMethodsRes$PaymentMethods$Item(
          providerId: json['provider_id'] as String? ?? 'default',
          data: json['data'] as Object,
        );

Map<String, dynamic>
    _$StoreCustomersListPaymentMethodsRes$PaymentMethods$ItemToJson(
            StoreCustomersListPaymentMethodsRes$PaymentMethods$Item instance) =>
        <String, dynamic>{
          'provider_id': instance.providerId,
          'data': instance.data,
        };

StorePostCartReq$Items$Item _$StorePostCartReq$Items$ItemFromJson(
        Map<String, dynamic> json) =>
    StorePostCartReq$Items$Item(
      variantId: json['variant_id'] as String? ?? 'default',
      quantity: json['quantity'] as int? ?? 36,
    );

Map<String, dynamic> _$StorePostCartReq$Items$ItemToJson(
        StorePostCartReq$Items$Item instance) =>
    <String, dynamic>{
      'variant_id': instance.variantId,
      'quantity': instance.quantity,
    };

StorePostCartsCartReq$GiftCards$Item
    _$StorePostCartsCartReq$GiftCards$ItemFromJson(Map<String, dynamic> json) =>
        StorePostCartsCartReq$GiftCards$Item(
          code: json['code'] as String? ?? 'default',
        );

Map<String, dynamic> _$StorePostCartsCartReq$GiftCards$ItemToJson(
        StorePostCartsCartReq$GiftCards$Item instance) =>
    <String, dynamic>{
      'code': instance.code,
    };

StorePostCartsCartReq$Discounts$Item
    _$StorePostCartsCartReq$Discounts$ItemFromJson(Map<String, dynamic> json) =>
        StorePostCartsCartReq$Discounts$Item(
          code: json['code'] as String? ?? 'default',
        );

Map<String, dynamic> _$StorePostCartsCartReq$Discounts$ItemToJson(
        StorePostCartsCartReq$Discounts$Item instance) =>
    <String, dynamic>{
      'code': instance.code,
    };

StorePostPaymentCollectionsBatchSessionsReq$Sessions$Item
    _$StorePostPaymentCollectionsBatchSessionsReq$Sessions$ItemFromJson(
            Map<String, dynamic> json) =>
        StorePostPaymentCollectionsBatchSessionsReq$Sessions$Item(
          providerId: json['provider_id'] as String? ?? 'default',
          amount: json['amount'] as int? ?? 36,
          sessionId: json['session_id'] as String? ?? 'default',
        );

Map<String, dynamic>
    _$StorePostPaymentCollectionsBatchSessionsReq$Sessions$ItemToJson(
        StorePostPaymentCollectionsBatchSessionsReq$Sessions$Item instance) {
  final val = <String, dynamic>{
    'provider_id': instance.providerId,
    'amount': instance.amount,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('session_id', instance.sessionId);
  return val;
}

StorePostReturnsReq$Items$Item _$StorePostReturnsReq$Items$ItemFromJson(
        Map<String, dynamic> json) =>
    StorePostReturnsReq$Items$Item(
      itemId: json['item_id'] as String? ?? 'default',
      quantity: json['quantity'] as int? ?? 36,
      reasonId: json['reason_id'] as String? ?? 'default',
      note: json['note'] as String? ?? 'default',
    );

Map<String, dynamic> _$StorePostReturnsReq$Items$ItemToJson(
    StorePostReturnsReq$Items$Item instance) {
  final val = <String, dynamic>{
    'item_id': instance.itemId,
    'quantity': instance.quantity,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('reason_id', instance.reasonId);
  writeNotNull('note', instance.note);
  return val;
}

StorePostReturnsReq$ReturnShipping _$StorePostReturnsReq$ReturnShippingFromJson(
        Map<String, dynamic> json) =>
    StorePostReturnsReq$ReturnShipping(
      optionId: json['option_id'] as String? ?? 'default',
    );

Map<String, dynamic> _$StorePostReturnsReq$ReturnShippingToJson(
        StorePostReturnsReq$ReturnShipping instance) =>
    <String, dynamic>{
      'option_id': instance.optionId,
    };

StorePostSwapsReq$ReturnItems$Item _$StorePostSwapsReq$ReturnItems$ItemFromJson(
        Map<String, dynamic> json) =>
    StorePostSwapsReq$ReturnItems$Item(
      itemId: json['item_id'] as String? ?? 'default',
      quantity: json['quantity'] as int? ?? 36,
      reasonId: json['reason_id'] as String? ?? 'default',
      note: json['note'] as String? ?? 'default',
    );

Map<String, dynamic> _$StorePostSwapsReq$ReturnItems$ItemToJson(
    StorePostSwapsReq$ReturnItems$Item instance) {
  final val = <String, dynamic>{
    'item_id': instance.itemId,
    'quantity': instance.quantity,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('reason_id', instance.reasonId);
  writeNotNull('note', instance.note);
  return val;
}

StorePostSwapsReq$AdditionalItems$Item
    _$StorePostSwapsReq$AdditionalItems$ItemFromJson(
            Map<String, dynamic> json) =>
        StorePostSwapsReq$AdditionalItems$Item(
          variantId: json['variant_id'] as String? ?? 'default',
          quantity: json['quantity'] as int? ?? 36,
        );

Map<String, dynamic> _$StorePostSwapsReq$AdditionalItems$ItemToJson(
        StorePostSwapsReq$AdditionalItems$Item instance) =>
    <String, dynamic>{
      'variant_id': instance.variantId,
      'quantity': instance.quantity,
    };

AdminPostDiscountsDiscountReq$Rule$Conditions$Item
    _$AdminPostDiscountsDiscountReq$Rule$Conditions$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostDiscountsDiscountReq$Rule$Conditions$Item(
          id: json['id'] as String? ?? 'default',
          $operator:
              adminPostDiscountsDiscountReq$Rule$Conditions$ItemOperatorFromJson(
                  json['operator']),
          products: (json['products'] as List<dynamic>?)
                  ?.map((e) => e as Object)
                  .toList() ??
              [],
          productTypes: (json['product_types'] as List<dynamic>?)
                  ?.map((e) => e as Object)
                  .toList() ??
              [],
          productCollections: (json['product_collections'] as List<dynamic>?)
                  ?.map((e) => e as Object)
                  .toList() ??
              [],
          productTags: (json['product_tags'] as List<dynamic>?)
                  ?.map((e) => e as Object)
                  .toList() ??
              [],
          customerGroups: (json['customer_groups'] as List<dynamic>?)
                  ?.map((e) => e as Object)
                  .toList() ??
              [],
        );

Map<String, dynamic> _$AdminPostDiscountsDiscountReq$Rule$Conditions$ItemToJson(
    AdminPostDiscountsDiscountReq$Rule$Conditions$Item instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'operator',
      adminPostDiscountsDiscountReq$Rule$Conditions$ItemOperatorToJson(
          instance.$operator));
  writeNotNull('products', instance.products);
  writeNotNull('product_types', instance.productTypes);
  writeNotNull('product_collections', instance.productCollections);
  writeNotNull('product_tags', instance.productTags);
  writeNotNull('customer_groups', instance.customerGroups);
  return val;
}

AdminPostDiscountsReq$Rule$Conditions$Item
    _$AdminPostDiscountsReq$Rule$Conditions$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostDiscountsReq$Rule$Conditions$Item(
          $operator: adminPostDiscountsReq$Rule$Conditions$ItemOperatorFromJson(
              json['operator']),
          products: (json['products'] as List<dynamic>?)
                  ?.map((e) => e as Object)
                  .toList() ??
              [],
          productTypes: (json['product_types'] as List<dynamic>?)
                  ?.map((e) => e as Object)
                  .toList() ??
              [],
          productCollections: (json['product_collections'] as List<dynamic>?)
                  ?.map((e) => e as Object)
                  .toList() ??
              [],
          productTags: (json['product_tags'] as List<dynamic>?)
                  ?.map((e) => e as Object)
                  .toList() ??
              [],
          customerGroups: (json['customer_groups'] as List<dynamic>?)
                  ?.map((e) => e as Object)
                  .toList() ??
              [],
        );

Map<String, dynamic> _$AdminPostDiscountsReq$Rule$Conditions$ItemToJson(
    AdminPostDiscountsReq$Rule$Conditions$Item instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'operator',
      adminPostDiscountsReq$Rule$Conditions$ItemOperatorToJson(
          instance.$operator));
  writeNotNull('products', instance.products);
  writeNotNull('product_types', instance.productTypes);
  writeNotNull('product_collections', instance.productCollections);
  writeNotNull('product_tags', instance.productTags);
  writeNotNull('customer_groups', instance.customerGroups);
  return val;
}

AdminPostOrdersOrderClaimsClaimReq$ClaimItems$Item$Tags$Item
    _$AdminPostOrdersOrderClaimsClaimReq$ClaimItems$Item$Tags$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostOrdersOrderClaimsClaimReq$ClaimItems$Item$Tags$Item(
          id: json['id'] as String? ?? 'default',
          value: json['value'] as String? ?? 'default',
        );

Map<String, dynamic>
    _$AdminPostOrdersOrderClaimsClaimReq$ClaimItems$Item$Tags$ItemToJson(
        AdminPostOrdersOrderClaimsClaimReq$ClaimItems$Item$Tags$Item instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('value', instance.value);
  return val;
}

AdminPostOrdersOrderClaimsClaimReq$ClaimItems$Item$Images$Item
    _$AdminPostOrdersOrderClaimsClaimReq$ClaimItems$Item$Images$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostOrdersOrderClaimsClaimReq$ClaimItems$Item$Images$Item(
          id: json['id'] as String? ?? 'default',
          url: json['url'] as String? ?? 'default',
        );

Map<String, dynamic>
    _$AdminPostOrdersOrderClaimsClaimReq$ClaimItems$Item$Images$ItemToJson(
        AdminPostOrdersOrderClaimsClaimReq$ClaimItems$Item$Images$Item
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('url', instance.url);
  return val;
}

AdminPostProductsProductReq$Variants$Item$Prices$Item
    _$AdminPostProductsProductReq$Variants$Item$Prices$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostProductsProductReq$Variants$Item$Prices$Item(
          id: json['id'] as String? ?? 'default',
          regionId: json['region_id'] as String? ?? 'default',
          currencyCode: json['currency_code'] as String? ?? 'default',
          amount: json['amount'] as int? ?? 36,
          minQuantity: json['min_quantity'] as int? ?? 36,
          maxQuantity: json['max_quantity'] as int? ?? 36,
        );

Map<String, dynamic>
    _$AdminPostProductsProductReq$Variants$Item$Prices$ItemToJson(
        AdminPostProductsProductReq$Variants$Item$Prices$Item instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('region_id', instance.regionId);
  writeNotNull('currency_code', instance.currencyCode);
  val['amount'] = instance.amount;
  writeNotNull('min_quantity', instance.minQuantity);
  writeNotNull('max_quantity', instance.maxQuantity);
  return val;
}

AdminPostProductsProductReq$Variants$Item$Options$Item
    _$AdminPostProductsProductReq$Variants$Item$Options$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostProductsProductReq$Variants$Item$Options$Item(
          optionId: json['option_id'] as String? ?? 'default',
          value: json['value'] as String? ?? 'default',
        );

Map<String, dynamic>
    _$AdminPostProductsProductReq$Variants$Item$Options$ItemToJson(
            AdminPostProductsProductReq$Variants$Item$Options$Item instance) =>
        <String, dynamic>{
          'option_id': instance.optionId,
          'value': instance.value,
        };

AdminPostProductsReq$Variants$Item$Prices$Item
    _$AdminPostProductsReq$Variants$Item$Prices$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostProductsReq$Variants$Item$Prices$Item(
          regionId: json['region_id'] as String? ?? 'default',
          currencyCode: json['currency_code'] as String? ?? 'default',
          amount: json['amount'] as int? ?? 36,
          minQuantity: json['min_quantity'] as int? ?? 36,
          maxQuantity: json['max_quantity'] as int? ?? 36,
        );

Map<String, dynamic> _$AdminPostProductsReq$Variants$Item$Prices$ItemToJson(
    AdminPostProductsReq$Variants$Item$Prices$Item instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('region_id', instance.regionId);
  writeNotNull('currency_code', instance.currencyCode);
  val['amount'] = instance.amount;
  writeNotNull('min_quantity', instance.minQuantity);
  writeNotNull('max_quantity', instance.maxQuantity);
  return val;
}

AdminPostProductsReq$Variants$Item$Options$Item
    _$AdminPostProductsReq$Variants$Item$Options$ItemFromJson(
            Map<String, dynamic> json) =>
        AdminPostProductsReq$Variants$Item$Options$Item(
          value: json['value'] as String? ?? 'default',
        );

Map<String, dynamic> _$AdminPostProductsReq$Variants$Item$Options$ItemToJson(
        AdminPostProductsReq$Variants$Item$Options$Item instance) =>
    <String, dynamic>{
      'value': instance.value,
    };
