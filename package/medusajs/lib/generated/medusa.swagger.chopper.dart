//Generated code

part of 'medusa.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: type=lint
final class _$Medusa extends Medusa {
  _$Medusa([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = Medusa;

  @override
  Future<Response<AdminAppsListRes>> _adminAppsGet() {
    final Uri $url = Uri.parse('/admin/apps');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<AdminAppsListRes, AdminAppsListRes>($request);
  }

  @override
  Future<Response<AdminAppsRes>> _adminAppsAuthorizationsPost(
      {required AdminPostAppsReq? body}) {
    final Uri $url = Uri.parse('/admin/apps/authorizations');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminAppsRes, AdminAppsRes>($request);
  }

  @override
  Future<Response<AdminAuthRes>> _adminAuthGet() {
    final Uri $url = Uri.parse('/admin/auth');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<AdminAuthRes, AdminAuthRes>($request);
  }

  @override
  Future<Response<AdminAuthRes>> _adminAuthPost(
      {required AdminPostAuthReq? body}) {
    final Uri $url = Uri.parse('/admin/auth');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminAuthRes, AdminAuthRes>($request);
  }

  @override
  Future<Response<dynamic>> _adminAuthDelete() {
    final Uri $url = Uri.parse('/admin/auth');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<AdminBearerAuthRes>> _adminAuthTokenPost(
      {required AdminPostAuthReq? body}) {
    final Uri $url = Uri.parse('/admin/auth/token');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminBearerAuthRes, AdminBearerAuthRes>($request);
  }

  @override
  Future<Response<AdminBatchJobListRes>> _adminBatchJobsGet({
    int? limit,
    int? offset,
    Object? id,
    List<String>? type,
    Object? confirmedAt,
    Object? preProcessedAt,
    Object? completedAt,
    Object? failedAt,
    Object? canceledAt,
    String? order,
    String? expand,
    String? fields,
    Object? createdAt,
    Object? updatedAt,
  }) {
    final Uri $url = Uri.parse('/admin/batch-jobs');
    final Map<String, dynamic> $params = <String, dynamic>{
      'limit': limit,
      'offset': offset,
      'id': id,
      'type': type,
      'confirmed_at': confirmedAt,
      'pre_processed_at': preProcessedAt,
      'completed_at': completedAt,
      'failed_at': failedAt,
      'canceled_at': canceledAt,
      'order': order,
      'expand': expand,
      'fields': fields,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminBatchJobListRes, AdminBatchJobListRes>($request);
  }

  @override
  Future<Response<AdminBatchJobRes>> _adminBatchJobsPost(
      {required AdminPostBatchesReq? body}) {
    final Uri $url = Uri.parse('/admin/batch-jobs');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminBatchJobRes, AdminBatchJobRes>($request);
  }

  @override
  Future<Response<AdminBatchJobRes>> _adminBatchJobsIdGet(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/batch-jobs/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<AdminBatchJobRes, AdminBatchJobRes>($request);
  }

  @override
  Future<Response<AdminBatchJobRes>> _adminBatchJobsIdCancelPost(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/batch-jobs/${id}/cancel');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<AdminBatchJobRes, AdminBatchJobRes>($request);
  }

  @override
  Future<Response<AdminBatchJobRes>> _adminBatchJobsIdConfirmPost(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/batch-jobs/${id}/confirm');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<AdminBatchJobRes, AdminBatchJobRes>($request);
  }

  @override
  Future<Response<AdminCollectionsListRes>> _adminCollectionsGet({
    int? limit,
    int? offset,
    String? title,
    String? handle,
    String? q,
    String? discountConditionId,
    Object? createdAt,
    Object? updatedAt,
    Object? deletedAt,
  }) {
    final Uri $url = Uri.parse('/admin/collections');
    final Map<String, dynamic> $params = <String, dynamic>{
      'limit': limit,
      'offset': offset,
      'title': title,
      'handle': handle,
      'q': q,
      'discount_condition_id': discountConditionId,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'deleted_at': deletedAt,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<AdminCollectionsListRes, AdminCollectionsListRes>($request);
  }

  @override
  Future<Response<AdminCollectionsRes>> _adminCollectionsPost(
      {required AdminPostCollectionsReq? body}) {
    final Uri $url = Uri.parse('/admin/collections');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminCollectionsRes, AdminCollectionsRes>($request);
  }

  @override
  Future<Response<AdminCollectionsRes>> _adminCollectionsIdGet(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/collections/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<AdminCollectionsRes, AdminCollectionsRes>($request);
  }

  @override
  Future<Response<AdminCollectionsRes>> _adminCollectionsIdPost({
    required String? id,
    required AdminPostCollectionsCollectionReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/collections/${id}');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminCollectionsRes, AdminCollectionsRes>($request);
  }

  @override
  Future<Response<AdminCollectionsDeleteRes>> _adminCollectionsIdDelete(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/collections/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client
        .send<AdminCollectionsDeleteRes, AdminCollectionsDeleteRes>($request);
  }

  @override
  Future<Response<AdminCollectionsRes>> _adminCollectionsIdProductsBatchPost({
    required String? id,
    required AdminPostProductsToCollectionReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/collections/${id}/products/batch');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminCollectionsRes, AdminCollectionsRes>($request);
  }

  @override
  Future<Response<AdminDeleteProductsFromCollectionRes>>
      _adminCollectionsIdProductsBatchDelete({
    required String? id,
    required AdminDeleteProductsFromCollectionReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/collections/${id}/products/batch');
    final $body = body;
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminDeleteProductsFromCollectionRes,
        AdminDeleteProductsFromCollectionRes>($request);
  }

  @override
  Future<Response<AdminCurrenciesListRes>> _adminCurrenciesGet({
    String? code,
    bool? includesTax,
    String? order,
    num? offset,
    num? limit,
  }) {
    final Uri $url = Uri.parse('/admin/currencies');
    final Map<String, dynamic> $params = <String, dynamic>{
      'code': code,
      'includes_tax': includesTax,
      'order': order,
      'offset': offset,
      'limit': limit,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<AdminCurrenciesListRes, AdminCurrenciesListRes>($request);
  }

  @override
  Future<Response<AdminCurrenciesRes>> _adminCurrenciesCodePost({
    required String? code,
    required AdminPostCurrenciesCurrencyReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/currencies/${code}');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminCurrenciesRes, AdminCurrenciesRes>($request);
  }

  @override
  Future<Response<AdminCustomerGroupsListRes>> _adminCustomerGroupsGet({
    String? q,
    int? offset,
    String? order,
    String? discountConditionId,
    Object? id,
    List<String>? name,
    Object? createdAt,
    Object? updatedAt,
    int? limit,
    String? expand,
  }) {
    final Uri $url = Uri.parse('/admin/customer-groups');
    final Map<String, dynamic> $params = <String, dynamic>{
      'q': q,
      'offset': offset,
      'order': order,
      'discount_condition_id': discountConditionId,
      'id': id,
      'name': name,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'limit': limit,
      'expand': expand,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<AdminCustomerGroupsListRes, AdminCustomerGroupsListRes>($request);
  }

  @override
  Future<Response<AdminCustomerGroupsRes>> _adminCustomerGroupsPost(
      {required AdminPostCustomerGroupsReq? body}) {
    final Uri $url = Uri.parse('/admin/customer-groups');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<AdminCustomerGroupsRes, AdminCustomerGroupsRes>($request);
  }

  @override
  Future<Response<AdminCustomerGroupsRes>> _adminCustomerGroupsIdGet({
    required String? id,
    String? expand,
    String? fields,
  }) {
    final Uri $url = Uri.parse('/admin/customer-groups/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<AdminCustomerGroupsRes, AdminCustomerGroupsRes>($request);
  }

  @override
  Future<Response<AdminCustomerGroupsRes>> _adminCustomerGroupsIdPost({
    required String? id,
    required AdminPostCustomerGroupsGroupReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/customer-groups/${id}');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<AdminCustomerGroupsRes, AdminCustomerGroupsRes>($request);
  }

  @override
  Future<Response<AdminCustomerGroupsDeleteRes>> _adminCustomerGroupsIdDelete(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/customer-groups/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<AdminCustomerGroupsDeleteRes,
        AdminCustomerGroupsDeleteRes>($request);
  }

  @override
  Future<Response<AdminCustomersListRes>> _adminCustomerGroupsIdCustomersGet({
    required String? id,
    int? limit,
    int? offset,
    String? expand,
    String? q,
  }) {
    final Uri $url = Uri.parse('/admin/customer-groups/${id}/customers');
    final Map<String, dynamic> $params = <String, dynamic>{
      'limit': limit,
      'offset': offset,
      'expand': expand,
      'q': q,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminCustomersListRes, AdminCustomersListRes>($request);
  }

  @override
  Future<Response<AdminCustomerGroupsRes>>
      _adminCustomerGroupsIdCustomersBatchPost({
    required String? id,
    required AdminPostCustomerGroupsGroupCustomersBatchReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/customer-groups/${id}/customers/batch');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<AdminCustomerGroupsRes, AdminCustomerGroupsRes>($request);
  }

  @override
  Future<Response<AdminCustomerGroupsRes>>
      _adminCustomerGroupsIdCustomersBatchDelete({
    required String? id,
    required AdminDeleteCustomerGroupsGroupCustomerBatchReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/customer-groups/${id}/customers/batch');
    final $body = body;
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<AdminCustomerGroupsRes, AdminCustomerGroupsRes>($request);
  }

  @override
  Future<Response<AdminCustomersListRes>> _adminCustomersGet({
    int? limit,
    int? offset,
    String? expand,
    String? q,
    List<String>? groups,
  }) {
    final Uri $url = Uri.parse('/admin/customers');
    final Map<String, dynamic> $params = <String, dynamic>{
      'limit': limit,
      'offset': offset,
      'expand': expand,
      'q': q,
      'groups': groups,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminCustomersListRes, AdminCustomersListRes>($request);
  }

  @override
  Future<Response<AdminCustomersRes>> _adminCustomersPost(
      {required AdminPostCustomersReq? body}) {
    final Uri $url = Uri.parse('/admin/customers');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminCustomersRes, AdminCustomersRes>($request);
  }

  @override
  Future<Response<AdminCustomersRes>> _adminCustomersIdGet({
    required String? id,
    String? expand,
    String? fields,
  }) {
    final Uri $url = Uri.parse('/admin/customers/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminCustomersRes, AdminCustomersRes>($request);
  }

  @override
  Future<Response<AdminCustomersRes>> _adminCustomersIdPost({
    required String? id,
    String? expand,
    String? fields,
    required AdminPostCustomersCustomerReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/customers/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<AdminCustomersRes, AdminCustomersRes>($request);
  }

  @override
  Future<Response<AdminDiscountsListRes>> _adminDiscountsGet({
    String? q,
    Object? rule,
    bool? isDynamic,
    bool? isDisabled,
    num? limit,
    num? offset,
    String? expand,
  }) {
    final Uri $url = Uri.parse('/admin/discounts');
    final Map<String, dynamic> $params = <String, dynamic>{
      'q': q,
      'rule': rule,
      'is_dynamic': isDynamic,
      'is_disabled': isDisabled,
      'limit': limit,
      'offset': offset,
      'expand': expand,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminDiscountsListRes, AdminDiscountsListRes>($request);
  }

  @override
  Future<Response<AdminDiscountsRes>> _adminDiscountsPost({
    String? expand,
    String? fields,
    required AdminPostDiscountsReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/discounts');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<AdminDiscountsRes, AdminDiscountsRes>($request);
  }

  @override
  Future<Response<AdminDiscountsRes>> _adminDiscountsCodeCodeGet({
    required String? code,
    String? expand,
    String? fields,
  }) {
    final Uri $url = Uri.parse('/admin/discounts/code/${code}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminDiscountsRes, AdminDiscountsRes>($request);
  }

  @override
  Future<Response<AdminDiscountsRes>> _adminDiscountsDiscountIdConditionsPost({
    required String? discountId,
    String? expand,
    String? fields,
    required AdminPostDiscountsDiscountConditions? body,
  }) {
    final Uri $url = Uri.parse('/admin/discounts/${discountId}/conditions');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<AdminDiscountsRes, AdminDiscountsRes>($request);
  }

  @override
  Future<Response<AdminDiscountConditionsRes>>
      _adminDiscountsDiscountIdConditionsConditionIdGet({
    required String? discountId,
    required String? conditionId,
    String? expand,
    String? fields,
  }) {
    final Uri $url =
        Uri.parse('/admin/discounts/${discountId}/conditions/${conditionId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<AdminDiscountConditionsRes, AdminDiscountConditionsRes>($request);
  }

  @override
  Future<Response<AdminDiscountsRes>>
      _adminDiscountsDiscountIdConditionsConditionIdPost({
    required String? discountId,
    required String? conditionId,
    String? expand,
    String? fields,
    required AdminPostDiscountsDiscountConditionsCondition? body,
  }) {
    final Uri $url =
        Uri.parse('/admin/discounts/${discountId}/conditions/${conditionId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<AdminDiscountsRes, AdminDiscountsRes>($request);
  }

  @override
  Future<Response<AdminDiscountConditionsDeleteRes>>
      _adminDiscountsDiscountIdConditionsConditionIdDelete({
    required String? discountId,
    required String? conditionId,
    String? expand,
    String? fields,
  }) {
    final Uri $url =
        Uri.parse('/admin/discounts/${discountId}/conditions/${conditionId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminDiscountConditionsDeleteRes,
        AdminDiscountConditionsDeleteRes>($request);
  }

  @override
  Future<Response<AdminDiscountsRes>>
      _adminDiscountsDiscountIdConditionsConditionIdBatchPost({
    required String? discountId,
    required String? conditionId,
    String? expand,
    String? fields,
    required AdminPostDiscountsDiscountConditionsConditionBatchReq? body,
  }) {
    final Uri $url = Uri.parse(
        '/admin/discounts/${discountId}/conditions/${conditionId}/batch');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<AdminDiscountsRes, AdminDiscountsRes>($request);
  }

  @override
  Future<Response<AdminDiscountsRes>>
      _adminDiscountsDiscountIdConditionsConditionIdBatchDelete({
    required String? discountId,
    required String? conditionId,
    String? expand,
    String? fields,
    required AdminDeleteDiscountsDiscountConditionsConditionBatchReq? body,
  }) {
    final Uri $url = Uri.parse(
        '/admin/discounts/${discountId}/conditions/${conditionId}/batch');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final $body = body;
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<AdminDiscountsRes, AdminDiscountsRes>($request);
  }

  @override
  Future<Response<AdminDiscountsRes>> _adminDiscountsIdGet({
    required String? id,
    String? expand,
    String? fields,
  }) {
    final Uri $url = Uri.parse('/admin/discounts/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminDiscountsRes, AdminDiscountsRes>($request);
  }

  @override
  Future<Response<AdminDiscountsRes>> _adminDiscountsIdPost({
    required String? id,
    String? expand,
    String? fields,
    required AdminPostDiscountsDiscountReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/discounts/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<AdminDiscountsRes, AdminDiscountsRes>($request);
  }

  @override
  Future<Response<AdminDiscountsDeleteRes>> _adminDiscountsIdDelete(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/discounts/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client
        .send<AdminDiscountsDeleteRes, AdminDiscountsDeleteRes>($request);
  }

  @override
  Future<Response<AdminDiscountsRes>> _adminDiscountsIdDynamicCodesPost({
    required String? id,
    required AdminPostDiscountsDiscountDynamicCodesReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/discounts/${id}/dynamic-codes');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminDiscountsRes, AdminDiscountsRes>($request);
  }

  @override
  Future<Response<AdminDiscountsRes>> _adminDiscountsIdDynamicCodesCodeDelete({
    required String? id,
    required String? code,
  }) {
    final Uri $url = Uri.parse('/admin/discounts/${id}/dynamic-codes/${code}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<AdminDiscountsRes, AdminDiscountsRes>($request);
  }

  @override
  Future<Response<AdminDiscountsRes>> _adminDiscountsIdRegionsRegionIdPost({
    required String? id,
    required String? regionId,
  }) {
    final Uri $url = Uri.parse('/admin/discounts/${id}/regions/${regionId}');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<AdminDiscountsRes, AdminDiscountsRes>($request);
  }

  @override
  Future<Response<AdminDiscountsRes>> _adminDiscountsIdRegionsRegionIdDelete({
    required String? id,
    required String? regionId,
  }) {
    final Uri $url = Uri.parse('/admin/discounts/${id}/regions/${regionId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<AdminDiscountsRes, AdminDiscountsRes>($request);
  }

  @override
  Future<Response<AdminDraftOrdersListRes>> _adminDraftOrdersGet({
    num? offset,
    num? limit,
    String? q,
  }) {
    final Uri $url = Uri.parse('/admin/draft-orders');
    final Map<String, dynamic> $params = <String, dynamic>{
      'offset': offset,
      'limit': limit,
      'q': q,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<AdminDraftOrdersListRes, AdminDraftOrdersListRes>($request);
  }

  @override
  Future<Response<AdminDraftOrdersRes>> _adminDraftOrdersPost(
      {required AdminPostDraftOrdersReq? body}) {
    final Uri $url = Uri.parse('/admin/draft-orders');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminDraftOrdersRes, AdminDraftOrdersRes>($request);
  }

  @override
  Future<Response<AdminDraftOrdersRes>> _adminDraftOrdersIdGet(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/draft-orders/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<AdminDraftOrdersRes, AdminDraftOrdersRes>($request);
  }

  @override
  Future<Response<AdminDraftOrdersRes>> _adminDraftOrdersIdPost({
    required String? id,
    required AdminPostDraftOrdersDraftOrderReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/draft-orders/${id}');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminDraftOrdersRes, AdminDraftOrdersRes>($request);
  }

  @override
  Future<Response<AdminDraftOrdersDeleteRes>> _adminDraftOrdersIdDelete(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/draft-orders/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client
        .send<AdminDraftOrdersDeleteRes, AdminDraftOrdersDeleteRes>($request);
  }

  @override
  Future<Response<AdminDraftOrdersRes>> _adminDraftOrdersIdLineItemsPost({
    required String? id,
    required AdminPostDraftOrdersDraftOrderLineItemsReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/draft-orders/${id}/line-items');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminDraftOrdersRes, AdminDraftOrdersRes>($request);
  }

  @override
  Future<Response<AdminDraftOrdersRes>> _adminDraftOrdersIdLineItemsLineIdPost({
    required String? id,
    required String? lineId,
    required AdminPostDraftOrdersDraftOrderLineItemsItemReq? body,
  }) {
    final Uri $url =
        Uri.parse('/admin/draft-orders/${id}/line-items/${lineId}');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminDraftOrdersRes, AdminDraftOrdersRes>($request);
  }

  @override
  Future<Response<AdminDraftOrdersRes>>
      _adminDraftOrdersIdLineItemsLineIdDelete({
    required String? id,
    required String? lineId,
  }) {
    final Uri $url =
        Uri.parse('/admin/draft-orders/${id}/line-items/${lineId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<AdminDraftOrdersRes, AdminDraftOrdersRes>($request);
  }

  @override
  Future<Response<AdminPostDraftOrdersDraftOrderRegisterPaymentRes>>
      _adminDraftOrdersIdPayPost({required String? id}) {
    final Uri $url = Uri.parse('/admin/draft-orders/${id}/pay');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<AdminPostDraftOrdersDraftOrderRegisterPaymentRes,
        AdminPostDraftOrdersDraftOrderRegisterPaymentRes>($request);
  }

  @override
  Future<Response<AdminGiftCardsListRes>> _adminGiftCardsGet({
    num? offset,
    num? limit,
    String? q,
  }) {
    final Uri $url = Uri.parse('/admin/gift-cards');
    final Map<String, dynamic> $params = <String, dynamic>{
      'offset': offset,
      'limit': limit,
      'q': q,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminGiftCardsListRes, AdminGiftCardsListRes>($request);
  }

  @override
  Future<Response<AdminGiftCardsRes>> _adminGiftCardsPost(
      {required AdminPostGiftCardsReq? body}) {
    final Uri $url = Uri.parse('/admin/gift-cards');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminGiftCardsRes, AdminGiftCardsRes>($request);
  }

  @override
  Future<Response<AdminGiftCardsRes>> _adminGiftCardsIdGet(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/gift-cards/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<AdminGiftCardsRes, AdminGiftCardsRes>($request);
  }

  @override
  Future<Response<AdminGiftCardsRes>> _adminGiftCardsIdPost({
    required String? id,
    required AdminPostGiftCardsGiftCardReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/gift-cards/${id}');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminGiftCardsRes, AdminGiftCardsRes>($request);
  }

  @override
  Future<Response<AdminGiftCardsDeleteRes>> _adminGiftCardsIdDelete(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/gift-cards/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client
        .send<AdminGiftCardsDeleteRes, AdminGiftCardsDeleteRes>($request);
  }

  @override
  Future<Response<AdminInventoryItemsListWithVariantsAndLocationLevelsRes>>
      _adminInventoryItemsGet({
    int? offset,
    int? limit,
    String? expand,
    String? fields,
    String? q,
    List<String>? locationId,
    Object? id,
    String? sku,
    String? originCountry,
    String? midCode,
    String? material,
    String? hsCode,
    String? weight,
    String? length,
    String? height,
    String? width,
    String? requiresShipping,
  }) {
    final Uri $url = Uri.parse('/admin/inventory-items');
    final Map<String, dynamic> $params = <String, dynamic>{
      'offset': offset,
      'limit': limit,
      'expand': expand,
      'fields': fields,
      'q': q,
      'location_id': locationId,
      'id': id,
      'sku': sku,
      'origin_country': originCountry,
      'mid_code': midCode,
      'material': material,
      'hs_code': hsCode,
      'weight': weight,
      'length': length,
      'height': height,
      'width': width,
      'requires_shipping': requiresShipping,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminInventoryItemsListWithVariantsAndLocationLevelsRes,
        AdminInventoryItemsListWithVariantsAndLocationLevelsRes>($request);
  }

  @override
  Future<Response<AdminInventoryItemsRes>> _adminInventoryItemsPost({
    String? expand,
    String? fields,
    required AdminPostInventoryItemsReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/inventory-items');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client
        .send<AdminInventoryItemsRes, AdminInventoryItemsRes>($request);
  }

  @override
  Future<Response<AdminInventoryItemsRes>> _adminInventoryItemsIdGet({
    required String? id,
    String? expand,
    String? fields,
  }) {
    final Uri $url = Uri.parse('/admin/inventory-items/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<AdminInventoryItemsRes, AdminInventoryItemsRes>($request);
  }

  @override
  Future<Response<AdminInventoryItemsRes>> _adminInventoryItemsIdPost({
    required String? id,
    String? expand,
    String? fields,
    required AdminPostInventoryItemsInventoryItemReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/inventory-items/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client
        .send<AdminInventoryItemsRes, AdminInventoryItemsRes>($request);
  }

  @override
  Future<Response<AdminInventoryItemsDeleteRes>> _adminInventoryItemsIdDelete(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/inventory-items/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<AdminInventoryItemsDeleteRes,
        AdminInventoryItemsDeleteRes>($request);
  }

  @override
  Future<Response<AdminInventoryItemsLocationLevelsRes>>
      _adminInventoryItemsIdLocationLevelsGet({
    required String? id,
    List<String>? locationId,
    String? expand,
    String? fields,
  }) {
    final Uri $url = Uri.parse('/admin/inventory-items/${id}/location-levels');
    final Map<String, dynamic> $params = <String, dynamic>{
      'location_id': locationId,
      'expand': expand,
      'fields': fields,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminInventoryItemsLocationLevelsRes,
        AdminInventoryItemsLocationLevelsRes>($request);
  }

  @override
  Future<Response<AdminInventoryItemsRes>>
      _adminInventoryItemsIdLocationLevelsPost({
    required String? id,
    String? expand,
    String? fields,
    required AdminPostInventoryItemsItemLocationLevelsReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/inventory-items/${id}/location-levels');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client
        .send<AdminInventoryItemsRes, AdminInventoryItemsRes>($request);
  }

  @override
  Future<Response<AdminInventoryItemsRes>>
      _adminInventoryItemsIdLocationLevelsLocationIdPost({
    required String? id,
    required String? locationId,
    String? expand,
    String? fields,
    required AdminPostInventoryItemsItemLocationLevelsLevelReq? body,
  }) {
    final Uri $url =
        Uri.parse('/admin/inventory-items/${id}/location-levels/${locationId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client
        .send<AdminInventoryItemsRes, AdminInventoryItemsRes>($request);
  }

  @override
  Future<Response<AdminInventoryItemsRes>>
      _adminInventoryItemsIdLocationLevelsLocationIdDelete({
    required String? id,
    required String? locationId,
  }) {
    final Uri $url =
        Uri.parse('/admin/inventory-items/${id}/location-levels/${locationId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client
        .send<AdminInventoryItemsRes, AdminInventoryItemsRes>($request);
  }

  @override
  Future<Response<AdminListInvitesRes>> _adminInvitesGet() {
    final Uri $url = Uri.parse('/admin/invites');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<AdminListInvitesRes, AdminListInvitesRes>($request);
  }

  @override
  Future<Response<dynamic>> _adminInvitesPost(
      {required AdminPostInvitesReq? body}) {
    final Uri $url = Uri.parse('/admin/invites');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _adminInvitesAcceptPost(
      {required AdminPostInvitesInviteAcceptReq? body}) {
    final Uri $url = Uri.parse('/admin/invites/accept');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<AdminInviteDeleteRes>> _adminInvitesInviteIdDelete(
      {required String? inviteId}) {
    final Uri $url = Uri.parse('/admin/invites/${inviteId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<AdminInviteDeleteRes, AdminInviteDeleteRes>($request);
  }

  @override
  Future<Response<dynamic>> _adminInvitesInviteIdResendPost(
      {required String? inviteId}) {
    final Uri $url = Uri.parse('/admin/invites/${inviteId}/resend');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<AdminNotesListRes>> _adminNotesGet({
    num? limit,
    num? offset,
    String? resourceId,
  }) {
    final Uri $url = Uri.parse('/admin/notes');
    final Map<String, dynamic> $params = <String, dynamic>{
      'limit': limit,
      'offset': offset,
      'resource_id': resourceId,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminNotesListRes, AdminNotesListRes>($request);
  }

  @override
  Future<Response<AdminNotesRes>> _adminNotesPost(
      {required AdminPostNotesReq? body}) {
    final Uri $url = Uri.parse('/admin/notes');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminNotesRes, AdminNotesRes>($request);
  }

  @override
  Future<Response<AdminNotesRes>> _adminNotesIdGet({required String? id}) {
    final Uri $url = Uri.parse('/admin/notes/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<AdminNotesRes, AdminNotesRes>($request);
  }

  @override
  Future<Response<AdminNotesRes>> _adminNotesIdPost({
    required String? id,
    required AdminPostNotesNoteReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/notes/${id}');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminNotesRes, AdminNotesRes>($request);
  }

  @override
  Future<Response<AdminNotesDeleteRes>> _adminNotesIdDelete(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/notes/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<AdminNotesDeleteRes, AdminNotesDeleteRes>($request);
  }

  @override
  Future<Response<AdminNotificationsListRes>> _adminNotificationsGet({
    int? offset,
    int? limit,
    String? fields,
    String? expand,
    String? eventName,
    String? resourceType,
    String? resourceId,
    String? to,
    String? includeResends,
  }) {
    final Uri $url = Uri.parse('/admin/notifications');
    final Map<String, dynamic> $params = <String, dynamic>{
      'offset': offset,
      'limit': limit,
      'fields': fields,
      'expand': expand,
      'event_name': eventName,
      'resource_type': resourceType,
      'resource_id': resourceId,
      'to': to,
      'include_resends': includeResends,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<AdminNotificationsListRes, AdminNotificationsListRes>($request);
  }

  @override
  Future<Response<AdminNotificationsRes>> _adminNotificationsIdResendPost({
    required String? id,
    required AdminPostNotificationsNotificationResendReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/notifications/${id}/resend');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminNotificationsRes, AdminNotificationsRes>($request);
  }

  @override
  Future<Response<AdminOrderEditsListRes>> _adminOrderEditsGet({
    String? q,
    String? orderId,
    num? limit,
    num? offset,
    String? expand,
    String? fields,
  }) {
    final Uri $url = Uri.parse('/admin/order-edits');
    final Map<String, dynamic> $params = <String, dynamic>{
      'q': q,
      'order_id': orderId,
      'limit': limit,
      'offset': offset,
      'expand': expand,
      'fields': fields,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<AdminOrderEditsListRes, AdminOrderEditsListRes>($request);
  }

  @override
  Future<Response<AdminOrderEditsRes>> _adminOrderEditsPost(
      {required AdminPostOrderEditsReq? body}) {
    final Uri $url = Uri.parse('/admin/order-edits');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminOrderEditsRes, AdminOrderEditsRes>($request);
  }

  @override
  Future<Response<AdminOrderEditsRes>> _adminOrderEditsIdGet({
    required String? id,
    String? expand,
    String? fields,
  }) {
    final Uri $url = Uri.parse('/admin/order-edits/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminOrderEditsRes, AdminOrderEditsRes>($request);
  }

  @override
  Future<Response<AdminOrderEditsRes>> _adminOrderEditsIdPost({
    required String? id,
    required AdminPostOrderEditsOrderEditReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/order-edits/${id}');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminOrderEditsRes, AdminOrderEditsRes>($request);
  }

  @override
  Future<Response<AdminOrderEditDeleteRes>> _adminOrderEditsIdDelete(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/order-edits/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client
        .send<AdminOrderEditDeleteRes, AdminOrderEditDeleteRes>($request);
  }

  @override
  Future<Response<AdminOrderEditsRes>> _adminOrderEditsIdCancelPost(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/order-edits/${id}/cancel');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<AdminOrderEditsRes, AdminOrderEditsRes>($request);
  }

  @override
  Future<Response<AdminOrderEditItemChangeDeleteRes>>
      _adminOrderEditsIdChangesChangeIdDelete({
    required String? id,
    required String? changeId,
  }) {
    final Uri $url = Uri.parse('/admin/order-edits/${id}/changes/${changeId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<AdminOrderEditItemChangeDeleteRes,
        AdminOrderEditItemChangeDeleteRes>($request);
  }

  @override
  Future<Response<AdminOrderEditsRes>> _adminOrderEditsIdConfirmPost(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/order-edits/${id}/confirm');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<AdminOrderEditsRes, AdminOrderEditsRes>($request);
  }

  @override
  Future<Response<AdminOrderEditsRes>> _adminOrderEditsIdItemsPost({
    required String? id,
    required AdminPostOrderEditsEditLineItemsReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/order-edits/${id}/items');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminOrderEditsRes, AdminOrderEditsRes>($request);
  }

  @override
  Future<Response<AdminOrderEditsRes>> _adminOrderEditsIdItemsItemIdPost({
    required String? id,
    required String? itemId,
    required AdminPostOrderEditsEditLineItemsLineItemReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/order-edits/${id}/items/${itemId}');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminOrderEditsRes, AdminOrderEditsRes>($request);
  }

  @override
  Future<Response<AdminOrderEditsRes>> _adminOrderEditsIdItemsItemIdDelete({
    required String? id,
    required String? itemId,
  }) {
    final Uri $url = Uri.parse('/admin/order-edits/${id}/items/${itemId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<AdminOrderEditsRes, AdminOrderEditsRes>($request);
  }

  @override
  Future<Response<AdminOrderEditsRes>> _adminOrderEditsIdRequestPost(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/order-edits/${id}/request');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<AdminOrderEditsRes, AdminOrderEditsRes>($request);
  }

  @override
  Future<Response<AdminOrdersListRes>> _adminOrdersGet({
    String? q,
    String? id,
    List<String>? status,
    List<String>? fulfillmentStatus,
    List<String>? paymentStatus,
    String? displayId,
    String? cartId,
    String? customerId,
    String? email,
    Object? regionId,
    String? currencyCode,
    String? taxRate,
    Object? createdAt,
    Object? updatedAt,
    Object? canceledAt,
    List<String>? salesChannelId,
    int? offset,
    int? limit,
    String? expand,
    String? fields,
  }) {
    final Uri $url = Uri.parse('/admin/orders');
    final Map<String, dynamic> $params = <String, dynamic>{
      'q': q,
      'id': id,
      'status': status,
      'fulfillment_status': fulfillmentStatus,
      'payment_status': paymentStatus,
      'display_id': displayId,
      'cart_id': cartId,
      'customer_id': customerId,
      'email': email,
      'region_id': regionId,
      'currency_code': currencyCode,
      'tax_rate': taxRate,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'canceled_at': canceledAt,
      'sales_channel_id': salesChannelId,
      'offset': offset,
      'limit': limit,
      'expand': expand,
      'fields': fields,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminOrdersListRes, AdminOrdersListRes>($request);
  }

  @override
  Future<Response<AdminOrdersRes>> _adminOrdersIdGet({
    required String? id,
    String? expand,
    String? fields,
  }) {
    final Uri $url = Uri.parse('/admin/orders/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminOrdersRes, AdminOrdersRes>($request);
  }

  @override
  Future<Response<AdminOrdersRes>> _adminOrdersIdPost({
    required String? id,
    String? expand,
    String? fields,
    required AdminPostOrdersOrderReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/orders/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<AdminOrdersRes, AdminOrdersRes>($request);
  }

  @override
  Future<Response<AdminOrdersRes>> _adminOrdersIdArchivePost({
    required String? id,
    String? expand,
    String? fields,
  }) {
    final Uri $url = Uri.parse('/admin/orders/${id}/archive');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminOrdersRes, AdminOrdersRes>($request);
  }

  @override
  Future<Response<AdminOrdersRes>> _adminOrdersIdCancelPost({
    required String? id,
    String? expand,
    String? fields,
  }) {
    final Uri $url = Uri.parse('/admin/orders/${id}/cancel');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminOrdersRes, AdminOrdersRes>($request);
  }

  @override
  Future<Response<AdminOrdersRes>> _adminOrdersIdCapturePost({
    required String? id,
    String? expand,
    String? fields,
  }) {
    final Uri $url = Uri.parse('/admin/orders/${id}/capture');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminOrdersRes, AdminOrdersRes>($request);
  }

  @override
  Future<Response<AdminOrdersRes>> _adminOrdersIdClaimsPost({
    required String? id,
    String? expand,
    String? fields,
    required AdminPostOrdersOrderClaimsReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/orders/${id}/claims');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<AdminOrdersRes, AdminOrdersRes>($request);
  }

  @override
  Future<Response<AdminOrdersRes>> _adminOrdersIdClaimsClaimIdPost({
    required String? id,
    required String? claimId,
    String? expand,
    String? fields,
    required AdminPostOrdersOrderClaimsClaimReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/orders/${id}/claims/${claimId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<AdminOrdersRes, AdminOrdersRes>($request);
  }

  @override
  Future<Response<AdminOrdersRes>> _adminOrdersIdClaimsClaimIdCancelPost({
    required String? id,
    required String? claimId,
    String? expand,
    String? fields,
  }) {
    final Uri $url = Uri.parse('/admin/orders/${id}/claims/${claimId}/cancel');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminOrdersRes, AdminOrdersRes>($request);
  }

  @override
  Future<Response<AdminOrdersRes>> _adminOrdersIdClaimsClaimIdFulfillmentsPost({
    required String? id,
    required String? claimId,
    String? expand,
    String? fields,
    required AdminPostOrdersOrderClaimsClaimFulfillmentsReq? body,
  }) {
    final Uri $url =
        Uri.parse('/admin/orders/${id}/claims/${claimId}/fulfillments');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<AdminOrdersRes, AdminOrdersRes>($request);
  }

  @override
  Future<Response<AdminOrdersRes>>
      _adminOrdersIdClaimsClaimIdFulfillmentsFulfillmentIdCancelPost({
    required String? id,
    required String? claimId,
    required String? fulfillmentId,
    String? expand,
    String? fields,
  }) {
    final Uri $url = Uri.parse(
        '/admin/orders/${id}/claims/${claimId}/fulfillments/${fulfillmentId}/cancel');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminOrdersRes, AdminOrdersRes>($request);
  }

  @override
  Future<Response<AdminOrdersRes>> _adminOrdersIdClaimsClaimIdShipmentsPost({
    required String? id,
    required String? claimId,
    String? expand,
    String? fields,
    required AdminPostOrdersOrderClaimsClaimShipmentsReq? body,
  }) {
    final Uri $url =
        Uri.parse('/admin/orders/${id}/claims/${claimId}/shipments');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<AdminOrdersRes, AdminOrdersRes>($request);
  }

  @override
  Future<Response<AdminOrdersRes>> _adminOrdersIdCompletePost({
    required String? id,
    String? expand,
    String? fields,
  }) {
    final Uri $url = Uri.parse('/admin/orders/${id}/complete');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminOrdersRes, AdminOrdersRes>($request);
  }

  @override
  Future<Response<AdminOrdersRes>> _adminOrdersIdFulfillmentPost({
    required String? id,
    String? expand,
    String? fields,
    required AdminPostOrdersOrderFulfillmentsReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/orders/${id}/fulfillment');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<AdminOrdersRes, AdminOrdersRes>($request);
  }

  @override
  Future<Response<AdminOrdersRes>>
      _adminOrdersIdFulfillmentsFulfillmentIdCancelPost({
    required String? id,
    required String? fulfillmentId,
    String? expand,
    String? fields,
  }) {
    final Uri $url =
        Uri.parse('/admin/orders/${id}/fulfillments/${fulfillmentId}/cancel');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminOrdersRes, AdminOrdersRes>($request);
  }

  @override
  Future<Response<AdminPostReservationsReq>>
      _adminOrdersIdLineItemsLineItemIdReservePost({
    required String? id,
    required String? lineItemId,
    required AdminOrdersOrderLineItemReservationReq? body,
  }) {
    final Uri $url =
        Uri.parse('/admin/orders/${id}/line-items/${lineItemId}/reserve');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<AdminPostReservationsReq, AdminPostReservationsReq>($request);
  }

  @override
  Future<Response<AdminOrdersRes>> _adminOrdersIdRefundPost({
    required String? id,
    String? expand,
    String? fields,
    required AdminPostOrdersOrderRefundsReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/orders/${id}/refund');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<AdminOrdersRes, AdminOrdersRes>($request);
  }

  @override
  Future<Response<AdminReservationsListRes>> _adminOrdersIdReservationsGet({
    required String? id,
    int? offset,
    int? limit,
  }) {
    final Uri $url = Uri.parse('/admin/orders/${id}/reservations');
    final Map<String, dynamic> $params = <String, dynamic>{
      'offset': offset,
      'limit': limit,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<AdminReservationsListRes, AdminReservationsListRes>($request);
  }

  @override
  Future<Response<AdminOrdersRes>> _adminOrdersIdReturnPost({
    required String? id,
    String? expand,
    String? fields,
    required AdminPostOrdersOrderReturnsReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/orders/${id}/return');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<AdminOrdersRes, AdminOrdersRes>($request);
  }

  @override
  Future<Response<AdminOrdersRes>> _adminOrdersIdShipmentPost({
    required String? id,
    String? expand,
    String? fields,
    required AdminPostOrdersOrderShipmentReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/orders/${id}/shipment');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<AdminOrdersRes, AdminOrdersRes>($request);
  }

  @override
  Future<Response<AdminOrdersRes>> _adminOrdersIdShippingMethodsPost({
    required String? id,
    String? expand,
    String? fields,
    required AdminPostOrdersOrderShippingMethodsReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/orders/${id}/shipping-methods');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<AdminOrdersRes, AdminOrdersRes>($request);
  }

  @override
  Future<Response<AdminOrdersRes>> _adminOrdersIdSwapsPost({
    required String? id,
    String? expand,
    String? fields,
    required AdminPostOrdersOrderSwapsReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/orders/${id}/swaps');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<AdminOrdersRes, AdminOrdersRes>($request);
  }

  @override
  Future<Response<AdminOrdersRes>> _adminOrdersIdSwapsSwapIdCancelPost({
    required String? id,
    required String? swapId,
    String? expand,
    String? fields,
  }) {
    final Uri $url = Uri.parse('/admin/orders/${id}/swaps/${swapId}/cancel');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminOrdersRes, AdminOrdersRes>($request);
  }

  @override
  Future<Response<AdminOrdersRes>> _adminOrdersIdSwapsSwapIdFulfillmentsPost({
    required String? id,
    required String? swapId,
    String? expand,
    String? fields,
    required AdminPostOrdersOrderSwapsSwapFulfillmentsReq? body,
  }) {
    final Uri $url =
        Uri.parse('/admin/orders/${id}/swaps/${swapId}/fulfillments');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<AdminOrdersRes, AdminOrdersRes>($request);
  }

  @override
  Future<Response<AdminOrdersRes>>
      _adminOrdersIdSwapsSwapIdFulfillmentsFulfillmentIdCancelPost({
    required String? id,
    required String? swapId,
    required String? fulfillmentId,
    String? expand,
    String? fields,
  }) {
    final Uri $url = Uri.parse(
        '/admin/orders/${id}/swaps/${swapId}/fulfillments/${fulfillmentId}/cancel');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminOrdersRes, AdminOrdersRes>($request);
  }

  @override
  Future<Response<AdminOrdersRes>> _adminOrdersIdSwapsSwapIdProcessPaymentPost({
    required String? id,
    required String? swapId,
    String? expand,
    String? fields,
  }) {
    final Uri $url =
        Uri.parse('/admin/orders/${id}/swaps/${swapId}/process-payment');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminOrdersRes, AdminOrdersRes>($request);
  }

  @override
  Future<Response<AdminOrdersRes>> _adminOrdersIdSwapsSwapIdShipmentsPost({
    required String? id,
    required String? swapId,
    String? expand,
    String? fields,
    required AdminPostOrdersOrderSwapsSwapShipmentsReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/orders/${id}/swaps/${swapId}/shipments');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<AdminOrdersRes, AdminOrdersRes>($request);
  }

  @override
  Future<Response<AdminPaymentCollectionsRes>> _adminPaymentCollectionsIdGet({
    required String? id,
    String? expand,
    String? fields,
  }) {
    final Uri $url = Uri.parse('/admin/payment-collections/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<AdminPaymentCollectionsRes, AdminPaymentCollectionsRes>($request);
  }

  @override
  Future<Response<AdminPaymentCollectionsRes>> _adminPaymentCollectionsIdPost({
    required String? id,
    required AdminUpdatePaymentCollectionsReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/payment-collections/${id}');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<AdminPaymentCollectionsRes, AdminPaymentCollectionsRes>($request);
  }

  @override
  Future<Response<AdminPaymentCollectionDeleteRes>>
      _adminPaymentCollectionsIdDelete({required String? id}) {
    final Uri $url = Uri.parse('/admin/payment-collections/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<AdminPaymentCollectionDeleteRes,
        AdminPaymentCollectionDeleteRes>($request);
  }

  @override
  Future<Response<AdminPaymentCollectionsRes>>
      _adminPaymentCollectionsIdAuthorizePost({required String? id}) {
    final Uri $url = Uri.parse('/admin/payment-collections/${id}/authorize');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client
        .send<AdminPaymentCollectionsRes, AdminPaymentCollectionsRes>($request);
  }

  @override
  Future<Response<AdminPaymentRes>> _adminPaymentsIdGet({required String? id}) {
    final Uri $url = Uri.parse('/admin/payments/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<AdminPaymentRes, AdminPaymentRes>($request);
  }

  @override
  Future<Response<AdminPaymentRes>> _adminPaymentsIdCapturePost(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/payments/${id}/capture');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<AdminPaymentRes, AdminPaymentRes>($request);
  }

  @override
  Future<Response<AdminRefundRes>> _adminPaymentsIdRefundPost({
    required String? id,
    required AdminPostPaymentRefundsReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/payments/${id}/refund');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminRefundRes, AdminRefundRes>($request);
  }

  @override
  Future<Response<AdminPriceListsListRes>> _adminPriceListsGet({
    num? limit,
    num? offset,
    String? expand,
    String? fields,
    String? order,
    String? id,
    String? q,
    List<String>? status,
    String? name,
    List<String>? customerGroups,
    List<String>? type,
    Object? createdAt,
    Object? updatedAt,
    Object? deletedAt,
  }) {
    final Uri $url = Uri.parse('/admin/price-lists');
    final Map<String, dynamic> $params = <String, dynamic>{
      'limit': limit,
      'offset': offset,
      'expand': expand,
      'fields': fields,
      'order': order,
      'id': id,
      'q': q,
      'status': status,
      'name': name,
      'customer_groups': customerGroups,
      'type': type,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'deleted_at': deletedAt,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<AdminPriceListsListRes, AdminPriceListsListRes>($request);
  }

  @override
  Future<Response<AdminPriceListRes>> _adminPriceListsPost(
      {required AdminPostPriceListsPriceListReq? body}) {
    final Uri $url = Uri.parse('/admin/price-lists');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminPriceListRes, AdminPriceListRes>($request);
  }

  @override
  Future<Response<AdminPriceListRes>> _adminPriceListsIdGet(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/price-lists/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<AdminPriceListRes, AdminPriceListRes>($request);
  }

  @override
  Future<Response<AdminPriceListRes>> _adminPriceListsIdPost({
    required String? id,
    required AdminPostPriceListsPriceListPriceListReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/price-lists/${id}');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminPriceListRes, AdminPriceListRes>($request);
  }

  @override
  Future<Response<AdminPriceListDeleteRes>> _adminPriceListsIdDelete(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/price-lists/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client
        .send<AdminPriceListDeleteRes, AdminPriceListDeleteRes>($request);
  }

  @override
  Future<Response<AdminPriceListRes>> _adminPriceListsIdPricesBatchPost({
    required String? id,
    required AdminPostPriceListPricesPricesReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/price-lists/${id}/prices/batch');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminPriceListRes, AdminPriceListRes>($request);
  }

  @override
  Future<Response<AdminPriceListDeleteBatchRes>>
      _adminPriceListsIdPricesBatchDelete({
    required String? id,
    required AdminDeletePriceListPricesPricesReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/price-lists/${id}/prices/batch');
    final $body = body;
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminPriceListDeleteBatchRes,
        AdminPriceListDeleteBatchRes>($request);
  }

  @override
  Future<Response<AdminPriceListsProductsListRes>>
      _adminPriceListsIdProductsGet({
    required String? id,
    String? q,
    String? id$,
    List<String>? status,
    List<String>? collectionId,
    List<String>? tags,
    String? title,
    String? description,
    String? handle,
    String? isGiftcard,
    String? type,
    String? order,
    Object? createdAt,
    Object? updatedAt,
    Object? deletedAt,
    int? offset,
    int? limit,
    String? expand,
    String? fields,
  }) {
    final Uri $url = Uri.parse('/admin/price-lists/${id}/products');
    final Map<String, dynamic> $params = <String, dynamic>{
      'q': q,
      'id': id$,
      'status': status,
      'collection_id': collectionId,
      'tags': tags,
      'title': title,
      'description': description,
      'handle': handle,
      'is_giftcard': isGiftcard,
      'type': type,
      'order': order,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'deleted_at': deletedAt,
      'offset': offset,
      'limit': limit,
      'expand': expand,
      'fields': fields,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminPriceListsProductsListRes,
        AdminPriceListsProductsListRes>($request);
  }

  @override
  Future<Response<AdminPriceListDeleteProductPricesRes>>
      _adminPriceListsIdProductsPricesBatchDelete({required String? id}) {
    final Uri $url =
        Uri.parse('/admin/price-lists/${id}/products/prices/batch');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<AdminPriceListDeleteProductPricesRes,
        AdminPriceListDeleteProductPricesRes>($request);
  }

  @override
  Future<Response<AdminPriceListDeleteProductPricesRes>>
      _adminPriceListsIdProductsProductIdPricesDelete({
    required String? id,
    required String? productId,
  }) {
    final Uri $url =
        Uri.parse('/admin/price-lists/${id}/products/${productId}/prices');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<AdminPriceListDeleteProductPricesRes,
        AdminPriceListDeleteProductPricesRes>($request);
  }

  @override
  Future<Response<AdminPriceListDeleteVariantPricesRes>>
      _adminPriceListsIdVariantsVariantIdPricesDelete({
    required String? id,
    required String? variantId,
  }) {
    final Uri $url =
        Uri.parse('/admin/price-lists/${id}/variants/${variantId}/prices');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<AdminPriceListDeleteVariantPricesRes,
        AdminPriceListDeleteVariantPricesRes>($request);
  }

  @override
  Future<Response<AdminProductCategoriesListRes>> _adminProductCategoriesGet({
    String? q,
    String? handle,
    bool? isInternal,
    bool? isActive,
    bool? includeDescendantsTree,
    String? parentCategoryId,
    int? offset,
    int? limit,
    String? expand,
    String? fields,
  }) {
    final Uri $url = Uri.parse('/admin/product-categories');
    final Map<String, dynamic> $params = <String, dynamic>{
      'q': q,
      'handle': handle,
      'is_internal': isInternal,
      'is_active': isActive,
      'include_descendants_tree': includeDescendantsTree,
      'parent_category_id': parentCategoryId,
      'offset': offset,
      'limit': limit,
      'expand': expand,
      'fields': fields,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminProductCategoriesListRes,
        AdminProductCategoriesListRes>($request);
  }

  @override
  Future<Response<AdminProductCategoriesCategoryRes>>
      _adminProductCategoriesPost({
    String? expand,
    String? fields,
    required AdminPostProductCategoriesReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/product-categories');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<AdminProductCategoriesCategoryRes,
        AdminProductCategoriesCategoryRes>($request);
  }

  @override
  Future<Response<AdminProductCategoriesCategoryRes>>
      _adminProductCategoriesIdGet({
    required String? id,
    String? expand,
    String? fields,
  }) {
    final Uri $url = Uri.parse('/admin/product-categories/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminProductCategoriesCategoryRes,
        AdminProductCategoriesCategoryRes>($request);
  }

  @override
  Future<Response<AdminProductCategoriesCategoryRes>>
      _adminProductCategoriesIdPost({
    required String? id,
    String? expand,
    String? fields,
    required AdminPostProductCategoriesCategoryReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/product-categories/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<AdminProductCategoriesCategoryRes,
        AdminProductCategoriesCategoryRes>($request);
  }

  @override
  Future<Response<AdminProductCategoriesCategoryDeleteRes>>
      _adminProductCategoriesIdDelete({required String? id}) {
    final Uri $url = Uri.parse('/admin/product-categories/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<AdminProductCategoriesCategoryDeleteRes,
        AdminProductCategoriesCategoryDeleteRes>($request);
  }

  @override
  Future<Response<AdminProductCategoriesCategoryRes>>
      _adminProductCategoriesIdProductsBatchPost({
    required String? id,
    String? expand,
    String? fields,
    required AdminPostProductCategoriesCategoryProductsBatchReq? body,
  }) {
    final Uri $url =
        Uri.parse('/admin/product-categories/${id}/products/batch');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<AdminProductCategoriesCategoryRes,
        AdminProductCategoriesCategoryRes>($request);
  }

  @override
  Future<Response<AdminProductCategoriesCategoryRes>>
      _adminProductCategoriesIdProductsBatchDelete({
    required String? id,
    String? expand,
    String? fields,
    required AdminDeleteProductCategoriesCategoryProductsBatchReq? body,
  }) {
    final Uri $url =
        Uri.parse('/admin/product-categories/${id}/products/batch');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final $body = body;
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<AdminProductCategoriesCategoryRes,
        AdminProductCategoriesCategoryRes>($request);
  }

  @override
  Future<Response<AdminProductTagsListRes>> _adminProductTagsGet({
    int? limit,
    int? offset,
    String? order,
    String? discountConditionId,
    List<String>? value,
    String? q,
    List<String>? id,
    Object? createdAt,
    Object? updatedAt,
  }) {
    final Uri $url = Uri.parse('/admin/product-tags');
    final Map<String, dynamic> $params = <String, dynamic>{
      'limit': limit,
      'offset': offset,
      'order': order,
      'discount_condition_id': discountConditionId,
      'value': value,
      'q': q,
      'id': id,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<AdminProductTagsListRes, AdminProductTagsListRes>($request);
  }

  @override
  Future<Response<AdminProductTypesListRes>> _adminProductTypesGet({
    int? limit,
    int? offset,
    String? order,
    String? discountConditionId,
    List<String>? value,
    List<String>? id,
    String? q,
    Object? createdAt,
    Object? updatedAt,
  }) {
    final Uri $url = Uri.parse('/admin/product-types');
    final Map<String, dynamic> $params = <String, dynamic>{
      'limit': limit,
      'offset': offset,
      'order': order,
      'discount_condition_id': discountConditionId,
      'value': value,
      'id': id,
      'q': q,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<AdminProductTypesListRes, AdminProductTypesListRes>($request);
  }

  @override
  Future<Response<AdminProductsListRes>> _adminProductsGet({
    String? q,
    String? discountConditionId,
    Object? id,
    List<String>? status,
    List<String>? collectionId,
    List<String>? tags,
    List<String>? priceListId,
    List<String>? salesChannelId,
    List<String>? typeId,
    List<String>? categoryId,
    bool? includeCategoryChildren,
    String? title,
    String? description,
    String? handle,
    bool? isGiftcard,
    Object? createdAt,
    Object? updatedAt,
    Object? deletedAt,
    int? offset,
    int? limit,
    String? expand,
    String? fields,
    String? order,
  }) {
    final Uri $url = Uri.parse('/admin/products');
    final Map<String, dynamic> $params = <String, dynamic>{
      'q': q,
      'discount_condition_id': discountConditionId,
      'id': id,
      'status': status,
      'collection_id': collectionId,
      'tags': tags,
      'price_list_id': priceListId,
      'sales_channel_id': salesChannelId,
      'type_id': typeId,
      'category_id': categoryId,
      'include_category_children': includeCategoryChildren,
      'title': title,
      'description': description,
      'handle': handle,
      'is_giftcard': isGiftcard,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'deleted_at': deletedAt,
      'offset': offset,
      'limit': limit,
      'expand': expand,
      'fields': fields,
      'order': order,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminProductsListRes, AdminProductsListRes>($request);
  }

  @override
  Future<Response<AdminProductsRes>> _adminProductsPost(
      {required AdminPostProductsReq? body}) {
    final Uri $url = Uri.parse('/admin/products');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminProductsRes, AdminProductsRes>($request);
  }

  @override
  Future<Response<AdminProductsListTagsRes>> _adminProductsTagUsageGet() {
    final Uri $url = Uri.parse('/admin/products/tag-usage');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<AdminProductsListTagsRes, AdminProductsListTagsRes>($request);
  }

  @override
  Future<Response<AdminProductsListTypesRes>> _adminProductsTypesGet() {
    final Uri $url = Uri.parse('/admin/products/types');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<AdminProductsListTypesRes, AdminProductsListTypesRes>($request);
  }

  @override
  Future<Response<AdminProductsRes>> _adminProductsIdGet(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/products/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<AdminProductsRes, AdminProductsRes>($request);
  }

  @override
  Future<Response<AdminProductsRes>> _adminProductsIdPost({
    required String? id,
    required AdminPostProductsProductReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/products/${id}');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminProductsRes, AdminProductsRes>($request);
  }

  @override
  Future<Response<AdminProductsDeleteRes>> _adminProductsIdDelete(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/products/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client
        .send<AdminProductsDeleteRes, AdminProductsDeleteRes>($request);
  }

  @override
  Future<Response<AdminProductsRes>> _adminProductsIdMetadataPost({
    required String? id,
    required AdminPostProductsProductMetadataReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/products/${id}/metadata');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminProductsRes, AdminProductsRes>($request);
  }

  @override
  Future<Response<AdminProductsRes>> _adminProductsIdOptionsPost({
    required String? id,
    required AdminPostProductsProductOptionsReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/products/${id}/options');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminProductsRes, AdminProductsRes>($request);
  }

  @override
  Future<Response<AdminProductsRes>> _adminProductsIdOptionsOptionIdPost({
    required String? id,
    required String? optionId,
    required AdminPostProductsProductOptionsOption? body,
  }) {
    final Uri $url = Uri.parse('/admin/products/${id}/options/${optionId}');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminProductsRes, AdminProductsRes>($request);
  }

  @override
  Future<Response<AdminProductsDeleteOptionRes>>
      _adminProductsIdOptionsOptionIdDelete({
    required String? id,
    required String? optionId,
  }) {
    final Uri $url = Uri.parse('/admin/products/${id}/options/${optionId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<AdminProductsDeleteOptionRes,
        AdminProductsDeleteOptionRes>($request);
  }

  @override
  Future<Response<AdminProductsListVariantsRes>> _adminProductsIdVariantsGet({
    required String? id,
    String? fields,
    String? expand,
    int? offset,
    int? limit,
  }) {
    final Uri $url = Uri.parse('/admin/products/${id}/variants');
    final Map<String, dynamic> $params = <String, dynamic>{
      'fields': fields,
      'expand': expand,
      'offset': offset,
      'limit': limit,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminProductsListVariantsRes,
        AdminProductsListVariantsRes>($request);
  }

  @override
  Future<Response<AdminProductsRes>> _adminProductsIdVariantsPost({
    required String? id,
    required AdminPostProductsProductVariantsReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/products/${id}/variants');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminProductsRes, AdminProductsRes>($request);
  }

  @override
  Future<Response<AdminProductsRes>> _adminProductsIdVariantsVariantIdPost({
    required String? id,
    required String? variantId,
    required AdminPostProductsProductVariantsVariantReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/products/${id}/variants/${variantId}');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminProductsRes, AdminProductsRes>($request);
  }

  @override
  Future<Response<AdminProductsDeleteVariantRes>>
      _adminProductsIdVariantsVariantIdDelete({
    required String? id,
    required String? variantId,
  }) {
    final Uri $url = Uri.parse('/admin/products/${id}/variants/${variantId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<AdminProductsDeleteVariantRes,
        AdminProductsDeleteVariantRes>($request);
  }

  @override
  Future<Response<AdminPublishableApiKeysListRes>> _adminPublishableApiKeysGet({
    String? q,
    num? limit,
    num? offset,
    String? expand,
    String? fields,
  }) {
    final Uri $url = Uri.parse('/admin/publishable-api-keys');
    final Map<String, dynamic> $params = <String, dynamic>{
      'q': q,
      'limit': limit,
      'offset': offset,
      'expand': expand,
      'fields': fields,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminPublishableApiKeysListRes,
        AdminPublishableApiKeysListRes>($request);
  }

  @override
  Future<Response<AdminPublishableApiKeysRes>> _adminPublishableApiKeysPost(
      {required AdminPostPublishableApiKeysReq? body}) {
    final Uri $url = Uri.parse('/admin/publishable-api-keys');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<AdminPublishableApiKeysRes, AdminPublishableApiKeysRes>($request);
  }

  @override
  Future<Response<AdminPublishableApiKeysRes>> _adminPublishableApiKeysIdGet(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/publishable-api-keys/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<AdminPublishableApiKeysRes, AdminPublishableApiKeysRes>($request);
  }

  @override
  Future<Response<AdminPublishableApiKeysRes>> _adminPublishableApiKeysIdPost({
    required String? id,
    required AdminPostPublishableApiKeysPublishableApiKeyReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/publishable-api-keys/${id}');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<AdminPublishableApiKeysRes, AdminPublishableApiKeysRes>($request);
  }

  @override
  Future<Response<AdminPublishableApiKeyDeleteRes>>
      _adminPublishableApiKeysIdDelete({required String? id}) {
    final Uri $url = Uri.parse('/admin/publishable-api-keys/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<AdminPublishableApiKeyDeleteRes,
        AdminPublishableApiKeyDeleteRes>($request);
  }

  @override
  Future<Response<AdminPublishableApiKeysRes>>
      _adminPublishableApiKeysIdRevokePost({required String? id}) {
    final Uri $url = Uri.parse('/admin/publishable-api-keys/${id}/revoke');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client
        .send<AdminPublishableApiKeysRes, AdminPublishableApiKeysRes>($request);
  }

  @override
  Future<Response<AdminPublishableApiKeysListSalesChannelsRes>>
      _adminPublishableApiKeysIdSalesChannelsGet({
    required String? id,
    String? q,
  }) {
    final Uri $url =
        Uri.parse('/admin/publishable-api-keys/${id}/sales-channels');
    final Map<String, dynamic> $params = <String, dynamic>{'q': q};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminPublishableApiKeysListSalesChannelsRes,
        AdminPublishableApiKeysListSalesChannelsRes>($request);
  }

  @override
  Future<Response<AdminPublishableApiKeysRes>>
      _adminPublishableApiKeysIdSalesChannelsBatchPost({
    required String? id,
    required AdminPostPublishableApiKeySalesChannelsBatchReq? body,
  }) {
    final Uri $url =
        Uri.parse('/admin/publishable-api-keys/${id}/sales-channels/batch');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<AdminPublishableApiKeysRes, AdminPublishableApiKeysRes>($request);
  }

  @override
  Future<Response<AdminPublishableApiKeysRes>>
      _adminPublishableApiKeysIdSalesChannelsBatchDelete({
    required String? id,
    required AdminDeletePublishableApiKeySalesChannelsBatchReq? body,
  }) {
    final Uri $url =
        Uri.parse('/admin/publishable-api-keys/${id}/sales-channels/batch');
    final $body = body;
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<AdminPublishableApiKeysRes, AdminPublishableApiKeysRes>($request);
  }

  @override
  Future<Response<AdminRegionsListRes>> _adminRegionsGet({
    int? limit,
    int? offset,
    Object? createdAt,
    Object? updatedAt,
    Object? deletedAt,
  }) {
    final Uri $url = Uri.parse('/admin/regions');
    final Map<String, dynamic> $params = <String, dynamic>{
      'limit': limit,
      'offset': offset,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'deleted_at': deletedAt,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminRegionsListRes, AdminRegionsListRes>($request);
  }

  @override
  Future<Response<AdminRegionsRes>> _adminRegionsPost(
      {required AdminPostRegionsReq? body}) {
    final Uri $url = Uri.parse('/admin/regions');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminRegionsRes, AdminRegionsRes>($request);
  }

  @override
  Future<Response<AdminRegionsRes>> _adminRegionsIdGet({required String? id}) {
    final Uri $url = Uri.parse('/admin/regions/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<AdminRegionsRes, AdminRegionsRes>($request);
  }

  @override
  Future<Response<AdminRegionsRes>> _adminRegionsIdPost({
    required String? id,
    required AdminPostRegionsRegionReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/regions/${id}');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminRegionsRes, AdminRegionsRes>($request);
  }

  @override
  Future<Response<AdminRegionsDeleteRes>> _adminRegionsIdDelete(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/regions/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<AdminRegionsDeleteRes, AdminRegionsDeleteRes>($request);
  }

  @override
  Future<Response<AdminRegionsRes>> _adminRegionsIdCountriesPost({
    required String? id,
    required AdminPostRegionsRegionCountriesReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/regions/${id}/countries');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminRegionsRes, AdminRegionsRes>($request);
  }

  @override
  Future<Response<AdminRegionsRes>> _adminRegionsIdCountriesCountryCodeDelete({
    required String? id,
    required String? countryCode,
  }) {
    final Uri $url = Uri.parse('/admin/regions/${id}/countries/${countryCode}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<AdminRegionsRes, AdminRegionsRes>($request);
  }

  @override
  Future<Response<AdminGetRegionsRegionFulfillmentOptionsRes>>
      _adminRegionsIdFulfillmentOptionsGet({required String? id}) {
    final Uri $url = Uri.parse('/admin/regions/${id}/fulfillment-options');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<AdminGetRegionsRegionFulfillmentOptionsRes,
        AdminGetRegionsRegionFulfillmentOptionsRes>($request);
  }

  @override
  Future<Response<AdminRegionsRes>> _adminRegionsIdFulfillmentProvidersPost({
    required String? id,
    required AdminPostRegionsRegionFulfillmentProvidersReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/regions/${id}/fulfillment-providers');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminRegionsRes, AdminRegionsRes>($request);
  }

  @override
  Future<Response<AdminRegionsRes>>
      _adminRegionsIdFulfillmentProvidersProviderIdDelete({
    required String? id,
    required String? providerId,
  }) {
    final Uri $url =
        Uri.parse('/admin/regions/${id}/fulfillment-providers/${providerId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<AdminRegionsRes, AdminRegionsRes>($request);
  }

  @override
  Future<Response<AdminRegionsRes>> _adminRegionsIdPaymentProvidersPost({
    required String? id,
    required AdminPostRegionsRegionPaymentProvidersReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/regions/${id}/payment-providers');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminRegionsRes, AdminRegionsRes>($request);
  }

  @override
  Future<Response<AdminRegionsRes>>
      _adminRegionsIdPaymentProvidersProviderIdDelete({
    required String? id,
    required String? providerId,
  }) {
    final Uri $url =
        Uri.parse('/admin/regions/${id}/payment-providers/${providerId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<AdminRegionsRes, AdminRegionsRes>($request);
  }

  @override
  Future<Response<AdminReservationsListRes>> _adminReservationsGet({
    List<String>? locationId,
    List<String>? inventoryItemId,
    List<String>? lineItemId,
    Object? quantity,
    Object? description,
    Object? createdAt,
    int? offset,
    int? limit,
    String? expand,
    String? fields,
  }) {
    final Uri $url = Uri.parse('/admin/reservations');
    final Map<String, dynamic> $params = <String, dynamic>{
      'location_id': locationId,
      'inventory_item_id': inventoryItemId,
      'line_item_id': lineItemId,
      'quantity': quantity,
      'description': description,
      'created_at': createdAt,
      'offset': offset,
      'limit': limit,
      'expand': expand,
      'fields': fields,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<AdminReservationsListRes, AdminReservationsListRes>($request);
  }

  @override
  Future<Response<AdminReservationsRes>> _adminReservationsPost(
      {required AdminPostReservationsReq? body}) {
    final Uri $url = Uri.parse('/admin/reservations');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminReservationsRes, AdminReservationsRes>($request);
  }

  @override
  Future<Response<AdminReservationsRes>> _adminReservationsIdGet(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/reservations/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<AdminReservationsRes, AdminReservationsRes>($request);
  }

  @override
  Future<Response<AdminReservationsRes>> _adminReservationsIdPost({
    required String? id,
    required AdminPostReservationsReservationReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/reservations/${id}');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminReservationsRes, AdminReservationsRes>($request);
  }

  @override
  Future<Response<AdminReservationsDeleteRes>> _adminReservationsIdDelete(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/reservations/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client
        .send<AdminReservationsDeleteRes, AdminReservationsDeleteRes>($request);
  }

  @override
  Future<Response<AdminReturnReasonsListRes>> _adminReturnReasonsGet() {
    final Uri $url = Uri.parse('/admin/return-reasons');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<AdminReturnReasonsListRes, AdminReturnReasonsListRes>($request);
  }

  @override
  Future<Response<AdminReturnReasonsRes>> _adminReturnReasonsPost(
      {required AdminPostReturnReasonsReq? body}) {
    final Uri $url = Uri.parse('/admin/return-reasons');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminReturnReasonsRes, AdminReturnReasonsRes>($request);
  }

  @override
  Future<Response<AdminReturnReasonsRes>> _adminReturnReasonsIdGet(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/return-reasons/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<AdminReturnReasonsRes, AdminReturnReasonsRes>($request);
  }

  @override
  Future<Response<AdminReturnReasonsRes>> _adminReturnReasonsIdPost({
    required String? id,
    required AdminPostReturnReasonsReasonReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/return-reasons/${id}');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminReturnReasonsRes, AdminReturnReasonsRes>($request);
  }

  @override
  Future<Response<AdminReturnReasonsDeleteRes>> _adminReturnReasonsIdDelete(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/return-reasons/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<AdminReturnReasonsDeleteRes,
        AdminReturnReasonsDeleteRes>($request);
  }

  @override
  Future<Response<AdminReturnsListRes>> _adminReturnsGet({
    num? limit,
    num? offset,
  }) {
    final Uri $url = Uri.parse('/admin/returns');
    final Map<String, dynamic> $params = <String, dynamic>{
      'limit': limit,
      'offset': offset,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminReturnsListRes, AdminReturnsListRes>($request);
  }

  @override
  Future<Response<AdminReturnsCancelRes>> _adminReturnsIdCancelPost(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/returns/${id}/cancel');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<AdminReturnsCancelRes, AdminReturnsCancelRes>($request);
  }

  @override
  Future<Response<AdminReturnsRes>> _adminReturnsIdReceivePost({
    required String? id,
    required AdminPostReturnsReturnReceiveReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/returns/${id}/receive');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminReturnsRes, AdminReturnsRes>($request);
  }

  @override
  Future<Response<AdminSalesChannelsListRes>> _adminSalesChannelsGet({
    String? id,
    String? name,
    String? description,
    String? q,
    String? order,
    Object? createdAt,
    Object? updatedAt,
    Object? deletedAt,
    int? offset,
    int? limit,
    String? expand,
    String? fields,
  }) {
    final Uri $url = Uri.parse('/admin/sales-channels');
    final Map<String, dynamic> $params = <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'q': q,
      'order': order,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'deleted_at': deletedAt,
      'offset': offset,
      'limit': limit,
      'expand': expand,
      'fields': fields,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<AdminSalesChannelsListRes, AdminSalesChannelsListRes>($request);
  }

  @override
  Future<Response<AdminSalesChannelsRes>> _adminSalesChannelsPost(
      {required AdminPostSalesChannelsReq? body}) {
    final Uri $url = Uri.parse('/admin/sales-channels');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminSalesChannelsRes, AdminSalesChannelsRes>($request);
  }

  @override
  Future<Response<AdminSalesChannelsRes>> _adminSalesChannelsIdGet(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/sales-channels/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<AdminSalesChannelsRes, AdminSalesChannelsRes>($request);
  }

  @override
  Future<Response<AdminSalesChannelsRes>> _adminSalesChannelsIdPost({
    required String? id,
    required AdminPostSalesChannelsSalesChannelReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/sales-channels/${id}');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminSalesChannelsRes, AdminSalesChannelsRes>($request);
  }

  @override
  Future<Response<AdminSalesChannelsDeleteRes>> _adminSalesChannelsIdDelete(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/sales-channels/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<AdminSalesChannelsDeleteRes,
        AdminSalesChannelsDeleteRes>($request);
  }

  @override
  Future<Response<AdminSalesChannelsRes>>
      _adminSalesChannelsIdProductsBatchPost({
    required String? id,
    required AdminPostSalesChannelsChannelProductsBatchReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/sales-channels/${id}/products/batch');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminSalesChannelsRes, AdminSalesChannelsRes>($request);
  }

  @override
  Future<Response<AdminSalesChannelsRes>>
      _adminSalesChannelsIdProductsBatchDelete({
    required String? id,
    required AdminDeleteSalesChannelsChannelProductsBatchReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/sales-channels/${id}/products/batch');
    final $body = body;
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminSalesChannelsRes, AdminSalesChannelsRes>($request);
  }

  @override
  Future<Response<AdminSalesChannelsRes>>
      _adminSalesChannelsIdStockLocationsPost({
    required String? id,
    required AdminPostSalesChannelsChannelStockLocationsReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/sales-channels/${id}/stock-locations');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminSalesChannelsRes, AdminSalesChannelsRes>($request);
  }

  @override
  Future<Response<AdminSalesChannelsDeleteLocationRes>>
      _adminSalesChannelsIdStockLocationsDelete({
    required String? id,
    required AdminDeleteSalesChannelsChannelStockLocationsReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/sales-channels/${id}/stock-locations');
    final $body = body;
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminSalesChannelsDeleteLocationRes,
        AdminSalesChannelsDeleteLocationRes>($request);
  }

  @override
  Future<Response<AdminShippingOptionsListRes>> _adminShippingOptionsGet({
    String? regionId,
    bool? isReturn,
    bool? adminOnly,
  }) {
    final Uri $url = Uri.parse('/admin/shipping-options');
    final Map<String, dynamic> $params = <String, dynamic>{
      'region_id': regionId,
      'is_return': isReturn,
      'admin_only': adminOnly,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminShippingOptionsListRes,
        AdminShippingOptionsListRes>($request);
  }

  @override
  Future<Response<AdminShippingOptionsRes>> _adminShippingOptionsPost(
      {required AdminPostShippingOptionsReq? body}) {
    final Uri $url = Uri.parse('/admin/shipping-options');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<AdminShippingOptionsRes, AdminShippingOptionsRes>($request);
  }

  @override
  Future<Response<AdminShippingOptionsRes>> _adminShippingOptionsIdGet(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/shipping-options/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<AdminShippingOptionsRes, AdminShippingOptionsRes>($request);
  }

  @override
  Future<Response<AdminShippingOptionsRes>> _adminShippingOptionsIdPost({
    required String? id,
    required AdminPostShippingOptionsOptionReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/shipping-options/${id}');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<AdminShippingOptionsRes, AdminShippingOptionsRes>($request);
  }

  @override
  Future<Response<AdminShippingOptionsDeleteRes>> _adminShippingOptionsIdDelete(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/shipping-options/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<AdminShippingOptionsDeleteRes,
        AdminShippingOptionsDeleteRes>($request);
  }

  @override
  Future<Response<AdminShippingProfilesListRes>> _adminShippingProfilesGet() {
    final Uri $url = Uri.parse('/admin/shipping-profiles');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<AdminShippingProfilesListRes,
        AdminShippingProfilesListRes>($request);
  }

  @override
  Future<Response<AdminShippingProfilesRes>> _adminShippingProfilesPost(
      {required AdminPostShippingProfilesReq? body}) {
    final Uri $url = Uri.parse('/admin/shipping-profiles');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<AdminShippingProfilesRes, AdminShippingProfilesRes>($request);
  }

  @override
  Future<Response<AdminShippingProfilesRes>> _adminShippingProfilesIdGet(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/shipping-profiles/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<AdminShippingProfilesRes, AdminShippingProfilesRes>($request);
  }

  @override
  Future<Response<AdminShippingProfilesRes>> _adminShippingProfilesIdPost({
    required String? id,
    required AdminPostShippingProfilesProfileReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/shipping-profiles/${id}');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<AdminShippingProfilesRes, AdminShippingProfilesRes>($request);
  }

  @override
  Future<Response<AdminDeleteShippingProfileRes>>
      _adminShippingProfilesIdDelete({required String? id}) {
    final Uri $url = Uri.parse('/admin/shipping-profiles/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<AdminDeleteShippingProfileRes,
        AdminDeleteShippingProfileRes>($request);
  }

  @override
  Future<Response<AdminStockLocationsListRes>> _adminStockLocationsGet({
    String? id,
    String? name,
    String? order,
    Object? createdAt,
    Object? updatedAt,
    Object? deletedAt,
    int? offset,
    int? limit,
    String? expand,
    String? fields,
  }) {
    final Uri $url = Uri.parse('/admin/stock-locations');
    final Map<String, dynamic> $params = <String, dynamic>{
      'id': id,
      'name': name,
      'order': order,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'deleted_at': deletedAt,
      'offset': offset,
      'limit': limit,
      'expand': expand,
      'fields': fields,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<AdminStockLocationsListRes, AdminStockLocationsListRes>($request);
  }

  @override
  Future<Response<AdminStockLocationsRes>> _adminStockLocationsPost({
    String? expand,
    String? fields,
    required AdminPostStockLocationsReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/stock-locations');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client
        .send<AdminStockLocationsRes, AdminStockLocationsRes>($request);
  }

  @override
  Future<Response<AdminStockLocationsRes>> _adminStockLocationsIdGet({
    required String? id,
    String? expand,
    String? fields,
  }) {
    final Uri $url = Uri.parse('/admin/stock-locations/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<AdminStockLocationsRes, AdminStockLocationsRes>($request);
  }

  @override
  Future<Response<AdminStockLocationsRes>> _adminStockLocationsIdPost({
    required String? id,
    String? expand,
    String? fields,
    required AdminPostStockLocationsLocationReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/stock-locations/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client
        .send<AdminStockLocationsRes, AdminStockLocationsRes>($request);
  }

  @override
  Future<Response<AdminStockLocationsDeleteRes>> _adminStockLocationsIdDelete(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/stock-locations/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<AdminStockLocationsDeleteRes,
        AdminStockLocationsDeleteRes>($request);
  }

  @override
  Future<Response<AdminExtendedStoresRes>> _adminStoreGet() {
    final Uri $url = Uri.parse('/admin/store');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<AdminExtendedStoresRes, AdminExtendedStoresRes>($request);
  }

  @override
  Future<Response<AdminStoresRes>> _adminStorePost(
      {required AdminPostStoreReq? body}) {
    final Uri $url = Uri.parse('/admin/store');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminStoresRes, AdminStoresRes>($request);
  }

  @override
  Future<Response<AdminStoresRes>> _adminStoreCurrenciesCodePost(
      {required String? code}) {
    final Uri $url = Uri.parse('/admin/store/currencies/${code}');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<AdminStoresRes, AdminStoresRes>($request);
  }

  @override
  Future<Response<AdminStoresRes>> _adminStoreCurrenciesCodeDelete(
      {required String? code}) {
    final Uri $url = Uri.parse('/admin/store/currencies/${code}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<AdminStoresRes, AdminStoresRes>($request);
  }

  @override
  Future<Response<AdminPaymentProvidersList>> _adminStorePaymentProvidersGet() {
    final Uri $url = Uri.parse('/admin/store/payment-providers');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<AdminPaymentProvidersList, AdminPaymentProvidersList>($request);
  }

  @override
  Future<Response<AdminTaxProvidersList>> _adminStoreTaxProvidersGet() {
    final Uri $url = Uri.parse('/admin/store/tax-providers');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<AdminTaxProvidersList, AdminTaxProvidersList>($request);
  }

  @override
  Future<Response<AdminSwapsListRes>> _adminSwapsGet({
    num? limit,
    num? offset,
  }) {
    final Uri $url = Uri.parse('/admin/swaps');
    final Map<String, dynamic> $params = <String, dynamic>{
      'limit': limit,
      'offset': offset,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminSwapsListRes, AdminSwapsListRes>($request);
  }

  @override
  Future<Response<AdminSwapsRes>> _adminSwapsIdGet({required String? id}) {
    final Uri $url = Uri.parse('/admin/swaps/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<AdminSwapsRes, AdminSwapsRes>($request);
  }

  @override
  Future<Response<AdminTaxRatesListRes>> _adminTaxRatesGet({
    String? name,
    Object? regionId,
    String? code,
    Object? rate,
    int? offset,
    int? limit,
    List<String>? fields,
    List<String>? expand,
  }) {
    final Uri $url = Uri.parse('/admin/tax-rates');
    final Map<String, dynamic> $params = <String, dynamic>{
      'name': name,
      'region_id': regionId,
      'code': code,
      'rate': rate,
      'offset': offset,
      'limit': limit,
      'fields': fields,
      'expand': expand,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminTaxRatesListRes, AdminTaxRatesListRes>($request);
  }

  @override
  Future<Response<AdminTaxRatesRes>> _adminTaxRatesPost({
    List<String>? fields,
    List<String>? expand,
    required AdminPostTaxRatesReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/tax-rates');
    final Map<String, dynamic> $params = <String, dynamic>{
      'fields': fields,
      'expand': expand,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<AdminTaxRatesRes, AdminTaxRatesRes>($request);
  }

  @override
  Future<Response<AdminTaxRatesRes>> _adminTaxRatesIdGet({
    required String? id,
    List<String>? fields,
    List<String>? expand,
  }) {
    final Uri $url = Uri.parse('/admin/tax-rates/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'fields': fields,
      'expand': expand,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminTaxRatesRes, AdminTaxRatesRes>($request);
  }

  @override
  Future<Response<AdminTaxRatesRes>> _adminTaxRatesIdPost({
    required String? id,
    List<String>? fields,
    List<String>? expand,
    required AdminPostTaxRatesTaxRateReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/tax-rates/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'fields': fields,
      'expand': expand,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<AdminTaxRatesRes, AdminTaxRatesRes>($request);
  }

  @override
  Future<Response<AdminTaxRatesDeleteRes>> _adminTaxRatesIdDelete(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/tax-rates/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client
        .send<AdminTaxRatesDeleteRes, AdminTaxRatesDeleteRes>($request);
  }

  @override
  Future<Response<AdminTaxRatesRes>> _adminTaxRatesIdProductTypesBatchPost({
    required String? id,
    List<String>? fields,
    List<String>? expand,
    required AdminPostTaxRatesTaxRateProductTypesReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/tax-rates/${id}/product-types/batch');
    final Map<String, dynamic> $params = <String, dynamic>{
      'fields': fields,
      'expand': expand,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<AdminTaxRatesRes, AdminTaxRatesRes>($request);
  }

  @override
  Future<Response<AdminTaxRatesRes>> _adminTaxRatesIdProductTypesBatchDelete({
    required String? id,
    List<String>? fields,
    List<String>? expand,
    required AdminDeleteTaxRatesTaxRateProductTypesReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/tax-rates/${id}/product-types/batch');
    final Map<String, dynamic> $params = <String, dynamic>{
      'fields': fields,
      'expand': expand,
    };
    final $body = body;
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<AdminTaxRatesRes, AdminTaxRatesRes>($request);
  }

  @override
  Future<Response<AdminTaxRatesRes>> _adminTaxRatesIdProductsBatchPost({
    required String? id,
    List<String>? fields,
    List<String>? expand,
    required AdminPostTaxRatesTaxRateProductsReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/tax-rates/${id}/products/batch');
    final Map<String, dynamic> $params = <String, dynamic>{
      'fields': fields,
      'expand': expand,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<AdminTaxRatesRes, AdminTaxRatesRes>($request);
  }

  @override
  Future<Response<AdminTaxRatesRes>> _adminTaxRatesIdProductsBatchDelete({
    required String? id,
    List<String>? fields,
    List<String>? expand,
    required AdminDeleteTaxRatesTaxRateProductsReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/tax-rates/${id}/products/batch');
    final Map<String, dynamic> $params = <String, dynamic>{
      'fields': fields,
      'expand': expand,
    };
    final $body = body;
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<AdminTaxRatesRes, AdminTaxRatesRes>($request);
  }

  @override
  Future<Response<AdminTaxRatesRes>> _adminTaxRatesIdShippingOptionsBatchPost({
    required String? id,
    List<String>? fields,
    List<String>? expand,
    required AdminPostTaxRatesTaxRateShippingOptionsReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/tax-rates/${id}/shipping-options/batch');
    final Map<String, dynamic> $params = <String, dynamic>{
      'fields': fields,
      'expand': expand,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<AdminTaxRatesRes, AdminTaxRatesRes>($request);
  }

  @override
  Future<Response<AdminTaxRatesRes>>
      _adminTaxRatesIdShippingOptionsBatchDelete({
    required String? id,
    List<String>? fields,
    List<String>? expand,
    required AdminDeleteTaxRatesTaxRateShippingOptionsReq? body,
  }) {
    final Uri $url = Uri.parse('/admin/tax-rates/${id}/shipping-options/batch');
    final Map<String, dynamic> $params = <String, dynamic>{
      'fields': fields,
      'expand': expand,
    };
    final $body = body;
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<AdminTaxRatesRes, AdminTaxRatesRes>($request);
  }

  @override
  Future<Response<AdminUploadsRes>> _adminUploadsPost({List<int>? files}) {
    final Uri $url = Uri.parse('/admin/uploads');
    final List<PartValue> $parts = <PartValue>[
      PartValueFile<List<int>?>(
        'files',
        files,
      )
    ];
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
    );
    return client.send<AdminUploadsRes, AdminUploadsRes>($request);
  }

  @override
  Future<Response<AdminDeleteUploadsRes>> _adminUploadsDelete(
      {required AdminDeleteUploadsReq? body}) {
    final Uri $url = Uri.parse('/admin/uploads');
    final $body = body;
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminDeleteUploadsRes, AdminDeleteUploadsRes>($request);
  }

  @override
  Future<Response<AdminUploadsDownloadUrlRes>> _adminUploadsDownloadUrlPost(
      {required AdminPostUploadsDownloadUrlReq? body}) {
    final Uri $url = Uri.parse('/admin/uploads/download-url');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<AdminUploadsDownloadUrlRes, AdminUploadsDownloadUrlRes>($request);
  }

  @override
  Future<Response<AdminUploadsRes>> _adminUploadsProtectedPost(
      {List<int>? files}) {
    final Uri $url = Uri.parse('/admin/uploads/protected');
    final List<PartValue> $parts = <PartValue>[
      PartValueFile<List<int>?>(
        'files',
        files,
      )
    ];
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
    );
    return client.send<AdminUploadsRes, AdminUploadsRes>($request);
  }

  @override
  Future<Response<AdminUsersListRes>> _adminUsersGet() {
    final Uri $url = Uri.parse('/admin/users');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<AdminUsersListRes, AdminUsersListRes>($request);
  }

  @override
  Future<Response<AdminUserRes>> _adminUsersPost(
      {required AdminCreateUserRequest? body}) {
    final Uri $url = Uri.parse('/admin/users');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminUserRes, AdminUserRes>($request);
  }

  @override
  Future<Response<dynamic>> _adminUsersPasswordTokenPost(
      {required AdminResetPasswordTokenRequest? body}) {
    final Uri $url = Uri.parse('/admin/users/password-token');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<AdminUserRes>> _adminUsersResetPasswordPost(
      {required AdminResetPasswordRequest? body}) {
    final Uri $url = Uri.parse('/admin/users/reset-password');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminUserRes, AdminUserRes>($request);
  }

  @override
  Future<Response<AdminUserRes>> _adminUsersIdGet({required String? id}) {
    final Uri $url = Uri.parse('/admin/users/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<AdminUserRes, AdminUserRes>($request);
  }

  @override
  Future<Response<AdminUserRes>> _adminUsersIdPost({
    required String? id,
    required AdminUpdateUserRequest? body,
  }) {
    final Uri $url = Uri.parse('/admin/users/${id}');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AdminUserRes, AdminUserRes>($request);
  }

  @override
  Future<Response<AdminDeleteUserRes>> _adminUsersIdDelete(
      {required String? id}) {
    final Uri $url = Uri.parse('/admin/users/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<AdminDeleteUserRes, AdminDeleteUserRes>($request);
  }

  @override
  Future<Response<AdminVariantsListRes>> _adminVariantsGet({
    Object? id,
    String? expand,
    String? fields,
    num? offset,
    num? limit,
    String? cartId,
    String? regionId,
    String? currencyCode,
    String? customerId,
    Object? title,
    Object? inventoryQuantity,
  }) {
    final Uri $url = Uri.parse('/admin/variants');
    final Map<String, dynamic> $params = <String, dynamic>{
      'id': id,
      'expand': expand,
      'fields': fields,
      'offset': offset,
      'limit': limit,
      'cart_id': cartId,
      'region_id': regionId,
      'currency_code': currencyCode,
      'customer_id': customerId,
      'title': title,
      'inventory_quantity': inventoryQuantity,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminVariantsListRes, AdminVariantsListRes>($request);
  }

  @override
  Future<Response<AdminVariantsRes>> _adminVariantsIdGet({
    required String? id,
    String? expand,
    String? fields,
  }) {
    final Uri $url = Uri.parse('/admin/variants/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'expand': expand,
      'fields': fields,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AdminVariantsRes, AdminVariantsRes>($request);
  }

  @override
  Future<Response<AdminGetVariantsVariantInventoryRes>>
      _adminVariantsIdInventoryGet({required String? id}) {
    final Uri $url = Uri.parse('/admin/variants/${id}/inventory');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<AdminGetVariantsVariantInventoryRes,
        AdminGetVariantsVariantInventoryRes>($request);
  }

  @override
  Future<Response<StoreAuthRes>> _storeAuthGet() {
    final Uri $url = Uri.parse('/store/auth');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<StoreAuthRes, StoreAuthRes>($request);
  }

  @override
  Future<Response<StoreAuthRes>> _storeAuthPost(
      {required StorePostAuthReq? body}) {
    final Uri $url = Uri.parse('/store/auth');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<StoreAuthRes, StoreAuthRes>($request);
  }

  @override
  Future<Response<dynamic>> _storeAuthDelete() {
    final Uri $url = Uri.parse('/store/auth');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<StoreBearerAuthRes>> _storeAuthTokenPost(
      {required StorePostAuthReq? body}) {
    final Uri $url = Uri.parse('/store/auth/token');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<StoreBearerAuthRes, StoreBearerAuthRes>($request);
  }

  @override
  Future<Response<StoreGetAuthEmailRes>> _storeAuthEmailGet(
      {required String? email}) {
    final Uri $url = Uri.parse('/store/auth/${email}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<StoreGetAuthEmailRes, StoreGetAuthEmailRes>($request);
  }

  @override
  Future<Response<StoreCartsRes>> _storeCartsPost(
      {required StorePostCartReq? body}) {
    final Uri $url = Uri.parse('/store/carts');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<StoreCartsRes, StoreCartsRes>($request);
  }

  @override
  Future<Response<StoreCartsRes>> _storeCartsIdGet({required String? id}) {
    final Uri $url = Uri.parse('/store/carts/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<StoreCartsRes, StoreCartsRes>($request);
  }

  @override
  Future<Response<StoreCartsRes>> _storeCartsIdPost({
    required String? id,
    required StorePostCartsCartReq? body,
  }) {
    final Uri $url = Uri.parse('/store/carts/${id}');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<StoreCartsRes, StoreCartsRes>($request);
  }

  @override
  Future<Response<StoreCompleteCartRes>> _storeCartsIdCompletePost(
      {required String? id}) {
    final Uri $url = Uri.parse('/store/carts/${id}/complete');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<StoreCompleteCartRes, StoreCompleteCartRes>($request);
  }

  @override
  Future<Response<StoreCartsRes>> _storeCartsIdDiscountsCodeDelete({
    required String? id,
    required String? code,
  }) {
    final Uri $url = Uri.parse('/store/carts/${id}/discounts/${code}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<StoreCartsRes, StoreCartsRes>($request);
  }

  @override
  Future<Response<StoreCartsRes>> _storeCartsIdLineItemsPost({
    required String? id,
    required StorePostCartsCartLineItemsReq? body,
  }) {
    final Uri $url = Uri.parse('/store/carts/${id}/line-items');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<StoreCartsRes, StoreCartsRes>($request);
  }

  @override
  Future<Response<StoreCartsRes>> _storeCartsIdLineItemsLineIdPost({
    required String? id,
    required String? lineId,
    required StorePostCartsCartLineItemsItemReq? body,
  }) {
    final Uri $url = Uri.parse('/store/carts/${id}/line-items/${lineId}');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<StoreCartsRes, StoreCartsRes>($request);
  }

  @override
  Future<Response<StoreCartsRes>> _storeCartsIdLineItemsLineIdDelete({
    required String? id,
    required String? lineId,
  }) {
    final Uri $url = Uri.parse('/store/carts/${id}/line-items/${lineId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<StoreCartsRes, StoreCartsRes>($request);
  }

  @override
  Future<Response<StoreCartsRes>> _storeCartsIdPaymentSessionPost({
    required String? id,
    required StorePostCartsCartPaymentSessionReq? body,
  }) {
    final Uri $url = Uri.parse('/store/carts/${id}/payment-session');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<StoreCartsRes, StoreCartsRes>($request);
  }

  @override
  Future<Response<StoreCartsRes>> _storeCartsIdPaymentSessionsPost(
      {required String? id}) {
    final Uri $url = Uri.parse('/store/carts/${id}/payment-sessions');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<StoreCartsRes, StoreCartsRes>($request);
  }

  @override
  Future<Response<StoreCartsRes>> _storeCartsIdPaymentSessionsProviderIdPost({
    required String? id,
    required String? providerId,
    required StorePostCartsCartPaymentSessionUpdateReq? body,
  }) {
    final Uri $url =
        Uri.parse('/store/carts/${id}/payment-sessions/${providerId}');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<StoreCartsRes, StoreCartsRes>($request);
  }

  @override
  Future<Response<StoreCartsRes>> _storeCartsIdPaymentSessionsProviderIdDelete({
    required String? id,
    required String? providerId,
  }) {
    final Uri $url =
        Uri.parse('/store/carts/${id}/payment-sessions/${providerId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<StoreCartsRes, StoreCartsRes>($request);
  }

  @override
  Future<Response<StoreCartsRes>>
      _storeCartsIdPaymentSessionsProviderIdRefreshPost({
    required String? id,
    required String? providerId,
  }) {
    final Uri $url =
        Uri.parse('/store/carts/${id}/payment-sessions/${providerId}/refresh');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<StoreCartsRes, StoreCartsRes>($request);
  }

  @override
  Future<Response<StoreCartsRes>> _storeCartsIdShippingMethodsPost({
    required String? id,
    required StorePostCartsCartShippingMethodReq? body,
  }) {
    final Uri $url = Uri.parse('/store/carts/${id}/shipping-methods');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<StoreCartsRes, StoreCartsRes>($request);
  }

  @override
  Future<Response<StoreCartsRes>> _storeCartsIdTaxesPost(
      {required String? id}) {
    final Uri $url = Uri.parse('/store/carts/${id}/taxes');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<StoreCartsRes, StoreCartsRes>($request);
  }

  @override
  Future<Response<StoreCollectionsListRes>> _storeCollectionsGet({
    int? offset,
    int? limit,
    List<String>? handle,
    Object? createdAt,
    Object? updatedAt,
  }) {
    final Uri $url = Uri.parse('/store/collections');
    final Map<String, dynamic> $params = <String, dynamic>{
      'offset': offset,
      'limit': limit,
      'handle': handle,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<StoreCollectionsListRes, StoreCollectionsListRes>($request);
  }

  @override
  Future<Response<StoreCollectionsRes>> _storeCollectionsIdGet(
      {required String? id}) {
    final Uri $url = Uri.parse('/store/collections/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<StoreCollectionsRes, StoreCollectionsRes>($request);
  }

  @override
  Future<Response<StoreCustomersRes>> _storeCustomersPost(
      {required StorePostCustomersReq? body}) {
    final Uri $url = Uri.parse('/store/customers');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<StoreCustomersRes, StoreCustomersRes>($request);
  }

  @override
  Future<Response<StoreCustomersRes>> _storeCustomersMeGet() {
    final Uri $url = Uri.parse('/store/customers/me');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<StoreCustomersRes, StoreCustomersRes>($request);
  }

  @override
  Future<Response<StoreCustomersRes>> _storeCustomersMePost(
      {required StorePostCustomersCustomerReq? body}) {
    final Uri $url = Uri.parse('/store/customers/me');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<StoreCustomersRes, StoreCustomersRes>($request);
  }

  @override
  Future<Response<StoreCustomersRes>> _storeCustomersMeAddressesPost(
      {required StorePostCustomersCustomerAddressesReq? body}) {
    final Uri $url = Uri.parse('/store/customers/me/addresses');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<StoreCustomersRes, StoreCustomersRes>($request);
  }

  @override
  Future<Response<StoreCustomersRes>> _storeCustomersMeAddressesAddressIdPost({
    required String? addressId,
    required Object? body,
  }) {
    final Uri $url = Uri.parse('/store/customers/me/addresses/${addressId}');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<StoreCustomersRes, StoreCustomersRes>($request);
  }

  @override
  Future<Response<StoreCustomersRes>> _storeCustomersMeAddressesAddressIdDelete(
      {required String? addressId}) {
    final Uri $url = Uri.parse('/store/customers/me/addresses/${addressId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<StoreCustomersRes, StoreCustomersRes>($request);
  }

  @override
  Future<Response<StoreCustomersListOrdersRes>> _storeCustomersMeOrdersGet({
    String? q,
    String? id,
    List<String>? status,
    List<String>? fulfillmentStatus,
    List<String>? paymentStatus,
    String? displayId,
    String? cartId,
    String? email,
    String? regionId,
    String? currencyCode,
    String? taxRate,
    Object? createdAt,
    Object? updatedAt,
    Object? canceledAt,
    int? limit,
    int? offset,
    String? expand,
    String? fields,
  }) {
    final Uri $url = Uri.parse('/store/customers/me/orders');
    final Map<String, dynamic> $params = <String, dynamic>{
      'q': q,
      'id': id,
      'status': status,
      'fulfillment_status': fulfillmentStatus,
      'payment_status': paymentStatus,
      'display_id': displayId,
      'cart_id': cartId,
      'email': email,
      'region_id': regionId,
      'currency_code': currencyCode,
      'tax_rate': taxRate,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'canceled_at': canceledAt,
      'limit': limit,
      'offset': offset,
      'expand': expand,
      'fields': fields,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<StoreCustomersListOrdersRes,
        StoreCustomersListOrdersRes>($request);
  }

  @override
  Future<Response<StoreCustomersListPaymentMethodsRes>>
      _storeCustomersMePaymentMethodsGet() {
    final Uri $url = Uri.parse('/store/customers/me/payment-methods');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<StoreCustomersListPaymentMethodsRes,
        StoreCustomersListPaymentMethodsRes>($request);
  }

  @override
  Future<Response<StoreCustomersResetPasswordRes>>
      _storeCustomersPasswordResetPost(
          {required StorePostCustomersResetPasswordReq? body}) {
    final Uri $url = Uri.parse('/store/customers/password-reset');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<StoreCustomersResetPasswordRes,
        StoreCustomersResetPasswordRes>($request);
  }

  @override
  Future<Response<dynamic>> _storeCustomersPasswordTokenPost(
      {required StorePostCustomersCustomerPasswordTokenReq? body}) {
    final Uri $url = Uri.parse('/store/customers/password-token');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<StoreGiftCardsRes>> _storeGiftCardsCodeGet(
      {required String? code}) {
    final Uri $url = Uri.parse('/store/gift-cards/${code}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<StoreGiftCardsRes, StoreGiftCardsRes>($request);
  }

  @override
  Future<Response<StoreOrderEditsRes>> _storeOrderEditsIdGet(
      {required String? id}) {
    final Uri $url = Uri.parse('/store/order-edits/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<StoreOrderEditsRes, StoreOrderEditsRes>($request);
  }

  @override
  Future<Response<StoreOrderEditsRes>> _storeOrderEditsIdCompletePost(
      {required String? id}) {
    final Uri $url = Uri.parse('/store/order-edits/${id}/complete');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<StoreOrderEditsRes, StoreOrderEditsRes>($request);
  }

  @override
  Future<Response<StoreOrderEditsRes>> _storeOrderEditsIdDeclinePost({
    required String? id,
    required StorePostOrderEditsOrderEditDecline? body,
  }) {
    final Uri $url = Uri.parse('/store/order-edits/${id}/decline');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<StoreOrderEditsRes, StoreOrderEditsRes>($request);
  }

  @override
  Future<Response<StoreOrdersRes>> _storeOrdersGet({
    required num? displayId,
    String? fields,
    String? expand,
    required String? email,
    Object? shippingAddress,
  }) {
    final Uri $url = Uri.parse('/store/orders');
    final Map<String, dynamic> $params = <String, dynamic>{
      'display_id': displayId,
      'fields': fields,
      'expand': expand,
      'email': email,
      'shipping_address': shippingAddress,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<StoreOrdersRes, StoreOrdersRes>($request);
  }

  @override
  Future<Response<dynamic>> _storeOrdersBatchCustomerTokenPost(
      {required StorePostCustomersCustomerOrderClaimReq? body}) {
    final Uri $url = Uri.parse('/store/orders/batch/customer/token');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<StoreOrdersRes>> _storeOrdersCartCartIdGet(
      {required String? cartId}) {
    final Uri $url = Uri.parse('/store/orders/cart/${cartId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<StoreOrdersRes, StoreOrdersRes>($request);
  }

  @override
  Future<Response<dynamic>> _storeOrdersCustomerConfirmPost(
      {required StorePostCustomersCustomerAcceptClaimReq? body}) {
    final Uri $url = Uri.parse('/store/orders/customer/confirm');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<StoreOrdersRes>> _storeOrdersIdGet({
    required String? id,
    String? fields,
    String? expand,
  }) {
    final Uri $url = Uri.parse('/store/orders/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'fields': fields,
      'expand': expand,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<StoreOrdersRes, StoreOrdersRes>($request);
  }

  @override
  Future<Response<StorePaymentCollectionsRes>> _storePaymentCollectionsIdGet({
    required String? id,
    String? fields,
    String? expand,
  }) {
    final Uri $url = Uri.parse('/store/payment-collections/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'fields': fields,
      'expand': expand,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<StorePaymentCollectionsRes, StorePaymentCollectionsRes>($request);
  }

  @override
  Future<Response<StorePaymentCollectionsRes>>
      _storePaymentCollectionsIdSessionsPost({
    required String? id,
    required StorePaymentCollectionSessionsReq? body,
  }) {
    final Uri $url = Uri.parse('/store/payment-collections/${id}/sessions');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<StorePaymentCollectionsRes, StorePaymentCollectionsRes>($request);
  }

  @override
  Future<Response<StorePaymentCollectionsRes>>
      _storePaymentCollectionsIdSessionsBatchPost({
    required String? id,
    required StorePostPaymentCollectionsBatchSessionsReq? body,
  }) {
    final Uri $url =
        Uri.parse('/store/payment-collections/${id}/sessions/batch');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<StorePaymentCollectionsRes, StorePaymentCollectionsRes>($request);
  }

  @override
  Future<Response<StorePaymentCollectionsRes>>
      _storePaymentCollectionsIdSessionsBatchAuthorizePost({
    required String? id,
    required StorePostPaymentCollectionsBatchSessionsAuthorizeReq? body,
  }) {
    final Uri $url =
        Uri.parse('/store/payment-collections/${id}/sessions/batch/authorize');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<StorePaymentCollectionsRes, StorePaymentCollectionsRes>($request);
  }

  @override
  Future<Response<StorePaymentCollectionsSessionRes>>
      _storePaymentCollectionsIdSessionsSessionIdPost({
    required String? id,
    required String? sessionId,
  }) {
    final Uri $url =
        Uri.parse('/store/payment-collections/${id}/sessions/${sessionId}');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<StorePaymentCollectionsSessionRes,
        StorePaymentCollectionsSessionRes>($request);
  }

  @override
  Future<Response<StorePaymentCollectionsSessionRes>>
      _storePaymentCollectionsIdSessionsSessionIdAuthorizePost({
    required String? id,
    required String? sessionId,
  }) {
    final Uri $url = Uri.parse(
        '/store/payment-collections/${id}/sessions/${sessionId}/authorize');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<StorePaymentCollectionsSessionRes,
        StorePaymentCollectionsSessionRes>($request);
  }

  @override
  Future<Response<StoreGetProductCategoriesRes>> _storeProductCategoriesGet({
    String? q,
    String? handle,
    String? parentCategoryId,
    bool? includeDescendantsTree,
    int? offset,
    int? limit,
    String? expand,
    String? fields,
  }) {
    final Uri $url = Uri.parse('/store/product-categories');
    final Map<String, dynamic> $params = <String, dynamic>{
      'q': q,
      'handle': handle,
      'parent_category_id': parentCategoryId,
      'include_descendants_tree': includeDescendantsTree,
      'offset': offset,
      'limit': limit,
      'expand': expand,
      'fields': fields,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<StoreGetProductCategoriesRes,
        StoreGetProductCategoriesRes>($request);
  }

  @override
  Future<Response<StoreGetProductCategoriesCategoryRes>>
      _storeProductCategoriesIdGet({
    required String? id,
    String? fields,
    String? expand,
  }) {
    final Uri $url = Uri.parse('/store/product-categories/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'fields': fields,
      'expand': expand,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<StoreGetProductCategoriesCategoryRes,
        StoreGetProductCategoriesCategoryRes>($request);
  }

  @override
  Future<Response<StoreProductTagsListRes>> _storeProductTagsGet({
    int? limit,
    int? offset,
    String? order,
    String? discountConditionId,
    List<String>? value,
    List<String>? id,
    String? q,
    Object? createdAt,
    Object? updatedAt,
  }) {
    final Uri $url = Uri.parse('/store/product-tags');
    final Map<String, dynamic> $params = <String, dynamic>{
      'limit': limit,
      'offset': offset,
      'order': order,
      'discount_condition_id': discountConditionId,
      'value': value,
      'id': id,
      'q': q,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<StoreProductTagsListRes, StoreProductTagsListRes>($request);
  }

  @override
  Future<Response<StoreProductTypesListRes>> _storeProductTypesGet({
    int? limit,
    int? offset,
    String? order,
    String? discountConditionId,
    List<String>? value,
    List<String>? id,
    String? q,
    Object? createdAt,
    Object? updatedAt,
  }) {
    final Uri $url = Uri.parse('/store/product-types');
    final Map<String, dynamic> $params = <String, dynamic>{
      'limit': limit,
      'offset': offset,
      'order': order,
      'discount_condition_id': discountConditionId,
      'value': value,
      'id': id,
      'q': q,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<StoreProductTypesListRes, StoreProductTypesListRes>($request);
  }

  @override
  Future<Response<StoreProductsListRes>> _storeProductsGet({
    String? q,
    Object? id,
    List<String>? salesChannelId,
    List<String>? collectionId,
    List<String>? typeId,
    List<String>? tags,
    String? title,
    String? description,
    String? handle,
    bool? isGiftcard,
    Object? createdAt,
    Object? updatedAt,
    List<String>? categoryId,
    bool? includeCategoryChildren,
    int? offset,
    int? limit,
    String? expand,
    String? fields,
    String? order,
    String? cartId,
    String? regionId,
    String? currencyCode,
  }) {
    final Uri $url = Uri.parse('/store/products');
    final Map<String, dynamic> $params = <String, dynamic>{
      'q': q,
      'id': id,
      'sales_channel_id': salesChannelId,
      'collection_id': collectionId,
      'type_id': typeId,
      'tags': tags,
      'title': title,
      'description': description,
      'handle': handle,
      'is_giftcard': isGiftcard,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'category_id': categoryId,
      'include_category_children': includeCategoryChildren,
      'offset': offset,
      'limit': limit,
      'expand': expand,
      'fields': fields,
      'order': order,
      'cart_id': cartId,
      'region_id': regionId,
      'currency_code': currencyCode,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<StoreProductsListRes, StoreProductsListRes>($request);
  }

  @override
  Future<Response<StorePostSearchRes>> _storeProductsSearchPost(
      {required StorePostSearchReq? body}) {
    final Uri $url = Uri.parse('/store/products/search');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<StorePostSearchRes, StorePostSearchRes>($request);
  }

  @override
  Future<Response<StoreProductsRes>> _storeProductsIdGet({
    required String? id,
    String? salesChannelId,
    String? cartId,
    String? regionId,
    String? expand,
    String? fields,
    String? currencyCode,
  }) {
    final Uri $url = Uri.parse('/store/products/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'sales_channel_id': salesChannelId,
      'cart_id': cartId,
      'region_id': regionId,
      'expand': expand,
      'fields': fields,
      'currency_code': currencyCode,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<StoreProductsRes, StoreProductsRes>($request);
  }

  @override
  Future<Response<StoreRegionsListRes>> _storeRegionsGet({
    int? offset,
    int? limit,
    Object? createdAt,
    Object? updatedAt,
  }) {
    final Uri $url = Uri.parse('/store/regions');
    final Map<String, dynamic> $params = <String, dynamic>{
      'offset': offset,
      'limit': limit,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<StoreRegionsListRes, StoreRegionsListRes>($request);
  }

  @override
  Future<Response<StoreRegionsRes>> _storeRegionsIdGet({required String? id}) {
    final Uri $url = Uri.parse('/store/regions/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<StoreRegionsRes, StoreRegionsRes>($request);
  }

  @override
  Future<Response<StoreReturnReasonsListRes>> _storeReturnReasonsGet() {
    final Uri $url = Uri.parse('/store/return-reasons');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<StoreReturnReasonsListRes, StoreReturnReasonsListRes>($request);
  }

  @override
  Future<Response<StoreReturnReasonsRes>> _storeReturnReasonsIdGet(
      {required String? id}) {
    final Uri $url = Uri.parse('/store/return-reasons/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<StoreReturnReasonsRes, StoreReturnReasonsRes>($request);
  }

  @override
  Future<Response<StoreReturnsRes>> _storeReturnsPost(
      {required StorePostReturnsReq? body}) {
    final Uri $url = Uri.parse('/store/returns');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<StoreReturnsRes, StoreReturnsRes>($request);
  }

  @override
  Future<Response<StoreShippingOptionsListRes>> _storeShippingOptionsGet({
    bool? isReturn,
    String? productIds,
    String? regionId,
  }) {
    final Uri $url = Uri.parse('/store/shipping-options');
    final Map<String, dynamic> $params = <String, dynamic>{
      'is_return': isReturn,
      'product_ids': productIds,
      'region_id': regionId,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<StoreShippingOptionsListRes,
        StoreShippingOptionsListRes>($request);
  }

  @override
  Future<Response<StoreCartShippingOptionsListRes>>
      _storeShippingOptionsCartIdGet({required String? cartId}) {
    final Uri $url = Uri.parse('/store/shipping-options/${cartId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<StoreCartShippingOptionsListRes,
        StoreCartShippingOptionsListRes>($request);
  }

  @override
  Future<Response<StoreSwapsRes>> _storeSwapsPost(
      {required StorePostSwapsReq? body}) {
    final Uri $url = Uri.parse('/store/swaps');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<StoreSwapsRes, StoreSwapsRes>($request);
  }

  @override
  Future<Response<StoreSwapsRes>> _storeSwapsCartIdGet(
      {required String? cartId}) {
    final Uri $url = Uri.parse('/store/swaps/${cartId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<StoreSwapsRes, StoreSwapsRes>($request);
  }

  @override
  Future<Response<StoreVariantsListRes>> _storeVariantsGet({
    String? ids,
    Object? id,
    String? salesChannelId,
    String? expand,
    String? fields,
    num? offset,
    num? limit,
    String? cartId,
    String? regionId,
    String? currencyCode,
    Object? title,
    Object? inventoryQuantity,
  }) {
    final Uri $url = Uri.parse('/store/variants');
    final Map<String, dynamic> $params = <String, dynamic>{
      'ids': ids,
      'id': id,
      'sales_channel_id': salesChannelId,
      'expand': expand,
      'fields': fields,
      'offset': offset,
      'limit': limit,
      'cart_id': cartId,
      'region_id': regionId,
      'currency_code': currencyCode,
      'title': title,
      'inventory_quantity': inventoryQuantity,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<StoreVariantsListRes, StoreVariantsListRes>($request);
  }

  @override
  Future<Response<StoreVariantsRes>> _storeVariantsIdGet({
    required String? id,
    String? salesChannelId,
    String? cartId,
    String? regionId,
    String? currencyCode,
  }) {
    final Uri $url = Uri.parse('/store/variants/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'sales_channel_id': salesChannelId,
      'cart_id': cartId,
      'region_id': regionId,
      'currency_code': currencyCode,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<StoreVariantsRes, StoreVariantsRes>($request);
  }
}
