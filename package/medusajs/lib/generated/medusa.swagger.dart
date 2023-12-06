// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'medusa.models.swagger.dart';
import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show MultipartFile;
import 'package:chopper/chopper.dart' as chopper;
import 'medusa.enums.swagger.dart' as enums;
export 'medusa.enums.swagger.dart';
export 'medusa.models.swagger.dart';

part 'medusa.swagger.chopper.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class Medusa extends ChopperService {
  static Medusa create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    Converter? converter,
    Uri? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$Medusa(client);
    }

    final newClient = ChopperClient(
        services: [_$Medusa()],
        converter: converter ?? $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        client: httpClient,
        authenticator: authenticator,
        baseUrl: baseUrl ?? Uri.parse('http://'));
    return _$Medusa(newClient);
  }

  ///List Applications
  Future<chopper.Response<AdminAppsListRes>> adminAppsGet() {
    generatedMapping.putIfAbsent(
        AdminAppsListRes, () => AdminAppsListRes.fromJsonFactory);

    return _adminAppsGet();
  }

  ///List Applications
  @Get(path: '/admin/apps')
  Future<chopper.Response<AdminAppsListRes>> _adminAppsGet();

  ///Generate Token for App
  Future<chopper.Response<AdminAppsRes>> adminAppsAuthorizationsPost(
      {required AdminPostAppsReq? body}) {
    generatedMapping.putIfAbsent(
        AdminAppsRes, () => AdminAppsRes.fromJsonFactory);

    return _adminAppsAuthorizationsPost(body: body);
  }

  ///Generate Token for App
  @Post(
    path: '/admin/apps/authorizations',
    optionalBody: true,
  )
  Future<chopper.Response<AdminAppsRes>> _adminAppsAuthorizationsPost(
      {@Body() required AdminPostAppsReq? body});

  ///Get Current User
  Future<chopper.Response<AdminAuthRes>> adminAuthGet() {
    generatedMapping.putIfAbsent(
        AdminAuthRes, () => AdminAuthRes.fromJsonFactory);

    return _adminAuthGet();
  }

  ///Get Current User
  @Get(path: '/admin/auth')
  Future<chopper.Response<AdminAuthRes>> _adminAuthGet();

  ///User Login
  Future<chopper.Response<AdminAuthRes>> adminAuthPost(
      {required AdminPostAuthReq? body}) {
    generatedMapping.putIfAbsent(
        AdminAuthRes, () => AdminAuthRes.fromJsonFactory);

    return _adminAuthPost(body: body);
  }

  ///User Login
  @Post(
    path: '/admin/auth',
    optionalBody: true,
  )
  Future<chopper.Response<AdminAuthRes>> _adminAuthPost(
      {@Body() required AdminPostAuthReq? body});

  ///User Logout
  Future<chopper.Response> adminAuthDelete() {
    return _adminAuthDelete();
  }

  ///User Logout
  @Delete(path: '/admin/auth')
  Future<chopper.Response> _adminAuthDelete();

  ///User Login (JWT)
  Future<chopper.Response<AdminBearerAuthRes>> adminAuthTokenPost(
      {required AdminPostAuthReq? body}) {
    generatedMapping.putIfAbsent(
        AdminBearerAuthRes, () => AdminBearerAuthRes.fromJsonFactory);

    return _adminAuthTokenPost(body: body);
  }

  ///User Login (JWT)
  @Post(
    path: '/admin/auth/token',
    optionalBody: true,
  )
  Future<chopper.Response<AdminBearerAuthRes>> _adminAuthTokenPost(
      {@Body() required AdminPostAuthReq? body});

  ///List Batch Jobs
  ///@param limit Limit the number of batch jobs returned.
  ///@param offset The number of batch jobs to skip when retrieving the batch jobs.
  ///@param id Filter by the batch ID
  ///@param type Filter by the batch type
  ///@param confirmed_at Filter by a confirmation date range.
  ///@param pre_processed_at Filter by a pre-processing date range.
  ///@param completed_at Filter by a completion date range.
  ///@param failed_at Filter by a failure date range.
  ///@param canceled_at Filter by a cancelation date range.
  ///@param order A batch-job field to sort-order the retrieved batch jobs by.
  ///@param expand Comma-separated relations that should be expanded in the returned batch jobs.
  ///@param fields Comma-separated fields that should be included in the returned batch jobs.
  ///@param created_at Filter by a creation date range.
  ///@param updated_at Filter by an update date range.
  Future<chopper.Response<AdminBatchJobListRes>> adminBatchJobsGet({
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
    generatedMapping.putIfAbsent(
        AdminBatchJobListRes, () => AdminBatchJobListRes.fromJsonFactory);

    return _adminBatchJobsGet(
        limit: limit,
        offset: offset,
        id: id,
        type: type,
        confirmedAt: confirmedAt,
        preProcessedAt: preProcessedAt,
        completedAt: completedAt,
        failedAt: failedAt,
        canceledAt: canceledAt,
        order: order,
        expand: expand,
        fields: fields,
        createdAt: createdAt,
        updatedAt: updatedAt);
  }

  ///List Batch Jobs
  ///@param limit Limit the number of batch jobs returned.
  ///@param offset The number of batch jobs to skip when retrieving the batch jobs.
  ///@param id Filter by the batch ID
  ///@param type Filter by the batch type
  ///@param confirmed_at Filter by a confirmation date range.
  ///@param pre_processed_at Filter by a pre-processing date range.
  ///@param completed_at Filter by a completion date range.
  ///@param failed_at Filter by a failure date range.
  ///@param canceled_at Filter by a cancelation date range.
  ///@param order A batch-job field to sort-order the retrieved batch jobs by.
  ///@param expand Comma-separated relations that should be expanded in the returned batch jobs.
  ///@param fields Comma-separated fields that should be included in the returned batch jobs.
  ///@param created_at Filter by a creation date range.
  ///@param updated_at Filter by an update date range.
  @Get(path: '/admin/batch-jobs')
  Future<chopper.Response<AdminBatchJobListRes>> _adminBatchJobsGet({
    @Query('limit') int? limit,
    @Query('offset') int? offset,
    @Query('id') Object? id,
    @Query('type') List<String>? type,
    @Query('confirmed_at') Object? confirmedAt,
    @Query('pre_processed_at') Object? preProcessedAt,
    @Query('completed_at') Object? completedAt,
    @Query('failed_at') Object? failedAt,
    @Query('canceled_at') Object? canceledAt,
    @Query('order') String? order,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Query('created_at') Object? createdAt,
    @Query('updated_at') Object? updatedAt,
  });

  ///Create a Batch Job
  Future<chopper.Response<AdminBatchJobRes>> adminBatchJobsPost(
      {required AdminPostBatchesReq? body}) {
    generatedMapping.putIfAbsent(
        AdminBatchJobRes, () => AdminBatchJobRes.fromJsonFactory);

    return _adminBatchJobsPost(body: body);
  }

  ///Create a Batch Job
  @Post(
    path: '/admin/batch-jobs',
    optionalBody: true,
  )
  Future<chopper.Response<AdminBatchJobRes>> _adminBatchJobsPost(
      {@Body() required AdminPostBatchesReq? body});

  ///Get a Batch Job
  ///@param id The ID of the Batch Job
  Future<chopper.Response<AdminBatchJobRes>> adminBatchJobsIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        AdminBatchJobRes, () => AdminBatchJobRes.fromJsonFactory);

    return _adminBatchJobsIdGet(id: id);
  }

  ///Get a Batch Job
  ///@param id The ID of the Batch Job
  @Get(path: '/admin/batch-jobs/{id}')
  Future<chopper.Response<AdminBatchJobRes>> _adminBatchJobsIdGet(
      {@Path('id') required String? id});

  ///Cancel a Batch Job
  ///@param id The ID of the batch job.
  Future<chopper.Response<AdminBatchJobRes>> adminBatchJobsIdCancelPost(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        AdminBatchJobRes, () => AdminBatchJobRes.fromJsonFactory);

    return _adminBatchJobsIdCancelPost(id: id);
  }

  ///Cancel a Batch Job
  ///@param id The ID of the batch job.
  @Post(
    path: '/admin/batch-jobs/{id}/cancel',
    optionalBody: true,
  )
  Future<chopper.Response<AdminBatchJobRes>> _adminBatchJobsIdCancelPost(
      {@Path('id') required String? id});

  ///Confirm a Batch Job
  ///@param id The ID of the batch job.
  Future<chopper.Response<AdminBatchJobRes>> adminBatchJobsIdConfirmPost(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        AdminBatchJobRes, () => AdminBatchJobRes.fromJsonFactory);

    return _adminBatchJobsIdConfirmPost(id: id);
  }

  ///Confirm a Batch Job
  ///@param id The ID of the batch job.
  @Post(
    path: '/admin/batch-jobs/{id}/confirm',
    optionalBody: true,
  )
  Future<chopper.Response<AdminBatchJobRes>> _adminBatchJobsIdConfirmPost(
      {@Path('id') required String? id});

  ///List Collections
  ///@param limit The number of collections to return.
  ///@param offset The number of collections to skip when retrieving the collections.
  ///@param title Filter collections by their title.
  ///@param handle Filter collections by their handle.
  ///@param q a term to search collections by their title or handle.
  ///@param discount_condition_id Filter collections by a discount condition ID associated with them.
  ///@param created_at Filter by a creation date range.
  ///@param updated_at Filter by an update date range.
  ///@param deleted_at Filter by a deletion date range.
  Future<chopper.Response<AdminCollectionsListRes>> adminCollectionsGet({
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
    generatedMapping.putIfAbsent(
        AdminCollectionsListRes, () => AdminCollectionsListRes.fromJsonFactory);

    return _adminCollectionsGet(
        limit: limit,
        offset: offset,
        title: title,
        handle: handle,
        q: q,
        discountConditionId: discountConditionId,
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt);
  }

  ///List Collections
  ///@param limit The number of collections to return.
  ///@param offset The number of collections to skip when retrieving the collections.
  ///@param title Filter collections by their title.
  ///@param handle Filter collections by their handle.
  ///@param q a term to search collections by their title or handle.
  ///@param discount_condition_id Filter collections by a discount condition ID associated with them.
  ///@param created_at Filter by a creation date range.
  ///@param updated_at Filter by an update date range.
  ///@param deleted_at Filter by a deletion date range.
  @Get(path: '/admin/collections')
  Future<chopper.Response<AdminCollectionsListRes>> _adminCollectionsGet({
    @Query('limit') int? limit,
    @Query('offset') int? offset,
    @Query('title') String? title,
    @Query('handle') String? handle,
    @Query('q') String? q,
    @Query('discount_condition_id') String? discountConditionId,
    @Query('created_at') Object? createdAt,
    @Query('updated_at') Object? updatedAt,
    @Query('deleted_at') Object? deletedAt,
  });

  ///Create a Collection
  Future<chopper.Response<AdminCollectionsRes>> adminCollectionsPost(
      {required AdminPostCollectionsReq? body}) {
    generatedMapping.putIfAbsent(
        AdminCollectionsRes, () => AdminCollectionsRes.fromJsonFactory);

    return _adminCollectionsPost(body: body);
  }

  ///Create a Collection
  @Post(
    path: '/admin/collections',
    optionalBody: true,
  )
  Future<chopper.Response<AdminCollectionsRes>> _adminCollectionsPost(
      {@Body() required AdminPostCollectionsReq? body});

  ///Get a Collection
  ///@param id The ID of the Product Collection
  Future<chopper.Response<AdminCollectionsRes>> adminCollectionsIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        AdminCollectionsRes, () => AdminCollectionsRes.fromJsonFactory);

    return _adminCollectionsIdGet(id: id);
  }

  ///Get a Collection
  ///@param id The ID of the Product Collection
  @Get(path: '/admin/collections/{id}')
  Future<chopper.Response<AdminCollectionsRes>> _adminCollectionsIdGet(
      {@Path('id') required String? id});

  ///Update a Collection
  ///@param id The ID of the Collection.
  Future<chopper.Response<AdminCollectionsRes>> adminCollectionsIdPost({
    required String? id,
    required AdminPostCollectionsCollectionReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminCollectionsRes, () => AdminCollectionsRes.fromJsonFactory);

    return _adminCollectionsIdPost(id: id, body: body);
  }

  ///Update a Collection
  ///@param id The ID of the Collection.
  @Post(
    path: '/admin/collections/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<AdminCollectionsRes>> _adminCollectionsIdPost({
    @Path('id') required String? id,
    @Body() required AdminPostCollectionsCollectionReq? body,
  });

  ///Delete a Collection
  ///@param id The ID of the Collection.
  Future<chopper.Response<AdminCollectionsDeleteRes>> adminCollectionsIdDelete(
      {required String? id}) {
    generatedMapping.putIfAbsent(AdminCollectionsDeleteRes,
        () => AdminCollectionsDeleteRes.fromJsonFactory);

    return _adminCollectionsIdDelete(id: id);
  }

  ///Delete a Collection
  ///@param id The ID of the Collection.
  @Delete(path: '/admin/collections/{id}')
  Future<chopper.Response<AdminCollectionsDeleteRes>> _adminCollectionsIdDelete(
      {@Path('id') required String? id});

  ///Add Products to Collection
  ///@param id The ID of the product collection.
  Future<chopper.Response<AdminCollectionsRes>>
      adminCollectionsIdProductsBatchPost({
    required String? id,
    required AdminPostProductsToCollectionReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminCollectionsRes, () => AdminCollectionsRes.fromJsonFactory);

    return _adminCollectionsIdProductsBatchPost(id: id, body: body);
  }

  ///Add Products to Collection
  ///@param id The ID of the product collection.
  @Post(
    path: '/admin/collections/{id}/products/batch',
    optionalBody: true,
  )
  Future<chopper.Response<AdminCollectionsRes>>
      _adminCollectionsIdProductsBatchPost({
    @Path('id') required String? id,
    @Body() required AdminPostProductsToCollectionReq? body,
  });

  ///Remove Products from Collection
  ///@param id The ID of the Product Collection.
  Future<chopper.Response<AdminDeleteProductsFromCollectionRes>>
      adminCollectionsIdProductsBatchDelete({
    required String? id,
    required AdminDeleteProductsFromCollectionReq? body,
  }) {
    generatedMapping.putIfAbsent(AdminDeleteProductsFromCollectionRes,
        () => AdminDeleteProductsFromCollectionRes.fromJsonFactory);

    return _adminCollectionsIdProductsBatchDelete(id: id, body: body);
  }

  ///Remove Products from Collection
  ///@param id The ID of the Product Collection.
  @Delete(path: '/admin/collections/{id}/products/batch')
  Future<chopper.Response<AdminDeleteProductsFromCollectionRes>>
      _adminCollectionsIdProductsBatchDelete({
    @Path('id') required String? id,
    @Body() required AdminDeleteProductsFromCollectionReq? body,
  });

  ///List Currency
  ///@param code filter by currency code.
  ///@param includes_tax filter currencies by whether they include taxes or not.
  ///@param order A field to sort order the retrieved currencies by.
  ///@param offset The number of currencies to skip when retrieving the currencies.
  ///@param limit The number of currencies to return.
  Future<chopper.Response<AdminCurrenciesListRes>> adminCurrenciesGet({
    String? code,
    bool? includesTax,
    String? order,
    num? offset,
    num? limit,
  }) {
    generatedMapping.putIfAbsent(
        AdminCurrenciesListRes, () => AdminCurrenciesListRes.fromJsonFactory);

    return _adminCurrenciesGet(
        code: code,
        includesTax: includesTax,
        order: order,
        offset: offset,
        limit: limit);
  }

  ///List Currency
  ///@param code filter by currency code.
  ///@param includes_tax filter currencies by whether they include taxes or not.
  ///@param order A field to sort order the retrieved currencies by.
  ///@param offset The number of currencies to skip when retrieving the currencies.
  ///@param limit The number of currencies to return.
  @Get(path: '/admin/currencies')
  Future<chopper.Response<AdminCurrenciesListRes>> _adminCurrenciesGet({
    @Query('code') String? code,
    @Query('includes_tax') bool? includesTax,
    @Query('order') String? order,
    @Query('offset') num? offset,
    @Query('limit') num? limit,
  });

  ///Update a Currency
  ///@param code The code of the Currency.
  Future<chopper.Response<AdminCurrenciesRes>> adminCurrenciesCodePost({
    required String? code,
    required AdminPostCurrenciesCurrencyReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminCurrenciesRes, () => AdminCurrenciesRes.fromJsonFactory);

    return _adminCurrenciesCodePost(code: code, body: body);
  }

  ///Update a Currency
  ///@param code The code of the Currency.
  @Post(
    path: '/admin/currencies/{code}',
    optionalBody: true,
  )
  Future<chopper.Response<AdminCurrenciesRes>> _adminCurrenciesCodePost({
    @Path('code') required String? code,
    @Body() required AdminPostCurrenciesCurrencyReq? body,
  });

  ///List Customer Groups
  ///@param q term to search customer groups by name.
  ///@param offset The number of customer groups to skip when retrieving the customer groups.
  ///@param order A field to sort order the retrieved customer groups by.
  ///@param discount_condition_id Filter by discount condition ID.
  ///@param id Filter by the customer group ID
  ///@param name Filter by the customer group name
  ///@param created_at Filter by a creation date range.
  ///@param updated_at Filter by an update date range.
  ///@param limit The number of customer groups to return.
  ///@param expand Comma-separated relations that should be expanded in the returned customer groups.
  Future<chopper.Response<AdminCustomerGroupsListRes>> adminCustomerGroupsGet({
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
    generatedMapping.putIfAbsent(AdminCustomerGroupsListRes,
        () => AdminCustomerGroupsListRes.fromJsonFactory);

    return _adminCustomerGroupsGet(
        q: q,
        offset: offset,
        order: order,
        discountConditionId: discountConditionId,
        id: id,
        name: name,
        createdAt: createdAt,
        updatedAt: updatedAt,
        limit: limit,
        expand: expand);
  }

  ///List Customer Groups
  ///@param q term to search customer groups by name.
  ///@param offset The number of customer groups to skip when retrieving the customer groups.
  ///@param order A field to sort order the retrieved customer groups by.
  ///@param discount_condition_id Filter by discount condition ID.
  ///@param id Filter by the customer group ID
  ///@param name Filter by the customer group name
  ///@param created_at Filter by a creation date range.
  ///@param updated_at Filter by an update date range.
  ///@param limit The number of customer groups to return.
  ///@param expand Comma-separated relations that should be expanded in the returned customer groups.
  @Get(path: '/admin/customer-groups')
  Future<chopper.Response<AdminCustomerGroupsListRes>> _adminCustomerGroupsGet({
    @Query('q') String? q,
    @Query('offset') int? offset,
    @Query('order') String? order,
    @Query('discount_condition_id') String? discountConditionId,
    @Query('id') Object? id,
    @Query('name') List<String>? name,
    @Query('created_at') Object? createdAt,
    @Query('updated_at') Object? updatedAt,
    @Query('limit') int? limit,
    @Query('expand') String? expand,
  });

  ///Create a Customer Group
  Future<chopper.Response<AdminCustomerGroupsRes>> adminCustomerGroupsPost(
      {required AdminPostCustomerGroupsReq? body}) {
    generatedMapping.putIfAbsent(
        AdminCustomerGroupsRes, () => AdminCustomerGroupsRes.fromJsonFactory);

    return _adminCustomerGroupsPost(body: body);
  }

  ///Create a Customer Group
  @Post(
    path: '/admin/customer-groups',
    optionalBody: true,
  )
  Future<chopper.Response<AdminCustomerGroupsRes>> _adminCustomerGroupsPost(
      {@Body() required AdminPostCustomerGroupsReq? body});

  ///Get a Customer Group
  ///@param id The ID of the Customer Group.
  ///@param expand Comma-separated relations that should be expanded in the returned customer group.
  ///@param fields Comma-separated fields that should be included in the returned customer group.
  Future<chopper.Response<AdminCustomerGroupsRes>> adminCustomerGroupsIdGet({
    required String? id,
    String? expand,
    String? fields,
  }) {
    generatedMapping.putIfAbsent(
        AdminCustomerGroupsRes, () => AdminCustomerGroupsRes.fromJsonFactory);

    return _adminCustomerGroupsIdGet(id: id, expand: expand, fields: fields);
  }

  ///Get a Customer Group
  ///@param id The ID of the Customer Group.
  ///@param expand Comma-separated relations that should be expanded in the returned customer group.
  ///@param fields Comma-separated fields that should be included in the returned customer group.
  @Get(path: '/admin/customer-groups/{id}')
  Future<chopper.Response<AdminCustomerGroupsRes>> _adminCustomerGroupsIdGet({
    @Path('id') required String? id,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
  });

  ///Update a Customer Group
  ///@param id The ID of the customer group.
  Future<chopper.Response<AdminCustomerGroupsRes>> adminCustomerGroupsIdPost({
    required String? id,
    required AdminPostCustomerGroupsGroupReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminCustomerGroupsRes, () => AdminCustomerGroupsRes.fromJsonFactory);

    return _adminCustomerGroupsIdPost(id: id, body: body);
  }

  ///Update a Customer Group
  ///@param id The ID of the customer group.
  @Post(
    path: '/admin/customer-groups/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<AdminCustomerGroupsRes>> _adminCustomerGroupsIdPost({
    @Path('id') required String? id,
    @Body() required AdminPostCustomerGroupsGroupReq? body,
  });

  ///Delete a Customer Group
  ///@param id The ID of the Customer Group
  Future<chopper.Response<AdminCustomerGroupsDeleteRes>>
      adminCustomerGroupsIdDelete({required String? id}) {
    generatedMapping.putIfAbsent(AdminCustomerGroupsDeleteRes,
        () => AdminCustomerGroupsDeleteRes.fromJsonFactory);

    return _adminCustomerGroupsIdDelete(id: id);
  }

  ///Delete a Customer Group
  ///@param id The ID of the Customer Group
  @Delete(path: '/admin/customer-groups/{id}')
  Future<chopper.Response<AdminCustomerGroupsDeleteRes>>
      _adminCustomerGroupsIdDelete({@Path('id') required String? id});

  ///List Customers
  ///@param id The ID of the customer group.
  ///@param limit The number of customers to return.
  ///@param offset The number of customers to skip when retrieving the customers.
  ///@param expand Comma-separated relations that should be expanded in the returned customers.
  ///@param q a term to search customers by email, first_name, and last_name.
  Future<chopper.Response<AdminCustomersListRes>>
      adminCustomerGroupsIdCustomersGet({
    required String? id,
    int? limit,
    int? offset,
    String? expand,
    String? q,
  }) {
    generatedMapping.putIfAbsent(
        AdminCustomersListRes, () => AdminCustomersListRes.fromJsonFactory);

    return _adminCustomerGroupsIdCustomersGet(
        id: id, limit: limit, offset: offset, expand: expand, q: q);
  }

  ///List Customers
  ///@param id The ID of the customer group.
  ///@param limit The number of customers to return.
  ///@param offset The number of customers to skip when retrieving the customers.
  ///@param expand Comma-separated relations that should be expanded in the returned customers.
  ///@param q a term to search customers by email, first_name, and last_name.
  @Get(path: '/admin/customer-groups/{id}/customers')
  Future<chopper.Response<AdminCustomersListRes>>
      _adminCustomerGroupsIdCustomersGet({
    @Path('id') required String? id,
    @Query('limit') int? limit,
    @Query('offset') int? offset,
    @Query('expand') String? expand,
    @Query('q') String? q,
  });

  ///Add Customers to Group
  ///@param id The ID of the customer group.
  Future<chopper.Response<AdminCustomerGroupsRes>>
      adminCustomerGroupsIdCustomersBatchPost({
    required String? id,
    required AdminPostCustomerGroupsGroupCustomersBatchReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminCustomerGroupsRes, () => AdminCustomerGroupsRes.fromJsonFactory);

    return _adminCustomerGroupsIdCustomersBatchPost(id: id, body: body);
  }

  ///Add Customers to Group
  ///@param id The ID of the customer group.
  @Post(
    path: '/admin/customer-groups/{id}/customers/batch',
    optionalBody: true,
  )
  Future<chopper.Response<AdminCustomerGroupsRes>>
      _adminCustomerGroupsIdCustomersBatchPost({
    @Path('id') required String? id,
    @Body() required AdminPostCustomerGroupsGroupCustomersBatchReq? body,
  });

  ///Remove Customers from Group
  ///@param id The ID of the customer group.
  Future<chopper.Response<AdminCustomerGroupsRes>>
      adminCustomerGroupsIdCustomersBatchDelete({
    required String? id,
    required AdminDeleteCustomerGroupsGroupCustomerBatchReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminCustomerGroupsRes, () => AdminCustomerGroupsRes.fromJsonFactory);

    return _adminCustomerGroupsIdCustomersBatchDelete(id: id, body: body);
  }

  ///Remove Customers from Group
  ///@param id The ID of the customer group.
  @Delete(path: '/admin/customer-groups/{id}/customers/batch')
  Future<chopper.Response<AdminCustomerGroupsRes>>
      _adminCustomerGroupsIdCustomersBatchDelete({
    @Path('id') required String? id,
    @Body() required AdminDeleteCustomerGroupsGroupCustomerBatchReq? body,
  });

  ///List Customers
  ///@param limit The number of customers to return.
  ///@param offset The number of customers to skip when retrieving the customers.
  ///@param expand Comma-separated relations that should be expanded in the returned customer.
  ///@param q term to search customers' email, first_name, and last_name fields.
  ///@param groups Filter by customer group IDs.
  Future<chopper.Response<AdminCustomersListRes>> adminCustomersGet({
    int? limit,
    int? offset,
    String? expand,
    String? q,
    List<String>? groups,
  }) {
    generatedMapping.putIfAbsent(
        AdminCustomersListRes, () => AdminCustomersListRes.fromJsonFactory);

    return _adminCustomersGet(
        limit: limit, offset: offset, expand: expand, q: q, groups: groups);
  }

  ///List Customers
  ///@param limit The number of customers to return.
  ///@param offset The number of customers to skip when retrieving the customers.
  ///@param expand Comma-separated relations that should be expanded in the returned customer.
  ///@param q term to search customers' email, first_name, and last_name fields.
  ///@param groups Filter by customer group IDs.
  @Get(path: '/admin/customers')
  Future<chopper.Response<AdminCustomersListRes>> _adminCustomersGet({
    @Query('limit') int? limit,
    @Query('offset') int? offset,
    @Query('expand') String? expand,
    @Query('q') String? q,
    @Query('groups') List<String>? groups,
  });

  ///Create a Customer
  Future<chopper.Response<AdminCustomersRes>> adminCustomersPost(
      {required AdminPostCustomersReq? body}) {
    generatedMapping.putIfAbsent(
        AdminCustomersRes, () => AdminCustomersRes.fromJsonFactory);

    return _adminCustomersPost(body: body);
  }

  ///Create a Customer
  @Post(
    path: '/admin/customers',
    optionalBody: true,
  )
  Future<chopper.Response<AdminCustomersRes>> _adminCustomersPost(
      {@Body() required AdminPostCustomersReq? body});

  ///Get a Customer
  ///@param id The ID of the Customer.
  ///@param expand Comma-separated relations that should be expanded in the returned customer.
  ///@param fields Comma-separated fields that should be included in the returned customer.
  Future<chopper.Response<AdminCustomersRes>> adminCustomersIdGet({
    required String? id,
    String? expand,
    String? fields,
  }) {
    generatedMapping.putIfAbsent(
        AdminCustomersRes, () => AdminCustomersRes.fromJsonFactory);

    return _adminCustomersIdGet(id: id, expand: expand, fields: fields);
  }

  ///Get a Customer
  ///@param id The ID of the Customer.
  ///@param expand Comma-separated relations that should be expanded in the returned customer.
  ///@param fields Comma-separated fields that should be included in the returned customer.
  @Get(path: '/admin/customers/{id}')
  Future<chopper.Response<AdminCustomersRes>> _adminCustomersIdGet({
    @Path('id') required String? id,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
  });

  ///Update a Customer
  ///@param id The ID of the Customer.
  ///@param expand Comma-separated relations that should be expanded in the returned customer.
  ///@param fields Comma-separated fields that should be retrieved in the returned customer.
  Future<chopper.Response<AdminCustomersRes>> adminCustomersIdPost({
    required String? id,
    String? expand,
    String? fields,
    required AdminPostCustomersCustomerReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminCustomersRes, () => AdminCustomersRes.fromJsonFactory);

    return _adminCustomersIdPost(
        id: id, expand: expand, fields: fields, body: body);
  }

  ///Update a Customer
  ///@param id The ID of the Customer.
  ///@param expand Comma-separated relations that should be expanded in the returned customer.
  ///@param fields Comma-separated fields that should be retrieved in the returned customer.
  @Post(
    path: '/admin/customers/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<AdminCustomersRes>> _adminCustomersIdPost({
    @Path('id') required String? id,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Body() required AdminPostCustomersCustomerReq? body,
  });

  ///List Discounts
  ///@param q term to search discounts' code field.
  ///@param rule Filter discounts by rule fields.
  ///@param is_dynamic Filter discounts by whether they're dynamic or not.
  ///@param is_disabled Filter discounts by whether they're disabled or not.
  ///@param limit The number of discounts to return
  ///@param offset The number of discounts to skip when retrieving the discounts.
  ///@param expand Comma-separated relations that should be expanded in each returned discount.
  Future<chopper.Response<AdminDiscountsListRes>> adminDiscountsGet({
    String? q,
    Object? rule,
    bool? isDynamic,
    bool? isDisabled,
    num? limit,
    num? offset,
    String? expand,
  }) {
    generatedMapping.putIfAbsent(
        AdminDiscountsListRes, () => AdminDiscountsListRes.fromJsonFactory);

    return _adminDiscountsGet(
        q: q,
        rule: rule,
        isDynamic: isDynamic,
        isDisabled: isDisabled,
        limit: limit,
        offset: offset,
        expand: expand);
  }

  ///List Discounts
  ///@param q term to search discounts' code field.
  ///@param rule Filter discounts by rule fields.
  ///@param is_dynamic Filter discounts by whether they're dynamic or not.
  ///@param is_disabled Filter discounts by whether they're disabled or not.
  ///@param limit The number of discounts to return
  ///@param offset The number of discounts to skip when retrieving the discounts.
  ///@param expand Comma-separated relations that should be expanded in each returned discount.
  @Get(path: '/admin/discounts')
  Future<chopper.Response<AdminDiscountsListRes>> _adminDiscountsGet({
    @Query('q') String? q,
    @Query('rule') Object? rule,
    @Query('is_dynamic') bool? isDynamic,
    @Query('is_disabled') bool? isDisabled,
    @Query('limit') num? limit,
    @Query('offset') num? offset,
    @Query('expand') String? expand,
  });

  ///Create a Discount
  ///@param expand Comma-separated relations that should be expanded in the returned discount.
  ///@param fields Comma-separated fields that should be retrieved in the returned discount.
  Future<chopper.Response<AdminDiscountsRes>> adminDiscountsPost({
    String? expand,
    String? fields,
    required AdminPostDiscountsReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminDiscountsRes, () => AdminDiscountsRes.fromJsonFactory);

    return _adminDiscountsPost(expand: expand, fields: fields, body: body);
  }

  ///Create a Discount
  ///@param expand Comma-separated relations that should be expanded in the returned discount.
  ///@param fields Comma-separated fields that should be retrieved in the returned discount.
  @Post(
    path: '/admin/discounts',
    optionalBody: true,
  )
  Future<chopper.Response<AdminDiscountsRes>> _adminDiscountsPost({
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Body() required AdminPostDiscountsReq? body,
  });

  ///Get Discount by Code
  ///@param code The code of the Discount
  ///@param expand Comma-separated relations that should be expanded in the returned discount.
  ///@param fields Comma-separated fields that should be included in the returned discount.
  Future<chopper.Response<AdminDiscountsRes>> adminDiscountsCodeCodeGet({
    required String? code,
    String? expand,
    String? fields,
  }) {
    generatedMapping.putIfAbsent(
        AdminDiscountsRes, () => AdminDiscountsRes.fromJsonFactory);

    return _adminDiscountsCodeCodeGet(
        code: code, expand: expand, fields: fields);
  }

  ///Get Discount by Code
  ///@param code The code of the Discount
  ///@param expand Comma-separated relations that should be expanded in the returned discount.
  ///@param fields Comma-separated fields that should be included in the returned discount.
  @Get(path: '/admin/discounts/code/{code}')
  Future<chopper.Response<AdminDiscountsRes>> _adminDiscountsCodeCodeGet({
    @Path('code') required String? code,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
  });

  ///Create a Condition
  ///@param discount_id The ID of the discount.
  ///@param expand Comma-separated relations that should be expanded in the returned discount.
  ///@param fields Comma-separated fields that should be included in the returned discount.
  Future<chopper.Response<AdminDiscountsRes>>
      adminDiscountsDiscountIdConditionsPost({
    required String? discountId,
    String? expand,
    String? fields,
    required AdminPostDiscountsDiscountConditions? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminDiscountsRes, () => AdminDiscountsRes.fromJsonFactory);

    return _adminDiscountsDiscountIdConditionsPost(
        discountId: discountId, expand: expand, fields: fields, body: body);
  }

  ///Create a Condition
  ///@param discount_id The ID of the discount.
  ///@param expand Comma-separated relations that should be expanded in the returned discount.
  ///@param fields Comma-separated fields that should be included in the returned discount.
  @Post(
    path: '/admin/discounts/{discount_id}/conditions',
    optionalBody: true,
  )
  Future<chopper.Response<AdminDiscountsRes>>
      _adminDiscountsDiscountIdConditionsPost({
    @Path('discount_id') required String? discountId,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Body() required AdminPostDiscountsDiscountConditions? body,
  });

  ///Get a Condition
  ///@param discount_id The ID of the Discount.
  ///@param condition_id The ID of the Discount Condition.
  ///@param expand Comma-separated relations that should be expanded in the returned discount condition.
  ///@param fields Comma-separated fields that should be included in the returned discount condition.
  Future<chopper.Response<AdminDiscountConditionsRes>>
      adminDiscountsDiscountIdConditionsConditionIdGet({
    required String? discountId,
    required String? conditionId,
    String? expand,
    String? fields,
  }) {
    generatedMapping.putIfAbsent(AdminDiscountConditionsRes,
        () => AdminDiscountConditionsRes.fromJsonFactory);

    return _adminDiscountsDiscountIdConditionsConditionIdGet(
        discountId: discountId,
        conditionId: conditionId,
        expand: expand,
        fields: fields);
  }

  ///Get a Condition
  ///@param discount_id The ID of the Discount.
  ///@param condition_id The ID of the Discount Condition.
  ///@param expand Comma-separated relations that should be expanded in the returned discount condition.
  ///@param fields Comma-separated fields that should be included in the returned discount condition.
  @Get(path: '/admin/discounts/{discount_id}/conditions/{condition_id}')
  Future<chopper.Response<AdminDiscountConditionsRes>>
      _adminDiscountsDiscountIdConditionsConditionIdGet({
    @Path('discount_id') required String? discountId,
    @Path('condition_id') required String? conditionId,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
  });

  ///Update a Condition
  ///@param discount_id The ID of the Discount.
  ///@param condition_id The ID of the Discount Condition.
  ///@param expand Comma-separated relations that should be expanded in the returned discount.
  ///@param fields Comma-separated fields that should be included in the returned discount.
  Future<chopper.Response<AdminDiscountsRes>>
      adminDiscountsDiscountIdConditionsConditionIdPost({
    required String? discountId,
    required String? conditionId,
    String? expand,
    String? fields,
    required AdminPostDiscountsDiscountConditionsCondition? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminDiscountsRes, () => AdminDiscountsRes.fromJsonFactory);

    return _adminDiscountsDiscountIdConditionsConditionIdPost(
        discountId: discountId,
        conditionId: conditionId,
        expand: expand,
        fields: fields,
        body: body);
  }

  ///Update a Condition
  ///@param discount_id The ID of the Discount.
  ///@param condition_id The ID of the Discount Condition.
  ///@param expand Comma-separated relations that should be expanded in the returned discount.
  ///@param fields Comma-separated fields that should be included in the returned discount.
  @Post(
    path: '/admin/discounts/{discount_id}/conditions/{condition_id}',
    optionalBody: true,
  )
  Future<chopper.Response<AdminDiscountsRes>>
      _adminDiscountsDiscountIdConditionsConditionIdPost({
    @Path('discount_id') required String? discountId,
    @Path('condition_id') required String? conditionId,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Body() required AdminPostDiscountsDiscountConditionsCondition? body,
  });

  ///Delete a Condition
  ///@param discount_id The ID of the Discount
  ///@param condition_id The ID of the Discount Condition
  ///@param expand Comma-separated relations that should be expanded in the returned discount.
  ///@param fields Comma-separated fields that should be included in the returned discount.
  Future<chopper.Response<AdminDiscountConditionsDeleteRes>>
      adminDiscountsDiscountIdConditionsConditionIdDelete({
    required String? discountId,
    required String? conditionId,
    String? expand,
    String? fields,
  }) {
    generatedMapping.putIfAbsent(AdminDiscountConditionsDeleteRes,
        () => AdminDiscountConditionsDeleteRes.fromJsonFactory);

    return _adminDiscountsDiscountIdConditionsConditionIdDelete(
        discountId: discountId,
        conditionId: conditionId,
        expand: expand,
        fields: fields);
  }

  ///Delete a Condition
  ///@param discount_id The ID of the Discount
  ///@param condition_id The ID of the Discount Condition
  ///@param expand Comma-separated relations that should be expanded in the returned discount.
  ///@param fields Comma-separated fields that should be included in the returned discount.
  @Delete(path: '/admin/discounts/{discount_id}/conditions/{condition_id}')
  Future<chopper.Response<AdminDiscountConditionsDeleteRes>>
      _adminDiscountsDiscountIdConditionsConditionIdDelete({
    @Path('discount_id') required String? discountId,
    @Path('condition_id') required String? conditionId,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
  });

  ///Add Batch Resources
  ///@param discount_id The ID of the discount the condition belongs to.
  ///@param condition_id The ID of the discount condition on which to add the item.
  ///@param expand Comma-separated relations that should be expanded in the returned discount.
  ///@param fields Comma-separated fields that should be included in the returned discount.
  Future<chopper.Response<AdminDiscountsRes>>
      adminDiscountsDiscountIdConditionsConditionIdBatchPost({
    required String? discountId,
    required String? conditionId,
    String? expand,
    String? fields,
    required AdminPostDiscountsDiscountConditionsConditionBatchReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminDiscountsRes, () => AdminDiscountsRes.fromJsonFactory);

    return _adminDiscountsDiscountIdConditionsConditionIdBatchPost(
        discountId: discountId,
        conditionId: conditionId,
        expand: expand,
        fields: fields,
        body: body);
  }

  ///Add Batch Resources
  ///@param discount_id The ID of the discount the condition belongs to.
  ///@param condition_id The ID of the discount condition on which to add the item.
  ///@param expand Comma-separated relations that should be expanded in the returned discount.
  ///@param fields Comma-separated fields that should be included in the returned discount.
  @Post(
    path: '/admin/discounts/{discount_id}/conditions/{condition_id}/batch',
    optionalBody: true,
  )
  Future<chopper.Response<AdminDiscountsRes>>
      _adminDiscountsDiscountIdConditionsConditionIdBatchPost({
    @Path('discount_id') required String? discountId,
    @Path('condition_id') required String? conditionId,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Body()
    required AdminPostDiscountsDiscountConditionsConditionBatchReq? body,
  });

  ///Remove Batch Resources
  ///@param discount_id The ID of the discount.
  ///@param condition_id The ID of the condition to remove the resources from.
  ///@param expand Comma-separated relations that should be expanded in the returned discount.
  ///@param fields Comma-separated fields that should be included in the returned discount.
  Future<chopper.Response<AdminDiscountsRes>>
      adminDiscountsDiscountIdConditionsConditionIdBatchDelete({
    required String? discountId,
    required String? conditionId,
    String? expand,
    String? fields,
    required AdminDeleteDiscountsDiscountConditionsConditionBatchReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminDiscountsRes, () => AdminDiscountsRes.fromJsonFactory);

    return _adminDiscountsDiscountIdConditionsConditionIdBatchDelete(
        discountId: discountId,
        conditionId: conditionId,
        expand: expand,
        fields: fields,
        body: body);
  }

  ///Remove Batch Resources
  ///@param discount_id The ID of the discount.
  ///@param condition_id The ID of the condition to remove the resources from.
  ///@param expand Comma-separated relations that should be expanded in the returned discount.
  ///@param fields Comma-separated fields that should be included in the returned discount.
  @Delete(
      path: '/admin/discounts/{discount_id}/conditions/{condition_id}/batch')
  Future<chopper.Response<AdminDiscountsRes>>
      _adminDiscountsDiscountIdConditionsConditionIdBatchDelete({
    @Path('discount_id') required String? discountId,
    @Path('condition_id') required String? conditionId,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Body()
    required AdminDeleteDiscountsDiscountConditionsConditionBatchReq? body,
  });

  ///Get a Discount
  ///@param id The ID of the Discount
  ///@param expand Comma-separated relations that should be expanded in the returned discount.
  ///@param fields Comma-separated fields that should be included in the returned discount.
  Future<chopper.Response<AdminDiscountsRes>> adminDiscountsIdGet({
    required String? id,
    String? expand,
    String? fields,
  }) {
    generatedMapping.putIfAbsent(
        AdminDiscountsRes, () => AdminDiscountsRes.fromJsonFactory);

    return _adminDiscountsIdGet(id: id, expand: expand, fields: fields);
  }

  ///Get a Discount
  ///@param id The ID of the Discount
  ///@param expand Comma-separated relations that should be expanded in the returned discount.
  ///@param fields Comma-separated fields that should be included in the returned discount.
  @Get(path: '/admin/discounts/{id}')
  Future<chopper.Response<AdminDiscountsRes>> _adminDiscountsIdGet({
    @Path('id') required String? id,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
  });

  ///Update a Discount
  ///@param id The ID of the Discount.
  ///@param expand Comma-separated relations that should be expanded in the returned discount.
  ///@param fields Comma-separated fields that should be retrieved in the returned discount.
  Future<chopper.Response<AdminDiscountsRes>> adminDiscountsIdPost({
    required String? id,
    String? expand,
    String? fields,
    required AdminPostDiscountsDiscountReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminDiscountsRes, () => AdminDiscountsRes.fromJsonFactory);

    return _adminDiscountsIdPost(
        id: id, expand: expand, fields: fields, body: body);
  }

  ///Update a Discount
  ///@param id The ID of the Discount.
  ///@param expand Comma-separated relations that should be expanded in the returned discount.
  ///@param fields Comma-separated fields that should be retrieved in the returned discount.
  @Post(
    path: '/admin/discounts/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<AdminDiscountsRes>> _adminDiscountsIdPost({
    @Path('id') required String? id,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Body() required AdminPostDiscountsDiscountReq? body,
  });

  ///Delete a Discount
  ///@param id The ID of the Discount
  Future<chopper.Response<AdminDiscountsDeleteRes>> adminDiscountsIdDelete(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        AdminDiscountsDeleteRes, () => AdminDiscountsDeleteRes.fromJsonFactory);

    return _adminDiscountsIdDelete(id: id);
  }

  ///Delete a Discount
  ///@param id The ID of the Discount
  @Delete(path: '/admin/discounts/{id}')
  Future<chopper.Response<AdminDiscountsDeleteRes>> _adminDiscountsIdDelete(
      {@Path('id') required String? id});

  ///Create a Dynamic Code
  ///@param id The ID of the Discount to create the dynamic code for."
  Future<chopper.Response<AdminDiscountsRes>> adminDiscountsIdDynamicCodesPost({
    required String? id,
    required AdminPostDiscountsDiscountDynamicCodesReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminDiscountsRes, () => AdminDiscountsRes.fromJsonFactory);

    return _adminDiscountsIdDynamicCodesPost(id: id, body: body);
  }

  ///Create a Dynamic Code
  ///@param id The ID of the Discount to create the dynamic code for."
  @Post(
    path: '/admin/discounts/{id}/dynamic-codes',
    optionalBody: true,
  )
  Future<chopper.Response<AdminDiscountsRes>>
      _adminDiscountsIdDynamicCodesPost({
    @Path('id') required String? id,
    @Body() required AdminPostDiscountsDiscountDynamicCodesReq? body,
  });

  ///Delete a Dynamic Code
  ///@param id The ID of the Discount
  ///@param code The dynamic code to delete
  Future<chopper.Response<AdminDiscountsRes>>
      adminDiscountsIdDynamicCodesCodeDelete({
    required String? id,
    required String? code,
  }) {
    generatedMapping.putIfAbsent(
        AdminDiscountsRes, () => AdminDiscountsRes.fromJsonFactory);

    return _adminDiscountsIdDynamicCodesCodeDelete(id: id, code: code);
  }

  ///Delete a Dynamic Code
  ///@param id The ID of the Discount
  ///@param code The dynamic code to delete
  @Delete(path: '/admin/discounts/{id}/dynamic-codes/{code}')
  Future<chopper.Response<AdminDiscountsRes>>
      _adminDiscountsIdDynamicCodesCodeDelete({
    @Path('id') required String? id,
    @Path('code') required String? code,
  });

  ///Add Region to Discount
  ///@param id The ID of the Discount.
  ///@param region_id The ID of the Region.
  Future<chopper.Response<AdminDiscountsRes>>
      adminDiscountsIdRegionsRegionIdPost({
    required String? id,
    required String? regionId,
  }) {
    generatedMapping.putIfAbsent(
        AdminDiscountsRes, () => AdminDiscountsRes.fromJsonFactory);

    return _adminDiscountsIdRegionsRegionIdPost(id: id, regionId: regionId);
  }

  ///Add Region to Discount
  ///@param id The ID of the Discount.
  ///@param region_id The ID of the Region.
  @Post(
    path: '/admin/discounts/{id}/regions/{region_id}',
    optionalBody: true,
  )
  Future<chopper.Response<AdminDiscountsRes>>
      _adminDiscountsIdRegionsRegionIdPost({
    @Path('id') required String? id,
    @Path('region_id') required String? regionId,
  });

  ///Remove Region
  ///@param id The ID of the Discount.
  ///@param region_id The ID of the Region.
  Future<chopper.Response<AdminDiscountsRes>>
      adminDiscountsIdRegionsRegionIdDelete({
    required String? id,
    required String? regionId,
  }) {
    generatedMapping.putIfAbsent(
        AdminDiscountsRes, () => AdminDiscountsRes.fromJsonFactory);

    return _adminDiscountsIdRegionsRegionIdDelete(id: id, regionId: regionId);
  }

  ///Remove Region
  ///@param id The ID of the Discount.
  ///@param region_id The ID of the Region.
  @Delete(path: '/admin/discounts/{id}/regions/{region_id}')
  Future<chopper.Response<AdminDiscountsRes>>
      _adminDiscountsIdRegionsRegionIdDelete({
    @Path('id') required String? id,
    @Path('region_id') required String? regionId,
  });

  ///List Draft Orders
  ///@param offset The number of draft orders to skip when retrieving the draft orders.
  ///@param limit Limit the number of draft orders returned.
  ///@param q a term to search draft orders' display IDs and emails in the draft order's cart
  Future<chopper.Response<AdminDraftOrdersListRes>> adminDraftOrdersGet({
    num? offset,
    num? limit,
    String? q,
  }) {
    generatedMapping.putIfAbsent(
        AdminDraftOrdersListRes, () => AdminDraftOrdersListRes.fromJsonFactory);

    return _adminDraftOrdersGet(offset: offset, limit: limit, q: q);
  }

  ///List Draft Orders
  ///@param offset The number of draft orders to skip when retrieving the draft orders.
  ///@param limit Limit the number of draft orders returned.
  ///@param q a term to search draft orders' display IDs and emails in the draft order's cart
  @Get(path: '/admin/draft-orders')
  Future<chopper.Response<AdminDraftOrdersListRes>> _adminDraftOrdersGet({
    @Query('offset') num? offset,
    @Query('limit') num? limit,
    @Query('q') String? q,
  });

  ///Create a Draft Order
  Future<chopper.Response<AdminDraftOrdersRes>> adminDraftOrdersPost(
      {required AdminPostDraftOrdersReq? body}) {
    generatedMapping.putIfAbsent(
        AdminDraftOrdersRes, () => AdminDraftOrdersRes.fromJsonFactory);

    return _adminDraftOrdersPost(body: body);
  }

  ///Create a Draft Order
  @Post(
    path: '/admin/draft-orders',
    optionalBody: true,
  )
  Future<chopper.Response<AdminDraftOrdersRes>> _adminDraftOrdersPost(
      {@Body() required AdminPostDraftOrdersReq? body});

  ///Get a Draft Order
  ///@param id The ID of the Draft Order.
  Future<chopper.Response<AdminDraftOrdersRes>> adminDraftOrdersIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        AdminDraftOrdersRes, () => AdminDraftOrdersRes.fromJsonFactory);

    return _adminDraftOrdersIdGet(id: id);
  }

  ///Get a Draft Order
  ///@param id The ID of the Draft Order.
  @Get(path: '/admin/draft-orders/{id}')
  Future<chopper.Response<AdminDraftOrdersRes>> _adminDraftOrdersIdGet(
      {@Path('id') required String? id});

  ///Update a Draft Order
  ///@param id The ID of the Draft Order.
  Future<chopper.Response<AdminDraftOrdersRes>> adminDraftOrdersIdPost({
    required String? id,
    required AdminPostDraftOrdersDraftOrderReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminDraftOrdersRes, () => AdminDraftOrdersRes.fromJsonFactory);

    return _adminDraftOrdersIdPost(id: id, body: body);
  }

  ///Update a Draft Order
  ///@param id The ID of the Draft Order.
  @Post(
    path: '/admin/draft-orders/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<AdminDraftOrdersRes>> _adminDraftOrdersIdPost({
    @Path('id') required String? id,
    @Body() required AdminPostDraftOrdersDraftOrderReq? body,
  });

  ///Delete a Draft Order
  ///@param id The ID of the Draft Order.
  Future<chopper.Response<AdminDraftOrdersDeleteRes>> adminDraftOrdersIdDelete(
      {required String? id}) {
    generatedMapping.putIfAbsent(AdminDraftOrdersDeleteRes,
        () => AdminDraftOrdersDeleteRes.fromJsonFactory);

    return _adminDraftOrdersIdDelete(id: id);
  }

  ///Delete a Draft Order
  ///@param id The ID of the Draft Order.
  @Delete(path: '/admin/draft-orders/{id}')
  Future<chopper.Response<AdminDraftOrdersDeleteRes>> _adminDraftOrdersIdDelete(
      {@Path('id') required String? id});

  ///Create a Line Item
  ///@param id The ID of the Draft Order.
  Future<chopper.Response<AdminDraftOrdersRes>>
      adminDraftOrdersIdLineItemsPost({
    required String? id,
    required AdminPostDraftOrdersDraftOrderLineItemsReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminDraftOrdersRes, () => AdminDraftOrdersRes.fromJsonFactory);

    return _adminDraftOrdersIdLineItemsPost(id: id, body: body);
  }

  ///Create a Line Item
  ///@param id The ID of the Draft Order.
  @Post(
    path: '/admin/draft-orders/{id}/line-items',
    optionalBody: true,
  )
  Future<chopper.Response<AdminDraftOrdersRes>>
      _adminDraftOrdersIdLineItemsPost({
    @Path('id') required String? id,
    @Body() required AdminPostDraftOrdersDraftOrderLineItemsReq? body,
  });

  ///Update a Line Item
  ///@param id The ID of the Draft Order.
  ///@param line_id The ID of the Line Item.
  Future<chopper.Response<AdminDraftOrdersRes>>
      adminDraftOrdersIdLineItemsLineIdPost({
    required String? id,
    required String? lineId,
    required AdminPostDraftOrdersDraftOrderLineItemsItemReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminDraftOrdersRes, () => AdminDraftOrdersRes.fromJsonFactory);

    return _adminDraftOrdersIdLineItemsLineIdPost(
        id: id, lineId: lineId, body: body);
  }

  ///Update a Line Item
  ///@param id The ID of the Draft Order.
  ///@param line_id The ID of the Line Item.
  @Post(
    path: '/admin/draft-orders/{id}/line-items/{line_id}',
    optionalBody: true,
  )
  Future<chopper.Response<AdminDraftOrdersRes>>
      _adminDraftOrdersIdLineItemsLineIdPost({
    @Path('id') required String? id,
    @Path('line_id') required String? lineId,
    @Body() required AdminPostDraftOrdersDraftOrderLineItemsItemReq? body,
  });

  ///Delete a Line Item
  ///@param id The ID of the Draft Order.
  ///@param line_id The ID of the line item.
  Future<chopper.Response<AdminDraftOrdersRes>>
      adminDraftOrdersIdLineItemsLineIdDelete({
    required String? id,
    required String? lineId,
  }) {
    generatedMapping.putIfAbsent(
        AdminDraftOrdersRes, () => AdminDraftOrdersRes.fromJsonFactory);

    return _adminDraftOrdersIdLineItemsLineIdDelete(id: id, lineId: lineId);
  }

  ///Delete a Line Item
  ///@param id The ID of the Draft Order.
  ///@param line_id The ID of the line item.
  @Delete(path: '/admin/draft-orders/{id}/line-items/{line_id}')
  Future<chopper.Response<AdminDraftOrdersRes>>
      _adminDraftOrdersIdLineItemsLineIdDelete({
    @Path('id') required String? id,
    @Path('line_id') required String? lineId,
  });

  ///Mark Paid
  ///@param id The Draft Order ID.
  Future<chopper.Response<AdminPostDraftOrdersDraftOrderRegisterPaymentRes>>
      adminDraftOrdersIdPayPost({required String? id}) {
    generatedMapping.putIfAbsent(
        AdminPostDraftOrdersDraftOrderRegisterPaymentRes,
        () => AdminPostDraftOrdersDraftOrderRegisterPaymentRes.fromJsonFactory);

    return _adminDraftOrdersIdPayPost(id: id);
  }

  ///Mark Paid
  ///@param id The Draft Order ID.
  @Post(
    path: '/admin/draft-orders/{id}/pay',
    optionalBody: true,
  )
  Future<chopper.Response<AdminPostDraftOrdersDraftOrderRegisterPaymentRes>>
      _adminDraftOrdersIdPayPost({@Path('id') required String? id});

  ///List Gift Cards
  ///@param offset The number of gift cards to skip when retrieving the gift cards.
  ///@param limit Limit the number of gift cards returned.
  ///@param q a term to search gift cards' code or display ID
  Future<chopper.Response<AdminGiftCardsListRes>> adminGiftCardsGet({
    num? offset,
    num? limit,
    String? q,
  }) {
    generatedMapping.putIfAbsent(
        AdminGiftCardsListRes, () => AdminGiftCardsListRes.fromJsonFactory);

    return _adminGiftCardsGet(offset: offset, limit: limit, q: q);
  }

  ///List Gift Cards
  ///@param offset The number of gift cards to skip when retrieving the gift cards.
  ///@param limit Limit the number of gift cards returned.
  ///@param q a term to search gift cards' code or display ID
  @Get(path: '/admin/gift-cards')
  Future<chopper.Response<AdminGiftCardsListRes>> _adminGiftCardsGet({
    @Query('offset') num? offset,
    @Query('limit') num? limit,
    @Query('q') String? q,
  });

  ///Create a Gift Card
  Future<chopper.Response<AdminGiftCardsRes>> adminGiftCardsPost(
      {required AdminPostGiftCardsReq? body}) {
    generatedMapping.putIfAbsent(
        AdminGiftCardsRes, () => AdminGiftCardsRes.fromJsonFactory);

    return _adminGiftCardsPost(body: body);
  }

  ///Create a Gift Card
  @Post(
    path: '/admin/gift-cards',
    optionalBody: true,
  )
  Future<chopper.Response<AdminGiftCardsRes>> _adminGiftCardsPost(
      {@Body() required AdminPostGiftCardsReq? body});

  ///Get a Gift Card
  ///@param id The ID of the Gift Card.
  Future<chopper.Response<AdminGiftCardsRes>> adminGiftCardsIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        AdminGiftCardsRes, () => AdminGiftCardsRes.fromJsonFactory);

    return _adminGiftCardsIdGet(id: id);
  }

  ///Get a Gift Card
  ///@param id The ID of the Gift Card.
  @Get(path: '/admin/gift-cards/{id}')
  Future<chopper.Response<AdminGiftCardsRes>> _adminGiftCardsIdGet(
      {@Path('id') required String? id});

  ///Update a Gift Card
  ///@param id The ID of the Gift Card.
  Future<chopper.Response<AdminGiftCardsRes>> adminGiftCardsIdPost({
    required String? id,
    required AdminPostGiftCardsGiftCardReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminGiftCardsRes, () => AdminGiftCardsRes.fromJsonFactory);

    return _adminGiftCardsIdPost(id: id, body: body);
  }

  ///Update a Gift Card
  ///@param id The ID of the Gift Card.
  @Post(
    path: '/admin/gift-cards/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<AdminGiftCardsRes>> _adminGiftCardsIdPost({
    @Path('id') required String? id,
    @Body() required AdminPostGiftCardsGiftCardReq? body,
  });

  ///Delete a Gift Card
  ///@param id The ID of the Gift Card to delete.
  Future<chopper.Response<AdminGiftCardsDeleteRes>> adminGiftCardsIdDelete(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        AdminGiftCardsDeleteRes, () => AdminGiftCardsDeleteRes.fromJsonFactory);

    return _adminGiftCardsIdDelete(id: id);
  }

  ///Delete a Gift Card
  ///@param id The ID of the Gift Card to delete.
  @Delete(path: '/admin/gift-cards/{id}')
  Future<chopper.Response<AdminGiftCardsDeleteRes>> _adminGiftCardsIdDelete(
      {@Path('id') required String? id});

  ///List Inventory Items
  ///@param offset The number of inventory items to skip when retrieving the inventory items.
  ///@param limit Limit the number of inventory items returned.
  ///@param expand Comma-separated relations that should be expanded in each returned inventory item.
  ///@param fields Comma-separated fields that should be included in the returned inventory item.
  ///@param q term to search inventory item's sku, title, and description.
  ///@param location_id Filter by location IDs.
  ///@param id Filter by the inventory ID
  ///@param sku Filter by SKU
  ///@param origin_country Filter by origin country
  ///@param mid_code Filter by MID code
  ///@param material Filter by material
  ///@param hs_code Filter by HS Code
  ///@param weight Filter by weight
  ///@param length Filter by length
  ///@param height Filter by height
  ///@param width Filter by width
  ///@param requires_shipping Filter by whether the item requires shipping
  Future<
          chopper
          .Response<AdminInventoryItemsListWithVariantsAndLocationLevelsRes>>
      adminInventoryItemsGet({
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
    generatedMapping.putIfAbsent(
        AdminInventoryItemsListWithVariantsAndLocationLevelsRes,
        () => AdminInventoryItemsListWithVariantsAndLocationLevelsRes
            .fromJsonFactory);

    return _adminInventoryItemsGet(
        offset: offset,
        limit: limit,
        expand: expand,
        fields: fields,
        q: q,
        locationId: locationId,
        id: id,
        sku: sku,
        originCountry: originCountry,
        midCode: midCode,
        material: material,
        hsCode: hsCode,
        weight: weight,
        length: length,
        height: height,
        width: width,
        requiresShipping: requiresShipping);
  }

  ///List Inventory Items
  ///@param offset The number of inventory items to skip when retrieving the inventory items.
  ///@param limit Limit the number of inventory items returned.
  ///@param expand Comma-separated relations that should be expanded in each returned inventory item.
  ///@param fields Comma-separated fields that should be included in the returned inventory item.
  ///@param q term to search inventory item's sku, title, and description.
  ///@param location_id Filter by location IDs.
  ///@param id Filter by the inventory ID
  ///@param sku Filter by SKU
  ///@param origin_country Filter by origin country
  ///@param mid_code Filter by MID code
  ///@param material Filter by material
  ///@param hs_code Filter by HS Code
  ///@param weight Filter by weight
  ///@param length Filter by length
  ///@param height Filter by height
  ///@param width Filter by width
  ///@param requires_shipping Filter by whether the item requires shipping
  @Get(path: '/admin/inventory-items')
  Future<
          chopper
          .Response<AdminInventoryItemsListWithVariantsAndLocationLevelsRes>>
      _adminInventoryItemsGet({
    @Query('offset') int? offset,
    @Query('limit') int? limit,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Query('q') String? q,
    @Query('location_id') List<String>? locationId,
    @Query('id') Object? id,
    @Query('sku') String? sku,
    @Query('origin_country') String? originCountry,
    @Query('mid_code') String? midCode,
    @Query('material') String? material,
    @Query('hs_code') String? hsCode,
    @Query('weight') String? weight,
    @Query('length') String? length,
    @Query('height') String? height,
    @Query('width') String? width,
    @Query('requires_shipping') String? requiresShipping,
  });

  ///Create an Inventory Item
  ///@param expand Comma-separated relations that should be expanded in the returned inventory item.
  ///@param fields Comma-separated fields that should be included in the returned inventory item.
  Future<chopper.Response<AdminInventoryItemsRes>> adminInventoryItemsPost({
    String? expand,
    String? fields,
    required AdminPostInventoryItemsReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminInventoryItemsRes, () => AdminInventoryItemsRes.fromJsonFactory);

    return _adminInventoryItemsPost(expand: expand, fields: fields, body: body);
  }

  ///Create an Inventory Item
  ///@param expand Comma-separated relations that should be expanded in the returned inventory item.
  ///@param fields Comma-separated fields that should be included in the returned inventory item.
  @Post(
    path: '/admin/inventory-items',
    optionalBody: true,
  )
  Future<chopper.Response<AdminInventoryItemsRes>> _adminInventoryItemsPost({
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Body() required AdminPostInventoryItemsReq? body,
  });

  ///Get an Inventory Item
  ///@param id The ID of the Inventory Item.
  ///@param expand Comma-separated relations that should be expanded in the returned inventory item.
  ///@param fields Comma-separated fields that should be included in the returned inventory item.
  Future<chopper.Response<AdminInventoryItemsRes>> adminInventoryItemsIdGet({
    required String? id,
    String? expand,
    String? fields,
  }) {
    generatedMapping.putIfAbsent(
        AdminInventoryItemsRes, () => AdminInventoryItemsRes.fromJsonFactory);

    return _adminInventoryItemsIdGet(id: id, expand: expand, fields: fields);
  }

  ///Get an Inventory Item
  ///@param id The ID of the Inventory Item.
  ///@param expand Comma-separated relations that should be expanded in the returned inventory item.
  ///@param fields Comma-separated fields that should be included in the returned inventory item.
  @Get(path: '/admin/inventory-items/{id}')
  Future<chopper.Response<AdminInventoryItemsRes>> _adminInventoryItemsIdGet({
    @Path('id') required String? id,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
  });

  ///Update an Inventory Item
  ///@param id The ID of the Inventory Item.
  ///@param expand Comma-separated relations that should be expanded in the returned inventory level.
  ///@param fields Comma-separated fields that should be included in the returned inventory level.
  Future<chopper.Response<AdminInventoryItemsRes>> adminInventoryItemsIdPost({
    required String? id,
    String? expand,
    String? fields,
    required AdminPostInventoryItemsInventoryItemReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminInventoryItemsRes, () => AdminInventoryItemsRes.fromJsonFactory);

    return _adminInventoryItemsIdPost(
        id: id, expand: expand, fields: fields, body: body);
  }

  ///Update an Inventory Item
  ///@param id The ID of the Inventory Item.
  ///@param expand Comma-separated relations that should be expanded in the returned inventory level.
  ///@param fields Comma-separated fields that should be included in the returned inventory level.
  @Post(
    path: '/admin/inventory-items/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<AdminInventoryItemsRes>> _adminInventoryItemsIdPost({
    @Path('id') required String? id,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Body() required AdminPostInventoryItemsInventoryItemReq? body,
  });

  ///Delete an Inventory Item
  ///@param id The ID of the Inventory Item to delete.
  Future<chopper.Response<AdminInventoryItemsDeleteRes>>
      adminInventoryItemsIdDelete({required String? id}) {
    generatedMapping.putIfAbsent(AdminInventoryItemsDeleteRes,
        () => AdminInventoryItemsDeleteRes.fromJsonFactory);

    return _adminInventoryItemsIdDelete(id: id);
  }

  ///Delete an Inventory Item
  ///@param id The ID of the Inventory Item to delete.
  @Delete(path: '/admin/inventory-items/{id}')
  Future<chopper.Response<AdminInventoryItemsDeleteRes>>
      _adminInventoryItemsIdDelete({@Path('id') required String? id});

  ///List Inventory Level
  ///@param id The ID of the Inventory Item the locations are associated with.
  ///@param location_id Filter by location IDs.
  ///@param expand Comma-separated relations that should be expanded in the returned inventory levels.
  ///@param fields Comma-separated fields that should be included in the returned inventory levels.
  Future<chopper.Response<AdminInventoryItemsLocationLevelsRes>>
      adminInventoryItemsIdLocationLevelsGet({
    required String? id,
    List<String>? locationId,
    String? expand,
    String? fields,
  }) {
    generatedMapping.putIfAbsent(AdminInventoryItemsLocationLevelsRes,
        () => AdminInventoryItemsLocationLevelsRes.fromJsonFactory);

    return _adminInventoryItemsIdLocationLevelsGet(
        id: id, locationId: locationId, expand: expand, fields: fields);
  }

  ///List Inventory Level
  ///@param id The ID of the Inventory Item the locations are associated with.
  ///@param location_id Filter by location IDs.
  ///@param expand Comma-separated relations that should be expanded in the returned inventory levels.
  ///@param fields Comma-separated fields that should be included in the returned inventory levels.
  @Get(path: '/admin/inventory-items/{id}/location-levels')
  Future<chopper.Response<AdminInventoryItemsLocationLevelsRes>>
      _adminInventoryItemsIdLocationLevelsGet({
    @Path('id') required String? id,
    @Query('location_id') List<String>? locationId,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
  });

  ///Create a Location Level
  ///@param id The ID of the Inventory Item.
  ///@param expand Comma-separated relations that should be expanded in the returned inventory item.
  ///@param fields Comma-separated fields that should be included in the returned inventory item.
  Future<chopper.Response<AdminInventoryItemsRes>>
      adminInventoryItemsIdLocationLevelsPost({
    required String? id,
    String? expand,
    String? fields,
    required AdminPostInventoryItemsItemLocationLevelsReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminInventoryItemsRes, () => AdminInventoryItemsRes.fromJsonFactory);

    return _adminInventoryItemsIdLocationLevelsPost(
        id: id, expand: expand, fields: fields, body: body);
  }

  ///Create a Location Level
  ///@param id The ID of the Inventory Item.
  ///@param expand Comma-separated relations that should be expanded in the returned inventory item.
  ///@param fields Comma-separated fields that should be included in the returned inventory item.
  @Post(
    path: '/admin/inventory-items/{id}/location-levels',
    optionalBody: true,
  )
  Future<chopper.Response<AdminInventoryItemsRes>>
      _adminInventoryItemsIdLocationLevelsPost({
    @Path('id') required String? id,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Body() required AdminPostInventoryItemsItemLocationLevelsReq? body,
  });

  ///Update a Location Level
  ///@param id The ID of the Inventory Item that the location is associated with.
  ///@param location_id The ID of the Location to update.
  ///@param expand Comma-separated relations that should be expanded in the returned location level.
  ///@param fields Comma-separated fields that should be included in the returned location level.
  Future<chopper.Response<AdminInventoryItemsRes>>
      adminInventoryItemsIdLocationLevelsLocationIdPost({
    required String? id,
    required String? locationId,
    String? expand,
    String? fields,
    required AdminPostInventoryItemsItemLocationLevelsLevelReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminInventoryItemsRes, () => AdminInventoryItemsRes.fromJsonFactory);

    return _adminInventoryItemsIdLocationLevelsLocationIdPost(
        id: id,
        locationId: locationId,
        expand: expand,
        fields: fields,
        body: body);
  }

  ///Update a Location Level
  ///@param id The ID of the Inventory Item that the location is associated with.
  ///@param location_id The ID of the Location to update.
  ///@param expand Comma-separated relations that should be expanded in the returned location level.
  ///@param fields Comma-separated fields that should be included in the returned location level.
  @Post(
    path: '/admin/inventory-items/{id}/location-levels/{location_id}',
    optionalBody: true,
  )
  Future<chopper.Response<AdminInventoryItemsRes>>
      _adminInventoryItemsIdLocationLevelsLocationIdPost({
    @Path('id') required String? id,
    @Path('location_id') required String? locationId,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Body() required AdminPostInventoryItemsItemLocationLevelsLevelReq? body,
  });

  ///Delete a Location Level
  ///@param id The ID of the Inventory Item.
  ///@param location_id The ID of the location.
  Future<chopper.Response<AdminInventoryItemsRes>>
      adminInventoryItemsIdLocationLevelsLocationIdDelete({
    required String? id,
    required String? locationId,
  }) {
    generatedMapping.putIfAbsent(
        AdminInventoryItemsRes, () => AdminInventoryItemsRes.fromJsonFactory);

    return _adminInventoryItemsIdLocationLevelsLocationIdDelete(
        id: id, locationId: locationId);
  }

  ///Delete a Location Level
  ///@param id The ID of the Inventory Item.
  ///@param location_id The ID of the location.
  @Delete(path: '/admin/inventory-items/{id}/location-levels/{location_id}')
  Future<chopper.Response<AdminInventoryItemsRes>>
      _adminInventoryItemsIdLocationLevelsLocationIdDelete({
    @Path('id') required String? id,
    @Path('location_id') required String? locationId,
  });

  ///Lists Invites
  Future<chopper.Response<AdminListInvitesRes>> adminInvitesGet() {
    generatedMapping.putIfAbsent(
        AdminListInvitesRes, () => AdminListInvitesRes.fromJsonFactory);

    return _adminInvitesGet();
  }

  ///Lists Invites
  @Get(path: '/admin/invites')
  Future<chopper.Response<AdminListInvitesRes>> _adminInvitesGet();

  ///Create an Invite
  Future<chopper.Response> adminInvitesPost(
      {required AdminPostInvitesReq? body}) {
    return _adminInvitesPost(body: body);
  }

  ///Create an Invite
  @Post(
    path: '/admin/invites',
    optionalBody: true,
  )
  Future<chopper.Response> _adminInvitesPost(
      {@Body() required AdminPostInvitesReq? body});

  ///Accept an Invite
  Future<chopper.Response> adminInvitesAcceptPost(
      {required AdminPostInvitesInviteAcceptReq? body}) {
    return _adminInvitesAcceptPost(body: body);
  }

  ///Accept an Invite
  @Post(
    path: '/admin/invites/accept',
    optionalBody: true,
  )
  Future<chopper.Response> _adminInvitesAcceptPost(
      {@Body() required AdminPostInvitesInviteAcceptReq? body});

  ///Delete an Invite
  ///@param invite_id The ID of the Invite
  Future<chopper.Response<AdminInviteDeleteRes>> adminInvitesInviteIdDelete(
      {required String? inviteId}) {
    generatedMapping.putIfAbsent(
        AdminInviteDeleteRes, () => AdminInviteDeleteRes.fromJsonFactory);

    return _adminInvitesInviteIdDelete(inviteId: inviteId);
  }

  ///Delete an Invite
  ///@param invite_id The ID of the Invite
  @Delete(path: '/admin/invites/{invite_id}')
  Future<chopper.Response<AdminInviteDeleteRes>> _adminInvitesInviteIdDelete(
      {@Path('invite_id') required String? inviteId});

  ///Resend an Invite
  ///@param invite_id The ID of the Invite
  Future<chopper.Response> adminInvitesInviteIdResendPost(
      {required String? inviteId}) {
    return _adminInvitesInviteIdResendPost(inviteId: inviteId);
  }

  ///Resend an Invite
  ///@param invite_id The ID of the Invite
  @Post(
    path: '/admin/invites/{invite_id}/resend',
    optionalBody: true,
  )
  Future<chopper.Response> _adminInvitesInviteIdResendPost(
      {@Path('invite_id') required String? inviteId});

  ///List Notes
  ///@param limit Limit the number of notes returned.
  ///@param offset The number of notes to skip when retrieving the notes.
  ///@param resource_id Filter by resource ID
  Future<chopper.Response<AdminNotesListRes>> adminNotesGet({
    num? limit,
    num? offset,
    String? resourceId,
  }) {
    generatedMapping.putIfAbsent(
        AdminNotesListRes, () => AdminNotesListRes.fromJsonFactory);

    return _adminNotesGet(limit: limit, offset: offset, resourceId: resourceId);
  }

  ///List Notes
  ///@param limit Limit the number of notes returned.
  ///@param offset The number of notes to skip when retrieving the notes.
  ///@param resource_id Filter by resource ID
  @Get(path: '/admin/notes')
  Future<chopper.Response<AdminNotesListRes>> _adminNotesGet({
    @Query('limit') num? limit,
    @Query('offset') num? offset,
    @Query('resource_id') String? resourceId,
  });

  ///Create a Note
  Future<chopper.Response<AdminNotesRes>> adminNotesPost(
      {required AdminPostNotesReq? body}) {
    generatedMapping.putIfAbsent(
        AdminNotesRes, () => AdminNotesRes.fromJsonFactory);

    return _adminNotesPost(body: body);
  }

  ///Create a Note
  @Post(
    path: '/admin/notes',
    optionalBody: true,
  )
  Future<chopper.Response<AdminNotesRes>> _adminNotesPost(
      {@Body() required AdminPostNotesReq? body});

  ///Get a Note
  ///@param id The ID of the note.
  Future<chopper.Response<AdminNotesRes>> adminNotesIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        AdminNotesRes, () => AdminNotesRes.fromJsonFactory);

    return _adminNotesIdGet(id: id);
  }

  ///Get a Note
  ///@param id The ID of the note.
  @Get(path: '/admin/notes/{id}')
  Future<chopper.Response<AdminNotesRes>> _adminNotesIdGet(
      {@Path('id') required String? id});

  ///Update a Note
  ///@param id The ID of the Note
  Future<chopper.Response<AdminNotesRes>> adminNotesIdPost({
    required String? id,
    required AdminPostNotesNoteReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminNotesRes, () => AdminNotesRes.fromJsonFactory);

    return _adminNotesIdPost(id: id, body: body);
  }

  ///Update a Note
  ///@param id The ID of the Note
  @Post(
    path: '/admin/notes/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<AdminNotesRes>> _adminNotesIdPost({
    @Path('id') required String? id,
    @Body() required AdminPostNotesNoteReq? body,
  });

  ///Delete a Note
  ///@param id The ID of the Note to delete.
  Future<chopper.Response<AdminNotesDeleteRes>> adminNotesIdDelete(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        AdminNotesDeleteRes, () => AdminNotesDeleteRes.fromJsonFactory);

    return _adminNotesIdDelete(id: id);
  }

  ///Delete a Note
  ///@param id The ID of the Note to delete.
  @Delete(path: '/admin/notes/{id}')
  Future<chopper.Response<AdminNotesDeleteRes>> _adminNotesIdDelete(
      {@Path('id') required String? id});

  ///List Notifications
  ///@param offset The number of inventory items to skip when retrieving the inventory items.
  ///@param limit Limit the number of notifications returned.
  ///@param fields Comma-separated fields that should be included in each returned notification.
  ///@param expand Comma-separated relations that should be expanded in each returned notification.
  ///@param event_name Filter by the name of the event that triggered sending this notification.
  ///@param resource_type Filter by the resource type.
  ///@param resource_id Filter by the resource ID.
  ///@param to Filter by the address that the Notification was sent to. This will usually be an email address, but it can also represent other addresses such as a chat bot user id.
  ///@param include_resends A boolean indicating whether the result set should include resent notifications or not
  Future<chopper.Response<AdminNotificationsListRes>> adminNotificationsGet({
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
    generatedMapping.putIfAbsent(AdminNotificationsListRes,
        () => AdminNotificationsListRes.fromJsonFactory);

    return _adminNotificationsGet(
        offset: offset,
        limit: limit,
        fields: fields,
        expand: expand,
        eventName: eventName,
        resourceType: resourceType,
        resourceId: resourceId,
        to: to,
        includeResends: includeResends);
  }

  ///List Notifications
  ///@param offset The number of inventory items to skip when retrieving the inventory items.
  ///@param limit Limit the number of notifications returned.
  ///@param fields Comma-separated fields that should be included in each returned notification.
  ///@param expand Comma-separated relations that should be expanded in each returned notification.
  ///@param event_name Filter by the name of the event that triggered sending this notification.
  ///@param resource_type Filter by the resource type.
  ///@param resource_id Filter by the resource ID.
  ///@param to Filter by the address that the Notification was sent to. This will usually be an email address, but it can also represent other addresses such as a chat bot user id.
  ///@param include_resends A boolean indicating whether the result set should include resent notifications or not
  @Get(path: '/admin/notifications')
  Future<chopper.Response<AdminNotificationsListRes>> _adminNotificationsGet({
    @Query('offset') int? offset,
    @Query('limit') int? limit,
    @Query('fields') String? fields,
    @Query('expand') String? expand,
    @Query('event_name') String? eventName,
    @Query('resource_type') String? resourceType,
    @Query('resource_id') String? resourceId,
    @Query('to') String? to,
    @Query('include_resends') String? includeResends,
  });

  ///Resend Notification
  ///@param id The ID of the Notification
  Future<chopper.Response<AdminNotificationsRes>>
      adminNotificationsIdResendPost({
    required String? id,
    required AdminPostNotificationsNotificationResendReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminNotificationsRes, () => AdminNotificationsRes.fromJsonFactory);

    return _adminNotificationsIdResendPost(id: id, body: body);
  }

  ///Resend Notification
  ///@param id The ID of the Notification
  @Post(
    path: '/admin/notifications/{id}/resend',
    optionalBody: true,
  )
  Future<chopper.Response<AdminNotificationsRes>>
      _adminNotificationsIdResendPost({
    @Path('id') required String? id,
    @Body() required AdminPostNotificationsNotificationResendReq? body,
  });

  ///List Order Edits
  ///@param q term to search order edits' internal note.
  ///@param order_id Filter by order ID
  ///@param limit Limit the number of order edits returned.
  ///@param offset The number of order edits to skip when retrieving the order edits.
  ///@param expand Comma-separated relations that should be expanded in each returned order edit.
  ///@param fields Comma-separated fields that should be included in each returned order edit.
  Future<chopper.Response<AdminOrderEditsListRes>> adminOrderEditsGet({
    String? q,
    String? orderId,
    num? limit,
    num? offset,
    String? expand,
    String? fields,
  }) {
    generatedMapping.putIfAbsent(
        AdminOrderEditsListRes, () => AdminOrderEditsListRes.fromJsonFactory);

    return _adminOrderEditsGet(
        q: q,
        orderId: orderId,
        limit: limit,
        offset: offset,
        expand: expand,
        fields: fields);
  }

  ///List Order Edits
  ///@param q term to search order edits' internal note.
  ///@param order_id Filter by order ID
  ///@param limit Limit the number of order edits returned.
  ///@param offset The number of order edits to skip when retrieving the order edits.
  ///@param expand Comma-separated relations that should be expanded in each returned order edit.
  ///@param fields Comma-separated fields that should be included in each returned order edit.
  @Get(path: '/admin/order-edits')
  Future<chopper.Response<AdminOrderEditsListRes>> _adminOrderEditsGet({
    @Query('q') String? q,
    @Query('order_id') String? orderId,
    @Query('limit') num? limit,
    @Query('offset') num? offset,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
  });

  ///Create an OrderEdit
  Future<chopper.Response<AdminOrderEditsRes>> adminOrderEditsPost(
      {required AdminPostOrderEditsReq? body}) {
    generatedMapping.putIfAbsent(
        AdminOrderEditsRes, () => AdminOrderEditsRes.fromJsonFactory);

    return _adminOrderEditsPost(body: body);
  }

  ///Create an OrderEdit
  @Post(
    path: '/admin/order-edits',
    optionalBody: true,
  )
  Future<chopper.Response<AdminOrderEditsRes>> _adminOrderEditsPost(
      {@Body() required AdminPostOrderEditsReq? body});

  ///Get an Order Edit
  ///@param id The ID of the OrderEdit.
  ///@param expand Comma-separated relations that should be expanded in each returned order edit.
  ///@param fields Comma-separated fields that should be included in the returned order edit.
  Future<chopper.Response<AdminOrderEditsRes>> adminOrderEditsIdGet({
    required String? id,
    String? expand,
    String? fields,
  }) {
    generatedMapping.putIfAbsent(
        AdminOrderEditsRes, () => AdminOrderEditsRes.fromJsonFactory);

    return _adminOrderEditsIdGet(id: id, expand: expand, fields: fields);
  }

  ///Get an Order Edit
  ///@param id The ID of the OrderEdit.
  ///@param expand Comma-separated relations that should be expanded in each returned order edit.
  ///@param fields Comma-separated fields that should be included in the returned order edit.
  @Get(path: '/admin/order-edits/{id}')
  Future<chopper.Response<AdminOrderEditsRes>> _adminOrderEditsIdGet({
    @Path('id') required String? id,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
  });

  ///Update an Order Edit
  ///@param id The ID of the OrderEdit.
  Future<chopper.Response<AdminOrderEditsRes>> adminOrderEditsIdPost({
    required String? id,
    required AdminPostOrderEditsOrderEditReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminOrderEditsRes, () => AdminOrderEditsRes.fromJsonFactory);

    return _adminOrderEditsIdPost(id: id, body: body);
  }

  ///Update an Order Edit
  ///@param id The ID of the OrderEdit.
  @Post(
    path: '/admin/order-edits/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<AdminOrderEditsRes>> _adminOrderEditsIdPost({
    @Path('id') required String? id,
    @Body() required AdminPostOrderEditsOrderEditReq? body,
  });

  ///Delete an Order Edit
  ///@param id The ID of the Order Edit to delete.
  Future<chopper.Response<AdminOrderEditDeleteRes>> adminOrderEditsIdDelete(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        AdminOrderEditDeleteRes, () => AdminOrderEditDeleteRes.fromJsonFactory);

    return _adminOrderEditsIdDelete(id: id);
  }

  ///Delete an Order Edit
  ///@param id The ID of the Order Edit to delete.
  @Delete(path: '/admin/order-edits/{id}')
  Future<chopper.Response<AdminOrderEditDeleteRes>> _adminOrderEditsIdDelete(
      {@Path('id') required String? id});

  ///Cancel an Order Edit
  ///@param id The ID of the OrderEdit.
  Future<chopper.Response<AdminOrderEditsRes>> adminOrderEditsIdCancelPost(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        AdminOrderEditsRes, () => AdminOrderEditsRes.fromJsonFactory);

    return _adminOrderEditsIdCancelPost(id: id);
  }

  ///Cancel an Order Edit
  ///@param id The ID of the OrderEdit.
  @Post(
    path: '/admin/order-edits/{id}/cancel',
    optionalBody: true,
  )
  Future<chopper.Response<AdminOrderEditsRes>> _adminOrderEditsIdCancelPost(
      {@Path('id') required String? id});

  ///Delete a Line Item Change
  ///@param id The ID of the Order Edit.
  ///@param change_id The ID of the Line Item Change to delete.
  Future<chopper.Response<AdminOrderEditItemChangeDeleteRes>>
      adminOrderEditsIdChangesChangeIdDelete({
    required String? id,
    required String? changeId,
  }) {
    generatedMapping.putIfAbsent(AdminOrderEditItemChangeDeleteRes,
        () => AdminOrderEditItemChangeDeleteRes.fromJsonFactory);

    return _adminOrderEditsIdChangesChangeIdDelete(id: id, changeId: changeId);
  }

  ///Delete a Line Item Change
  ///@param id The ID of the Order Edit.
  ///@param change_id The ID of the Line Item Change to delete.
  @Delete(path: '/admin/order-edits/{id}/changes/{change_id}')
  Future<chopper.Response<AdminOrderEditItemChangeDeleteRes>>
      _adminOrderEditsIdChangesChangeIdDelete({
    @Path('id') required String? id,
    @Path('change_id') required String? changeId,
  });

  ///Confirm an OrderEdit
  ///@param id The ID of the order edit.
  Future<chopper.Response<AdminOrderEditsRes>> adminOrderEditsIdConfirmPost(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        AdminOrderEditsRes, () => AdminOrderEditsRes.fromJsonFactory);

    return _adminOrderEditsIdConfirmPost(id: id);
  }

  ///Confirm an OrderEdit
  ///@param id The ID of the order edit.
  @Post(
    path: '/admin/order-edits/{id}/confirm',
    optionalBody: true,
  )
  Future<chopper.Response<AdminOrderEditsRes>> _adminOrderEditsIdConfirmPost(
      {@Path('id') required String? id});

  ///Add a Line Item
  ///@param id The ID of the Order Edit.
  Future<chopper.Response<AdminOrderEditsRes>> adminOrderEditsIdItemsPost({
    required String? id,
    required AdminPostOrderEditsEditLineItemsReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminOrderEditsRes, () => AdminOrderEditsRes.fromJsonFactory);

    return _adminOrderEditsIdItemsPost(id: id, body: body);
  }

  ///Add a Line Item
  ///@param id The ID of the Order Edit.
  @Post(
    path: '/admin/order-edits/{id}/items',
    optionalBody: true,
  )
  Future<chopper.Response<AdminOrderEditsRes>> _adminOrderEditsIdItemsPost({
    @Path('id') required String? id,
    @Body() required AdminPostOrderEditsEditLineItemsReq? body,
  });

  ///Upsert Line Item Change
  ///@param id The ID of the Order Edit.
  ///@param item_id The ID of the line item in the original order.
  Future<chopper.Response<AdminOrderEditsRes>>
      adminOrderEditsIdItemsItemIdPost({
    required String? id,
    required String? itemId,
    required AdminPostOrderEditsEditLineItemsLineItemReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminOrderEditsRes, () => AdminOrderEditsRes.fromJsonFactory);

    return _adminOrderEditsIdItemsItemIdPost(
        id: id, itemId: itemId, body: body);
  }

  ///Upsert Line Item Change
  ///@param id The ID of the Order Edit.
  ///@param item_id The ID of the line item in the original order.
  @Post(
    path: '/admin/order-edits/{id}/items/{item_id}',
    optionalBody: true,
  )
  Future<chopper.Response<AdminOrderEditsRes>>
      _adminOrderEditsIdItemsItemIdPost({
    @Path('id') required String? id,
    @Path('item_id') required String? itemId,
    @Body() required AdminPostOrderEditsEditLineItemsLineItemReq? body,
  });

  ///Delete Line Item
  ///@param id The ID of the Order Edit.
  ///@param item_id The ID of line item in the original order.
  Future<chopper.Response<AdminOrderEditsRes>>
      adminOrderEditsIdItemsItemIdDelete({
    required String? id,
    required String? itemId,
  }) {
    generatedMapping.putIfAbsent(
        AdminOrderEditsRes, () => AdminOrderEditsRes.fromJsonFactory);

    return _adminOrderEditsIdItemsItemIdDelete(id: id, itemId: itemId);
  }

  ///Delete Line Item
  ///@param id The ID of the Order Edit.
  ///@param item_id The ID of line item in the original order.
  @Delete(path: '/admin/order-edits/{id}/items/{item_id}')
  Future<chopper.Response<AdminOrderEditsRes>>
      _adminOrderEditsIdItemsItemIdDelete({
    @Path('id') required String? id,
    @Path('item_id') required String? itemId,
  });

  ///Request Confirmation
  ///@param id The ID of the Order Edit.
  Future<chopper.Response<AdminOrderEditsRes>> adminOrderEditsIdRequestPost(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        AdminOrderEditsRes, () => AdminOrderEditsRes.fromJsonFactory);

    return _adminOrderEditsIdRequestPost(id: id);
  }

  ///Request Confirmation
  ///@param id The ID of the Order Edit.
  @Post(
    path: '/admin/order-edits/{id}/request',
    optionalBody: true,
  )
  Future<chopper.Response<AdminOrderEditsRes>> _adminOrderEditsIdRequestPost(
      {@Path('id') required String? id});

  ///List Orders
  ///@param q term to search orders' shipping address, first name, email, and display ID
  ///@param id Filter by ID.
  ///@param status Filter by status
  ///@param fulfillment_status Filter by fulfillment status
  ///@param payment_status Filter by payment status
  ///@param display_id Filter by display ID
  ///@param cart_id Filter by cart ID
  ///@param customer_id Filter by customer ID
  ///@param email Filter by email
  ///@param region_id Filter by region IDs.
  ///@param currency_code Filter by currency codes.
  ///@param tax_rate Filter by tax rate.
  ///@param created_at Filter by a creation date range.
  ///@param updated_at Filter by an update date range.
  ///@param canceled_at Filter by a cancelation date range.
  ///@param sales_channel_id Filter by Sales Channel IDs
  ///@param offset The number of orders to skip when retrieving the orders.
  ///@param limit Limit the number of orders returned.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  Future<chopper.Response<AdminOrdersListRes>> adminOrdersGet({
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
    generatedMapping.putIfAbsent(
        AdminOrdersListRes, () => AdminOrdersListRes.fromJsonFactory);

    return _adminOrdersGet(
        q: q,
        id: id,
        status: status,
        fulfillmentStatus: fulfillmentStatus,
        paymentStatus: paymentStatus,
        displayId: displayId,
        cartId: cartId,
        customerId: customerId,
        email: email,
        regionId: regionId,
        currencyCode: currencyCode,
        taxRate: taxRate,
        createdAt: createdAt,
        updatedAt: updatedAt,
        canceledAt: canceledAt,
        salesChannelId: salesChannelId,
        offset: offset,
        limit: limit,
        expand: expand,
        fields: fields);
  }

  ///List Orders
  ///@param q term to search orders' shipping address, first name, email, and display ID
  ///@param id Filter by ID.
  ///@param status Filter by status
  ///@param fulfillment_status Filter by fulfillment status
  ///@param payment_status Filter by payment status
  ///@param display_id Filter by display ID
  ///@param cart_id Filter by cart ID
  ///@param customer_id Filter by customer ID
  ///@param email Filter by email
  ///@param region_id Filter by region IDs.
  ///@param currency_code Filter by currency codes.
  ///@param tax_rate Filter by tax rate.
  ///@param created_at Filter by a creation date range.
  ///@param updated_at Filter by an update date range.
  ///@param canceled_at Filter by a cancelation date range.
  ///@param sales_channel_id Filter by Sales Channel IDs
  ///@param offset The number of orders to skip when retrieving the orders.
  ///@param limit Limit the number of orders returned.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  @Get(path: '/admin/orders')
  Future<chopper.Response<AdminOrdersListRes>> _adminOrdersGet({
    @Query('q') String? q,
    @Query('id') String? id,
    @Query('status') List<String>? status,
    @Query('fulfillment_status') List<String>? fulfillmentStatus,
    @Query('payment_status') List<String>? paymentStatus,
    @Query('display_id') String? displayId,
    @Query('cart_id') String? cartId,
    @Query('customer_id') String? customerId,
    @Query('email') String? email,
    @Query('region_id') Object? regionId,
    @Query('currency_code') String? currencyCode,
    @Query('tax_rate') String? taxRate,
    @Query('created_at') Object? createdAt,
    @Query('updated_at') Object? updatedAt,
    @Query('canceled_at') Object? canceledAt,
    @Query('sales_channel_id') List<String>? salesChannelId,
    @Query('offset') int? offset,
    @Query('limit') int? limit,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
  });

  ///Get an Order
  ///@param id The ID of the Order.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  Future<chopper.Response<AdminOrdersRes>> adminOrdersIdGet({
    required String? id,
    String? expand,
    String? fields,
  }) {
    generatedMapping.putIfAbsent(
        AdminOrdersRes, () => AdminOrdersRes.fromJsonFactory);

    return _adminOrdersIdGet(id: id, expand: expand, fields: fields);
  }

  ///Get an Order
  ///@param id The ID of the Order.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  @Get(path: '/admin/orders/{id}')
  Future<chopper.Response<AdminOrdersRes>> _adminOrdersIdGet({
    @Path('id') required String? id,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
  });

  ///Update an Order
  ///@param id The ID of the Order.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  Future<chopper.Response<AdminOrdersRes>> adminOrdersIdPost({
    required String? id,
    String? expand,
    String? fields,
    required AdminPostOrdersOrderReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminOrdersRes, () => AdminOrdersRes.fromJsonFactory);

    return _adminOrdersIdPost(
        id: id, expand: expand, fields: fields, body: body);
  }

  ///Update an Order
  ///@param id The ID of the Order.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  @Post(
    path: '/admin/orders/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<AdminOrdersRes>> _adminOrdersIdPost({
    @Path('id') required String? id,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Body() required AdminPostOrdersOrderReq? body,
  });

  ///Archive Order
  ///@param id The ID of the Order.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  Future<chopper.Response<AdminOrdersRes>> adminOrdersIdArchivePost({
    required String? id,
    String? expand,
    String? fields,
  }) {
    generatedMapping.putIfAbsent(
        AdminOrdersRes, () => AdminOrdersRes.fromJsonFactory);

    return _adminOrdersIdArchivePost(id: id, expand: expand, fields: fields);
  }

  ///Archive Order
  ///@param id The ID of the Order.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  @Post(
    path: '/admin/orders/{id}/archive',
    optionalBody: true,
  )
  Future<chopper.Response<AdminOrdersRes>> _adminOrdersIdArchivePost({
    @Path('id') required String? id,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
  });

  ///Cancel an Order
  ///@param id The ID of the Order.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  Future<chopper.Response<AdminOrdersRes>> adminOrdersIdCancelPost({
    required String? id,
    String? expand,
    String? fields,
  }) {
    generatedMapping.putIfAbsent(
        AdminOrdersRes, () => AdminOrdersRes.fromJsonFactory);

    return _adminOrdersIdCancelPost(id: id, expand: expand, fields: fields);
  }

  ///Cancel an Order
  ///@param id The ID of the Order.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  @Post(
    path: '/admin/orders/{id}/cancel',
    optionalBody: true,
  )
  Future<chopper.Response<AdminOrdersRes>> _adminOrdersIdCancelPost({
    @Path('id') required String? id,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
  });

  ///Capture an Order's Payments
  ///@param id The ID of the Order.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  Future<chopper.Response<AdminOrdersRes>> adminOrdersIdCapturePost({
    required String? id,
    String? expand,
    String? fields,
  }) {
    generatedMapping.putIfAbsent(
        AdminOrdersRes, () => AdminOrdersRes.fromJsonFactory);

    return _adminOrdersIdCapturePost(id: id, expand: expand, fields: fields);
  }

  ///Capture an Order's Payments
  ///@param id The ID of the Order.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  @Post(
    path: '/admin/orders/{id}/capture',
    optionalBody: true,
  )
  Future<chopper.Response<AdminOrdersRes>> _adminOrdersIdCapturePost({
    @Path('id') required String? id,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
  });

  ///Create a Claim
  ///@param id The ID of the Order.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  Future<chopper.Response<AdminOrdersRes>> adminOrdersIdClaimsPost({
    required String? id,
    String? expand,
    String? fields,
    required AdminPostOrdersOrderClaimsReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminOrdersRes, () => AdminOrdersRes.fromJsonFactory);

    return _adminOrdersIdClaimsPost(
        id: id, expand: expand, fields: fields, body: body);
  }

  ///Create a Claim
  ///@param id The ID of the Order.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  @Post(
    path: '/admin/orders/{id}/claims',
    optionalBody: true,
  )
  Future<chopper.Response<AdminOrdersRes>> _adminOrdersIdClaimsPost({
    @Path('id') required String? id,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Body() required AdminPostOrdersOrderClaimsReq? body,
  });

  ///Update a Claim
  ///@param id The ID of the Order associated with the claim.
  ///@param claim_id The ID of the Claim.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  Future<chopper.Response<AdminOrdersRes>> adminOrdersIdClaimsClaimIdPost({
    required String? id,
    required String? claimId,
    String? expand,
    String? fields,
    required AdminPostOrdersOrderClaimsClaimReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminOrdersRes, () => AdminOrdersRes.fromJsonFactory);

    return _adminOrdersIdClaimsClaimIdPost(
        id: id, claimId: claimId, expand: expand, fields: fields, body: body);
  }

  ///Update a Claim
  ///@param id The ID of the Order associated with the claim.
  ///@param claim_id The ID of the Claim.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  @Post(
    path: '/admin/orders/{id}/claims/{claim_id}',
    optionalBody: true,
  )
  Future<chopper.Response<AdminOrdersRes>> _adminOrdersIdClaimsClaimIdPost({
    @Path('id') required String? id,
    @Path('claim_id') required String? claimId,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Body() required AdminPostOrdersOrderClaimsClaimReq? body,
  });

  ///Cancel a Claim
  ///@param id The ID of the order the claim is associated with.
  ///@param claim_id The ID of the Claim.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  Future<chopper.Response<AdminOrdersRes>>
      adminOrdersIdClaimsClaimIdCancelPost({
    required String? id,
    required String? claimId,
    String? expand,
    String? fields,
  }) {
    generatedMapping.putIfAbsent(
        AdminOrdersRes, () => AdminOrdersRes.fromJsonFactory);

    return _adminOrdersIdClaimsClaimIdCancelPost(
        id: id, claimId: claimId, expand: expand, fields: fields);
  }

  ///Cancel a Claim
  ///@param id The ID of the order the claim is associated with.
  ///@param claim_id The ID of the Claim.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  @Post(
    path: '/admin/orders/{id}/claims/{claim_id}/cancel',
    optionalBody: true,
  )
  Future<chopper.Response<AdminOrdersRes>>
      _adminOrdersIdClaimsClaimIdCancelPost({
    @Path('id') required String? id,
    @Path('claim_id') required String? claimId,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
  });

  ///Create a Claim Fulfillment
  ///@param id The ID of the Order the claim is associated with.
  ///@param claim_id The ID of the Claim.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  Future<chopper.Response<AdminOrdersRes>>
      adminOrdersIdClaimsClaimIdFulfillmentsPost({
    required String? id,
    required String? claimId,
    String? expand,
    String? fields,
    required AdminPostOrdersOrderClaimsClaimFulfillmentsReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminOrdersRes, () => AdminOrdersRes.fromJsonFactory);

    return _adminOrdersIdClaimsClaimIdFulfillmentsPost(
        id: id, claimId: claimId, expand: expand, fields: fields, body: body);
  }

  ///Create a Claim Fulfillment
  ///@param id The ID of the Order the claim is associated with.
  ///@param claim_id The ID of the Claim.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  @Post(
    path: '/admin/orders/{id}/claims/{claim_id}/fulfillments',
    optionalBody: true,
  )
  Future<chopper.Response<AdminOrdersRes>>
      _adminOrdersIdClaimsClaimIdFulfillmentsPost({
    @Path('id') required String? id,
    @Path('claim_id') required String? claimId,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Body() required AdminPostOrdersOrderClaimsClaimFulfillmentsReq? body,
  });

  ///Cancel Claim's Fulfillment
  ///@param id The ID of the order the claim is associated with.
  ///@param claim_id The ID of the claim.
  ///@param fulfillment_id The ID of the fulfillment.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  Future<chopper.Response<AdminOrdersRes>>
      adminOrdersIdClaimsClaimIdFulfillmentsFulfillmentIdCancelPost({
    required String? id,
    required String? claimId,
    required String? fulfillmentId,
    String? expand,
    String? fields,
  }) {
    generatedMapping.putIfAbsent(
        AdminOrdersRes, () => AdminOrdersRes.fromJsonFactory);

    return _adminOrdersIdClaimsClaimIdFulfillmentsFulfillmentIdCancelPost(
        id: id,
        claimId: claimId,
        fulfillmentId: fulfillmentId,
        expand: expand,
        fields: fields);
  }

  ///Cancel Claim's Fulfillment
  ///@param id The ID of the order the claim is associated with.
  ///@param claim_id The ID of the claim.
  ///@param fulfillment_id The ID of the fulfillment.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  @Post(
    path:
        '/admin/orders/{id}/claims/{claim_id}/fulfillments/{fulfillment_id}/cancel',
    optionalBody: true,
  )
  Future<chopper.Response<AdminOrdersRes>>
      _adminOrdersIdClaimsClaimIdFulfillmentsFulfillmentIdCancelPost({
    @Path('id') required String? id,
    @Path('claim_id') required String? claimId,
    @Path('fulfillment_id') required String? fulfillmentId,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
  });

  ///Ship a Claim's Fulfillment
  ///@param id The ID of the Order the claim is associated with.
  ///@param claim_id The ID of the Claim.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  Future<chopper.Response<AdminOrdersRes>>
      adminOrdersIdClaimsClaimIdShipmentsPost({
    required String? id,
    required String? claimId,
    String? expand,
    String? fields,
    required AdminPostOrdersOrderClaimsClaimShipmentsReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminOrdersRes, () => AdminOrdersRes.fromJsonFactory);

    return _adminOrdersIdClaimsClaimIdShipmentsPost(
        id: id, claimId: claimId, expand: expand, fields: fields, body: body);
  }

  ///Ship a Claim's Fulfillment
  ///@param id The ID of the Order the claim is associated with.
  ///@param claim_id The ID of the Claim.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  @Post(
    path: '/admin/orders/{id}/claims/{claim_id}/shipments',
    optionalBody: true,
  )
  Future<chopper.Response<AdminOrdersRes>>
      _adminOrdersIdClaimsClaimIdShipmentsPost({
    @Path('id') required String? id,
    @Path('claim_id') required String? claimId,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Body() required AdminPostOrdersOrderClaimsClaimShipmentsReq? body,
  });

  ///Complete an Order
  ///@param id The ID of the Order.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  Future<chopper.Response<AdminOrdersRes>> adminOrdersIdCompletePost({
    required String? id,
    String? expand,
    String? fields,
  }) {
    generatedMapping.putIfAbsent(
        AdminOrdersRes, () => AdminOrdersRes.fromJsonFactory);

    return _adminOrdersIdCompletePost(id: id, expand: expand, fields: fields);
  }

  ///Complete an Order
  ///@param id The ID of the Order.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  @Post(
    path: '/admin/orders/{id}/complete',
    optionalBody: true,
  )
  Future<chopper.Response<AdminOrdersRes>> _adminOrdersIdCompletePost({
    @Path('id') required String? id,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
  });

  ///Create a Fulfillment
  ///@param id The ID of the Order.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  Future<chopper.Response<AdminOrdersRes>> adminOrdersIdFulfillmentPost({
    required String? id,
    String? expand,
    String? fields,
    required AdminPostOrdersOrderFulfillmentsReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminOrdersRes, () => AdminOrdersRes.fromJsonFactory);

    return _adminOrdersIdFulfillmentPost(
        id: id, expand: expand, fields: fields, body: body);
  }

  ///Create a Fulfillment
  ///@param id The ID of the Order.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  @Post(
    path: '/admin/orders/{id}/fulfillment',
    optionalBody: true,
  )
  Future<chopper.Response<AdminOrdersRes>> _adminOrdersIdFulfillmentPost({
    @Path('id') required String? id,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Body() required AdminPostOrdersOrderFulfillmentsReq? body,
  });

  ///Cancel a Fulfilmment
  ///@param id The ID of the Order.
  ///@param fulfillment_id The ID of the Fulfillment.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  Future<chopper.Response<AdminOrdersRes>>
      adminOrdersIdFulfillmentsFulfillmentIdCancelPost({
    required String? id,
    required String? fulfillmentId,
    String? expand,
    String? fields,
  }) {
    generatedMapping.putIfAbsent(
        AdminOrdersRes, () => AdminOrdersRes.fromJsonFactory);

    return _adminOrdersIdFulfillmentsFulfillmentIdCancelPost(
        id: id, fulfillmentId: fulfillmentId, expand: expand, fields: fields);
  }

  ///Cancel a Fulfilmment
  ///@param id The ID of the Order.
  ///@param fulfillment_id The ID of the Fulfillment.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  @Post(
    path: '/admin/orders/{id}/fulfillments/{fulfillment_id}/cancel',
    optionalBody: true,
  )
  Future<chopper.Response<AdminOrdersRes>>
      _adminOrdersIdFulfillmentsFulfillmentIdCancelPost({
    @Path('id') required String? id,
    @Path('fulfillment_id') required String? fulfillmentId,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
  });

  ///Create a Reservation
  ///@param id The ID of the Order.
  ///@param line_item_id The ID of the Line item.
  Future<chopper.Response<AdminPostReservationsReq>>
      adminOrdersIdLineItemsLineItemIdReservePost({
    required String? id,
    required String? lineItemId,
    required AdminOrdersOrderLineItemReservationReq? body,
  }) {
    generatedMapping.putIfAbsent(AdminPostReservationsReq,
        () => AdminPostReservationsReq.fromJsonFactory);

    return _adminOrdersIdLineItemsLineItemIdReservePost(
        id: id, lineItemId: lineItemId, body: body);
  }

  ///Create a Reservation
  ///@param id The ID of the Order.
  ///@param line_item_id The ID of the Line item.
  @Post(
    path: '/admin/orders/{id}/line-items/{line_item_id}/reserve',
    optionalBody: true,
  )
  Future<chopper.Response<AdminPostReservationsReq>>
      _adminOrdersIdLineItemsLineItemIdReservePost({
    @Path('id') required String? id,
    @Path('line_item_id') required String? lineItemId,
    @Body() required AdminOrdersOrderLineItemReservationReq? body,
  });

  ///Create a Refund
  ///@param id The ID of the Order.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  Future<chopper.Response<AdminOrdersRes>> adminOrdersIdRefundPost({
    required String? id,
    String? expand,
    String? fields,
    required AdminPostOrdersOrderRefundsReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminOrdersRes, () => AdminOrdersRes.fromJsonFactory);

    return _adminOrdersIdRefundPost(
        id: id, expand: expand, fields: fields, body: body);
  }

  ///Create a Refund
  ///@param id The ID of the Order.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  @Post(
    path: '/admin/orders/{id}/refund',
    optionalBody: true,
  )
  Future<chopper.Response<AdminOrdersRes>> _adminOrdersIdRefundPost({
    @Path('id') required String? id,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Body() required AdminPostOrdersOrderRefundsReq? body,
  });

  ///Get Order Reservations
  ///@param id The ID of the Order.
  ///@param offset The number of reservations to skip when retrieving the reservations.
  ///@param limit Limit the number of reservations returned.
  Future<chopper.Response<AdminReservationsListRes>>
      adminOrdersIdReservationsGet({
    required String? id,
    int? offset,
    int? limit,
  }) {
    generatedMapping.putIfAbsent(AdminReservationsListRes,
        () => AdminReservationsListRes.fromJsonFactory);

    return _adminOrdersIdReservationsGet(id: id, offset: offset, limit: limit);
  }

  ///Get Order Reservations
  ///@param id The ID of the Order.
  ///@param offset The number of reservations to skip when retrieving the reservations.
  ///@param limit Limit the number of reservations returned.
  @Get(path: '/admin/orders/{id}/reservations')
  Future<chopper.Response<AdminReservationsListRes>>
      _adminOrdersIdReservationsGet({
    @Path('id') required String? id,
    @Query('offset') int? offset,
    @Query('limit') int? limit,
  });

  ///Request a Return
  ///@param id The ID of the Order.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  Future<chopper.Response<AdminOrdersRes>> adminOrdersIdReturnPost({
    required String? id,
    String? expand,
    String? fields,
    required AdminPostOrdersOrderReturnsReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminOrdersRes, () => AdminOrdersRes.fromJsonFactory);

    return _adminOrdersIdReturnPost(
        id: id, expand: expand, fields: fields, body: body);
  }

  ///Request a Return
  ///@param id The ID of the Order.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  @Post(
    path: '/admin/orders/{id}/return',
    optionalBody: true,
  )
  Future<chopper.Response<AdminOrdersRes>> _adminOrdersIdReturnPost({
    @Path('id') required String? id,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Body() required AdminPostOrdersOrderReturnsReq? body,
  });

  ///Ship a Fulfillment
  ///@param id The ID of the Order.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  Future<chopper.Response<AdminOrdersRes>> adminOrdersIdShipmentPost({
    required String? id,
    String? expand,
    String? fields,
    required AdminPostOrdersOrderShipmentReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminOrdersRes, () => AdminOrdersRes.fromJsonFactory);

    return _adminOrdersIdShipmentPost(
        id: id, expand: expand, fields: fields, body: body);
  }

  ///Ship a Fulfillment
  ///@param id The ID of the Order.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  @Post(
    path: '/admin/orders/{id}/shipment',
    optionalBody: true,
  )
  Future<chopper.Response<AdminOrdersRes>> _adminOrdersIdShipmentPost({
    @Path('id') required String? id,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Body() required AdminPostOrdersOrderShipmentReq? body,
  });

  ///Add a Shipping Method
  ///@param id The ID of the Order.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  Future<chopper.Response<AdminOrdersRes>> adminOrdersIdShippingMethodsPost({
    required String? id,
    String? expand,
    String? fields,
    required AdminPostOrdersOrderShippingMethodsReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminOrdersRes, () => AdminOrdersRes.fromJsonFactory);

    return _adminOrdersIdShippingMethodsPost(
        id: id, expand: expand, fields: fields, body: body);
  }

  ///Add a Shipping Method
  ///@param id The ID of the Order.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  @Post(
    path: '/admin/orders/{id}/shipping-methods',
    optionalBody: true,
  )
  Future<chopper.Response<AdminOrdersRes>> _adminOrdersIdShippingMethodsPost({
    @Path('id') required String? id,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Body() required AdminPostOrdersOrderShippingMethodsReq? body,
  });

  ///Create a Swap
  ///@param id The ID of the Order.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  Future<chopper.Response<AdminOrdersRes>> adminOrdersIdSwapsPost({
    required String? id,
    String? expand,
    String? fields,
    required AdminPostOrdersOrderSwapsReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminOrdersRes, () => AdminOrdersRes.fromJsonFactory);

    return _adminOrdersIdSwapsPost(
        id: id, expand: expand, fields: fields, body: body);
  }

  ///Create a Swap
  ///@param id The ID of the Order.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  @Post(
    path: '/admin/orders/{id}/swaps',
    optionalBody: true,
  )
  Future<chopper.Response<AdminOrdersRes>> _adminOrdersIdSwapsPost({
    @Path('id') required String? id,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Body() required AdminPostOrdersOrderSwapsReq? body,
  });

  ///Cancel a Swap
  ///@param id The ID of the Order the swap is associated with.
  ///@param swap_id The ID of the Swap.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  Future<chopper.Response<AdminOrdersRes>> adminOrdersIdSwapsSwapIdCancelPost({
    required String? id,
    required String? swapId,
    String? expand,
    String? fields,
  }) {
    generatedMapping.putIfAbsent(
        AdminOrdersRes, () => AdminOrdersRes.fromJsonFactory);

    return _adminOrdersIdSwapsSwapIdCancelPost(
        id: id, swapId: swapId, expand: expand, fields: fields);
  }

  ///Cancel a Swap
  ///@param id The ID of the Order the swap is associated with.
  ///@param swap_id The ID of the Swap.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  @Post(
    path: '/admin/orders/{id}/swaps/{swap_id}/cancel',
    optionalBody: true,
  )
  Future<chopper.Response<AdminOrdersRes>> _adminOrdersIdSwapsSwapIdCancelPost({
    @Path('id') required String? id,
    @Path('swap_id') required String? swapId,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
  });

  ///Create a Swap Fulfillment
  ///@param id The ID of the Order the swap is associated with.
  ///@param swap_id The ID of the Swap.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  Future<chopper.Response<AdminOrdersRes>>
      adminOrdersIdSwapsSwapIdFulfillmentsPost({
    required String? id,
    required String? swapId,
    String? expand,
    String? fields,
    required AdminPostOrdersOrderSwapsSwapFulfillmentsReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminOrdersRes, () => AdminOrdersRes.fromJsonFactory);

    return _adminOrdersIdSwapsSwapIdFulfillmentsPost(
        id: id, swapId: swapId, expand: expand, fields: fields, body: body);
  }

  ///Create a Swap Fulfillment
  ///@param id The ID of the Order the swap is associated with.
  ///@param swap_id The ID of the Swap.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  @Post(
    path: '/admin/orders/{id}/swaps/{swap_id}/fulfillments',
    optionalBody: true,
  )
  Future<chopper.Response<AdminOrdersRes>>
      _adminOrdersIdSwapsSwapIdFulfillmentsPost({
    @Path('id') required String? id,
    @Path('swap_id') required String? swapId,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Body() required AdminPostOrdersOrderSwapsSwapFulfillmentsReq? body,
  });

  ///Cancel Swap's Fulfilmment
  ///@param id The ID of the order the swap is associated with.
  ///@param swap_id The ID of the swap.
  ///@param fulfillment_id The ID of the fulfillment.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  Future<chopper.Response<AdminOrdersRes>>
      adminOrdersIdSwapsSwapIdFulfillmentsFulfillmentIdCancelPost({
    required String? id,
    required String? swapId,
    required String? fulfillmentId,
    String? expand,
    String? fields,
  }) {
    generatedMapping.putIfAbsent(
        AdminOrdersRes, () => AdminOrdersRes.fromJsonFactory);

    return _adminOrdersIdSwapsSwapIdFulfillmentsFulfillmentIdCancelPost(
        id: id,
        swapId: swapId,
        fulfillmentId: fulfillmentId,
        expand: expand,
        fields: fields);
  }

  ///Cancel Swap's Fulfilmment
  ///@param id The ID of the order the swap is associated with.
  ///@param swap_id The ID of the swap.
  ///@param fulfillment_id The ID of the fulfillment.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  @Post(
    path:
        '/admin/orders/{id}/swaps/{swap_id}/fulfillments/{fulfillment_id}/cancel',
    optionalBody: true,
  )
  Future<chopper.Response<AdminOrdersRes>>
      _adminOrdersIdSwapsSwapIdFulfillmentsFulfillmentIdCancelPost({
    @Path('id') required String? id,
    @Path('swap_id') required String? swapId,
    @Path('fulfillment_id') required String? fulfillmentId,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
  });

  ///Process a Swap Payment
  ///@param id The ID of the order the swap is associated with.
  ///@param swap_id The ID of the swap.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  Future<chopper.Response<AdminOrdersRes>>
      adminOrdersIdSwapsSwapIdProcessPaymentPost({
    required String? id,
    required String? swapId,
    String? expand,
    String? fields,
  }) {
    generatedMapping.putIfAbsent(
        AdminOrdersRes, () => AdminOrdersRes.fromJsonFactory);

    return _adminOrdersIdSwapsSwapIdProcessPaymentPost(
        id: id, swapId: swapId, expand: expand, fields: fields);
  }

  ///Process a Swap Payment
  ///@param id The ID of the order the swap is associated with.
  ///@param swap_id The ID of the swap.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  @Post(
    path: '/admin/orders/{id}/swaps/{swap_id}/process-payment',
    optionalBody: true,
  )
  Future<chopper.Response<AdminOrdersRes>>
      _adminOrdersIdSwapsSwapIdProcessPaymentPost({
    @Path('id') required String? id,
    @Path('swap_id') required String? swapId,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
  });

  ///Ship a Swap's Fulfillment
  ///@param id The ID of the Order.
  ///@param swap_id The ID of the Swap.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  Future<chopper.Response<AdminOrdersRes>>
      adminOrdersIdSwapsSwapIdShipmentsPost({
    required String? id,
    required String? swapId,
    String? expand,
    String? fields,
    required AdminPostOrdersOrderSwapsSwapShipmentsReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminOrdersRes, () => AdminOrdersRes.fromJsonFactory);

    return _adminOrdersIdSwapsSwapIdShipmentsPost(
        id: id, swapId: swapId, expand: expand, fields: fields, body: body);
  }

  ///Ship a Swap's Fulfillment
  ///@param id The ID of the Order.
  ///@param swap_id The ID of the Swap.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param fields Comma-separated fields that should be included in the returned order.
  @Post(
    path: '/admin/orders/{id}/swaps/{swap_id}/shipments',
    optionalBody: true,
  )
  Future<chopper.Response<AdminOrdersRes>>
      _adminOrdersIdSwapsSwapIdShipmentsPost({
    @Path('id') required String? id,
    @Path('swap_id') required String? swapId,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Body() required AdminPostOrdersOrderSwapsSwapShipmentsReq? body,
  });

  ///Get a Payment Collection
  ///@param id The ID of the Payment Collection.
  ///@param expand Comma-separated relations that should be expanded in the returned payment collection.
  ///@param fields Comma-separated fields that should be included in the returned payment collection.
  Future<chopper.Response<AdminPaymentCollectionsRes>>
      adminPaymentCollectionsIdGet({
    required String? id,
    String? expand,
    String? fields,
  }) {
    generatedMapping.putIfAbsent(AdminPaymentCollectionsRes,
        () => AdminPaymentCollectionsRes.fromJsonFactory);

    return _adminPaymentCollectionsIdGet(
        id: id, expand: expand, fields: fields);
  }

  ///Get a Payment Collection
  ///@param id The ID of the Payment Collection.
  ///@param expand Comma-separated relations that should be expanded in the returned payment collection.
  ///@param fields Comma-separated fields that should be included in the returned payment collection.
  @Get(path: '/admin/payment-collections/{id}')
  Future<chopper.Response<AdminPaymentCollectionsRes>>
      _adminPaymentCollectionsIdGet({
    @Path('id') required String? id,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
  });

  ///Update Payment Collection
  ///@param id The ID of the Payment Collection.
  Future<chopper.Response<AdminPaymentCollectionsRes>>
      adminPaymentCollectionsIdPost({
    required String? id,
    required AdminUpdatePaymentCollectionsReq? body,
  }) {
    generatedMapping.putIfAbsent(AdminPaymentCollectionsRes,
        () => AdminPaymentCollectionsRes.fromJsonFactory);

    return _adminPaymentCollectionsIdPost(id: id, body: body);
  }

  ///Update Payment Collection
  ///@param id The ID of the Payment Collection.
  @Post(
    path: '/admin/payment-collections/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<AdminPaymentCollectionsRes>>
      _adminPaymentCollectionsIdPost({
    @Path('id') required String? id,
    @Body() required AdminUpdatePaymentCollectionsReq? body,
  });

  ///Delete a Payment Collection
  ///@param id The ID of the Payment Collection.
  Future<chopper.Response<AdminPaymentCollectionDeleteRes>>
      adminPaymentCollectionsIdDelete({required String? id}) {
    generatedMapping.putIfAbsent(AdminPaymentCollectionDeleteRes,
        () => AdminPaymentCollectionDeleteRes.fromJsonFactory);

    return _adminPaymentCollectionsIdDelete(id: id);
  }

  ///Delete a Payment Collection
  ///@param id The ID of the Payment Collection.
  @Delete(path: '/admin/payment-collections/{id}')
  Future<chopper.Response<AdminPaymentCollectionDeleteRes>>
      _adminPaymentCollectionsIdDelete({@Path('id') required String? id});

  ///Mark Authorized
  ///@param id The ID of the Payment Collection.
  Future<chopper.Response<AdminPaymentCollectionsRes>>
      adminPaymentCollectionsIdAuthorizePost({required String? id}) {
    generatedMapping.putIfAbsent(AdminPaymentCollectionsRes,
        () => AdminPaymentCollectionsRes.fromJsonFactory);

    return _adminPaymentCollectionsIdAuthorizePost(id: id);
  }

  ///Mark Authorized
  ///@param id The ID of the Payment Collection.
  @Post(
    path: '/admin/payment-collections/{id}/authorize',
    optionalBody: true,
  )
  Future<chopper.Response<AdminPaymentCollectionsRes>>
      _adminPaymentCollectionsIdAuthorizePost(
          {@Path('id') required String? id});

  ///Get Payment details
  ///@param id The ID of the Payment.
  Future<chopper.Response<AdminPaymentRes>> adminPaymentsIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        AdminPaymentRes, () => AdminPaymentRes.fromJsonFactory);

    return _adminPaymentsIdGet(id: id);
  }

  ///Get Payment details
  ///@param id The ID of the Payment.
  @Get(path: '/admin/payments/{id}')
  Future<chopper.Response<AdminPaymentRes>> _adminPaymentsIdGet(
      {@Path('id') required String? id});

  ///Capture a Payment
  ///@param id The ID of the Payment.
  Future<chopper.Response<AdminPaymentRes>> adminPaymentsIdCapturePost(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        AdminPaymentRes, () => AdminPaymentRes.fromJsonFactory);

    return _adminPaymentsIdCapturePost(id: id);
  }

  ///Capture a Payment
  ///@param id The ID of the Payment.
  @Post(
    path: '/admin/payments/{id}/capture',
    optionalBody: true,
  )
  Future<chopper.Response<AdminPaymentRes>> _adminPaymentsIdCapturePost(
      {@Path('id') required String? id});

  ///Refund Payment
  ///@param id The ID of the Payment.
  Future<chopper.Response<AdminRefundRes>> adminPaymentsIdRefundPost({
    required String? id,
    required AdminPostPaymentRefundsReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminRefundRes, () => AdminRefundRes.fromJsonFactory);

    return _adminPaymentsIdRefundPost(id: id, body: body);
  }

  ///Refund Payment
  ///@param id The ID of the Payment.
  @Post(
    path: '/admin/payments/{id}/refund',
    optionalBody: true,
  )
  Future<chopper.Response<AdminRefundRes>> _adminPaymentsIdRefundPost({
    @Path('id') required String? id,
    @Body() required AdminPostPaymentRefundsReq? body,
  });

  ///List Price Lists
  ///@param limit Limit the number of price lists returned.
  ///@param offset The number of price lists to skip when retrieving the price lists.
  ///@param expand Comma-separated relations that should be expanded in the returned price lists.
  ///@param fields Comma-separated fields that should be included in the returned price lists.
  ///@param order A price-list field to sort-order the retrieved price lists by.
  ///@param id Filter by ID
  ///@param q term to search price lists' description, name, and customer group's name.
  ///@param status Filter by status.
  ///@param name Filter by name
  ///@param customer_groups Filter by customer-group IDs.
  ///@param type Filter by type.
  ///@param created_at Filter by a creation date range.
  ///@param updated_at Filter by an update date range.
  ///@param deleted_at Filter by a deletion date range.
  Future<chopper.Response<AdminPriceListsListRes>> adminPriceListsGet({
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
    generatedMapping.putIfAbsent(
        AdminPriceListsListRes, () => AdminPriceListsListRes.fromJsonFactory);

    return _adminPriceListsGet(
        limit: limit,
        offset: offset,
        expand: expand,
        fields: fields,
        order: order,
        id: id,
        q: q,
        status: status,
        name: name,
        customerGroups: customerGroups,
        type: type,
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt);
  }

  ///List Price Lists
  ///@param limit Limit the number of price lists returned.
  ///@param offset The number of price lists to skip when retrieving the price lists.
  ///@param expand Comma-separated relations that should be expanded in the returned price lists.
  ///@param fields Comma-separated fields that should be included in the returned price lists.
  ///@param order A price-list field to sort-order the retrieved price lists by.
  ///@param id Filter by ID
  ///@param q term to search price lists' description, name, and customer group's name.
  ///@param status Filter by status.
  ///@param name Filter by name
  ///@param customer_groups Filter by customer-group IDs.
  ///@param type Filter by type.
  ///@param created_at Filter by a creation date range.
  ///@param updated_at Filter by an update date range.
  ///@param deleted_at Filter by a deletion date range.
  @Get(path: '/admin/price-lists')
  Future<chopper.Response<AdminPriceListsListRes>> _adminPriceListsGet({
    @Query('limit') num? limit,
    @Query('offset') num? offset,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Query('order') String? order,
    @Query('id') String? id,
    @Query('q') String? q,
    @Query('status') List<String>? status,
    @Query('name') String? name,
    @Query('customer_groups') List<String>? customerGroups,
    @Query('type') List<String>? type,
    @Query('created_at') Object? createdAt,
    @Query('updated_at') Object? updatedAt,
    @Query('deleted_at') Object? deletedAt,
  });

  ///Create a Price List
  Future<chopper.Response<AdminPriceListRes>> adminPriceListsPost(
      {required AdminPostPriceListsPriceListReq? body}) {
    generatedMapping.putIfAbsent(
        AdminPriceListRes, () => AdminPriceListRes.fromJsonFactory);

    return _adminPriceListsPost(body: body);
  }

  ///Create a Price List
  @Post(
    path: '/admin/price-lists',
    optionalBody: true,
  )
  Future<chopper.Response<AdminPriceListRes>> _adminPriceListsPost(
      {@Body() required AdminPostPriceListsPriceListReq? body});

  ///Get a Price List
  ///@param id The ID of the Price List.
  Future<chopper.Response<AdminPriceListRes>> adminPriceListsIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        AdminPriceListRes, () => AdminPriceListRes.fromJsonFactory);

    return _adminPriceListsIdGet(id: id);
  }

  ///Get a Price List
  ///@param id The ID of the Price List.
  @Get(path: '/admin/price-lists/{id}')
  Future<chopper.Response<AdminPriceListRes>> _adminPriceListsIdGet(
      {@Path('id') required String? id});

  ///Update a Price List
  ///@param id The ID of the Price List.
  Future<chopper.Response<AdminPriceListRes>> adminPriceListsIdPost({
    required String? id,
    required AdminPostPriceListsPriceListPriceListReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminPriceListRes, () => AdminPriceListRes.fromJsonFactory);

    return _adminPriceListsIdPost(id: id, body: body);
  }

  ///Update a Price List
  ///@param id The ID of the Price List.
  @Post(
    path: '/admin/price-lists/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<AdminPriceListRes>> _adminPriceListsIdPost({
    @Path('id') required String? id,
    @Body() required AdminPostPriceListsPriceListPriceListReq? body,
  });

  ///Delete a Price List
  ///@param id The ID of the Price List.
  Future<chopper.Response<AdminPriceListDeleteRes>> adminPriceListsIdDelete(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        AdminPriceListDeleteRes, () => AdminPriceListDeleteRes.fromJsonFactory);

    return _adminPriceListsIdDelete(id: id);
  }

  ///Delete a Price List
  ///@param id The ID of the Price List.
  @Delete(path: '/admin/price-lists/{id}')
  Future<chopper.Response<AdminPriceListDeleteRes>> _adminPriceListsIdDelete(
      {@Path('id') required String? id});

  ///Add or Update Prices
  ///@param id The ID of the Price List.
  Future<chopper.Response<AdminPriceListRes>> adminPriceListsIdPricesBatchPost({
    required String? id,
    required AdminPostPriceListPricesPricesReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminPriceListRes, () => AdminPriceListRes.fromJsonFactory);

    return _adminPriceListsIdPricesBatchPost(id: id, body: body);
  }

  ///Add or Update Prices
  ///@param id The ID of the Price List.
  @Post(
    path: '/admin/price-lists/{id}/prices/batch',
    optionalBody: true,
  )
  Future<chopper.Response<AdminPriceListRes>>
      _adminPriceListsIdPricesBatchPost({
    @Path('id') required String? id,
    @Body() required AdminPostPriceListPricesPricesReq? body,
  });

  ///Delete Prices
  ///@param id The ID of the Price List
  Future<chopper.Response<AdminPriceListDeleteBatchRes>>
      adminPriceListsIdPricesBatchDelete({
    required String? id,
    required AdminDeletePriceListPricesPricesReq? body,
  }) {
    generatedMapping.putIfAbsent(AdminPriceListDeleteBatchRes,
        () => AdminPriceListDeleteBatchRes.fromJsonFactory);

    return _adminPriceListsIdPricesBatchDelete(id: id, body: body);
  }

  ///Delete Prices
  ///@param id The ID of the Price List
  @Delete(path: '/admin/price-lists/{id}/prices/batch')
  Future<chopper.Response<AdminPriceListDeleteBatchRes>>
      _adminPriceListsIdPricesBatchDelete({
    @Path('id') required String? id,
    @Body() required AdminDeletePriceListPricesPricesReq? body,
  });

  ///List Products
  ///@param id ID of the price list.
  ///@param q term used to search products' title, description, product variant's title and sku, and product collection's title.
  ///@param id Filter by product ID
  ///@param status Filter by product status
  ///@param collection_id Filter by product collection ID. Only products in the specified collections are retrieved.
  ///@param tags Filter by tag IDs. Only products having the specified tags are retrieved.
  ///@param title Filter by title
  ///@param description Filter by description
  ///@param handle Filter by handle
  ///@param is_giftcard A boolean value to filter by whether the product is a gift card or not.
  ///@param type Filter product type.
  ///@param order A product field to sort-order the retrieved products by.
  ///@param created_at Filter by a creation date range.
  ///@param updated_at Filter by an update date range.
  ///@param deleted_at Filter by a deletion date range.
  ///@param offset The number of products to skip when retrieving the products.
  ///@param limit Limit the number of products returned.
  ///@param expand Comma-separated relations that should be expanded in the returned products.
  ///@param fields Comma-separated fields that should be included in the returned products.
  Future<chopper.Response<AdminPriceListsProductsListRes>>
      adminPriceListsIdProductsGet({
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
    generatedMapping.putIfAbsent(AdminPriceListsProductsListRes,
        () => AdminPriceListsProductsListRes.fromJsonFactory);

    return _adminPriceListsIdProductsGet(
        id: id,
        q: q,
        id$: id$,
        status: status,
        collectionId: collectionId,
        tags: tags,
        title: title,
        description: description,
        handle: handle,
        isGiftcard: isGiftcard,
        type: type,
        order: order,
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
        offset: offset,
        limit: limit,
        expand: expand,
        fields: fields);
  }

  ///List Products
  ///@param id ID of the price list.
  ///@param q term used to search products' title, description, product variant's title and sku, and product collection's title.
  ///@param id Filter by product ID
  ///@param status Filter by product status
  ///@param collection_id Filter by product collection ID. Only products in the specified collections are retrieved.
  ///@param tags Filter by tag IDs. Only products having the specified tags are retrieved.
  ///@param title Filter by title
  ///@param description Filter by description
  ///@param handle Filter by handle
  ///@param is_giftcard A boolean value to filter by whether the product is a gift card or not.
  ///@param type Filter product type.
  ///@param order A product field to sort-order the retrieved products by.
  ///@param created_at Filter by a creation date range.
  ///@param updated_at Filter by an update date range.
  ///@param deleted_at Filter by a deletion date range.
  ///@param offset The number of products to skip when retrieving the products.
  ///@param limit Limit the number of products returned.
  ///@param expand Comma-separated relations that should be expanded in the returned products.
  ///@param fields Comma-separated fields that should be included in the returned products.
  @Get(path: '/admin/price-lists/{id}/products')
  Future<chopper.Response<AdminPriceListsProductsListRes>>
      _adminPriceListsIdProductsGet({
    @Path('id') required String? id,
    @Query('q') String? q,
    @Query('id') String? id$,
    @Query('status') List<String>? status,
    @Query('collection_id') List<String>? collectionId,
    @Query('tags') List<String>? tags,
    @Query('title') String? title,
    @Query('description') String? description,
    @Query('handle') String? handle,
    @Query('is_giftcard') String? isGiftcard,
    @Query('type') String? type,
    @Query('order') String? order,
    @Query('created_at') Object? createdAt,
    @Query('updated_at') Object? updatedAt,
    @Query('deleted_at') Object? deletedAt,
    @Query('offset') int? offset,
    @Query('limit') int? limit,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
  });

  ///Delete Product Prices
  ///@param id The ID of the Price List
  Future<chopper.Response<AdminPriceListDeleteProductPricesRes>>
      adminPriceListsIdProductsPricesBatchDelete({required String? id}) {
    generatedMapping.putIfAbsent(AdminPriceListDeleteProductPricesRes,
        () => AdminPriceListDeleteProductPricesRes.fromJsonFactory);

    return _adminPriceListsIdProductsPricesBatchDelete(id: id);
  }

  ///Delete Product Prices
  ///@param id The ID of the Price List
  @Delete(path: '/admin/price-lists/{id}/products/prices/batch')
  Future<chopper.Response<AdminPriceListDeleteProductPricesRes>>
      _adminPriceListsIdProductsPricesBatchDelete(
          {@Path('id') required String? id});

  ///Delete a Product's Prices
  ///@param id The ID of the Price List.
  ///@param product_id The ID of the product from which the prices will be deleted.
  Future<chopper.Response<AdminPriceListDeleteProductPricesRes>>
      adminPriceListsIdProductsProductIdPricesDelete({
    required String? id,
    required String? productId,
  }) {
    generatedMapping.putIfAbsent(AdminPriceListDeleteProductPricesRes,
        () => AdminPriceListDeleteProductPricesRes.fromJsonFactory);

    return _adminPriceListsIdProductsProductIdPricesDelete(
        id: id, productId: productId);
  }

  ///Delete a Product's Prices
  ///@param id The ID of the Price List.
  ///@param product_id The ID of the product from which the prices will be deleted.
  @Delete(path: '/admin/price-lists/{id}/products/{product_id}/prices')
  Future<chopper.Response<AdminPriceListDeleteProductPricesRes>>
      _adminPriceListsIdProductsProductIdPricesDelete({
    @Path('id') required String? id,
    @Path('product_id') required String? productId,
  });

  ///Delete a Variant's Prices
  ///@param id The ID of the Price List.
  ///@param variant_id The ID of the variant.
  Future<chopper.Response<AdminPriceListDeleteVariantPricesRes>>
      adminPriceListsIdVariantsVariantIdPricesDelete({
    required String? id,
    required String? variantId,
  }) {
    generatedMapping.putIfAbsent(AdminPriceListDeleteVariantPricesRes,
        () => AdminPriceListDeleteVariantPricesRes.fromJsonFactory);

    return _adminPriceListsIdVariantsVariantIdPricesDelete(
        id: id, variantId: variantId);
  }

  ///Delete a Variant's Prices
  ///@param id The ID of the Price List.
  ///@param variant_id The ID of the variant.
  @Delete(path: '/admin/price-lists/{id}/variants/{variant_id}/prices')
  Future<chopper.Response<AdminPriceListDeleteVariantPricesRes>>
      _adminPriceListsIdVariantsVariantIdPricesDelete({
    @Path('id') required String? id,
    @Path('variant_id') required String? variantId,
  });

  ///List Product Categories
  ///@param q term to search product categories' names and handles.
  ///@param handle Filter by handle.
  ///@param is_internal Filter by whether the category is internal or not.
  ///@param is_active Filter by whether the category is active or not.
  ///@param include_descendants_tree If set to `true`, all nested descendants of a category are included in the response.
  ///@param parent_category_id Filter by the ID of a parent category.
  ///@param offset The number of product categories to skip when retrieving the product categories.
  ///@param limit Limit the number of product categories returned.
  ///@param expand Comma-separated relations that should be expanded in the returned product categories.
  ///@param fields Comma-separated fields that should be included in the returned product categories.
  Future<chopper.Response<AdminProductCategoriesListRes>>
      adminProductCategoriesGet({
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
    generatedMapping.putIfAbsent(AdminProductCategoriesListRes,
        () => AdminProductCategoriesListRes.fromJsonFactory);

    return _adminProductCategoriesGet(
        q: q,
        handle: handle,
        isInternal: isInternal,
        isActive: isActive,
        includeDescendantsTree: includeDescendantsTree,
        parentCategoryId: parentCategoryId,
        offset: offset,
        limit: limit,
        expand: expand,
        fields: fields);
  }

  ///List Product Categories
  ///@param q term to search product categories' names and handles.
  ///@param handle Filter by handle.
  ///@param is_internal Filter by whether the category is internal or not.
  ///@param is_active Filter by whether the category is active or not.
  ///@param include_descendants_tree If set to `true`, all nested descendants of a category are included in the response.
  ///@param parent_category_id Filter by the ID of a parent category.
  ///@param offset The number of product categories to skip when retrieving the product categories.
  ///@param limit Limit the number of product categories returned.
  ///@param expand Comma-separated relations that should be expanded in the returned product categories.
  ///@param fields Comma-separated fields that should be included in the returned product categories.
  @Get(path: '/admin/product-categories')
  Future<chopper.Response<AdminProductCategoriesListRes>>
      _adminProductCategoriesGet({
    @Query('q') String? q,
    @Query('handle') String? handle,
    @Query('is_internal') bool? isInternal,
    @Query('is_active') bool? isActive,
    @Query('include_descendants_tree') bool? includeDescendantsTree,
    @Query('parent_category_id') String? parentCategoryId,
    @Query('offset') int? offset,
    @Query('limit') int? limit,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
  });

  ///Create a Product Category
  ///@param expand Comma-separated relations that should be expanded in the returned product category.
  ///@param fields Comma-separated fields that should be included in the returned product category.
  Future<chopper.Response<AdminProductCategoriesCategoryRes>>
      adminProductCategoriesPost({
    String? expand,
    String? fields,
    required AdminPostProductCategoriesReq? body,
  }) {
    generatedMapping.putIfAbsent(AdminProductCategoriesCategoryRes,
        () => AdminProductCategoriesCategoryRes.fromJsonFactory);

    return _adminProductCategoriesPost(
        expand: expand, fields: fields, body: body);
  }

  ///Create a Product Category
  ///@param expand Comma-separated relations that should be expanded in the returned product category.
  ///@param fields Comma-separated fields that should be included in the returned product category.
  @Post(
    path: '/admin/product-categories',
    optionalBody: true,
  )
  Future<chopper.Response<AdminProductCategoriesCategoryRes>>
      _adminProductCategoriesPost({
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Body() required AdminPostProductCategoriesReq? body,
  });

  ///Get a Product Category
  ///@param id The ID of the Product Category
  ///@param expand Comma-separated relations that should be expanded in the returned product category.
  ///@param fields Comma-separated fields that should be included in the returned product category.
  Future<chopper.Response<AdminProductCategoriesCategoryRes>>
      adminProductCategoriesIdGet({
    required String? id,
    String? expand,
    String? fields,
  }) {
    generatedMapping.putIfAbsent(AdminProductCategoriesCategoryRes,
        () => AdminProductCategoriesCategoryRes.fromJsonFactory);

    return _adminProductCategoriesIdGet(id: id, expand: expand, fields: fields);
  }

  ///Get a Product Category
  ///@param id The ID of the Product Category
  ///@param expand Comma-separated relations that should be expanded in the returned product category.
  ///@param fields Comma-separated fields that should be included in the returned product category.
  @Get(path: '/admin/product-categories/{id}')
  Future<chopper.Response<AdminProductCategoriesCategoryRes>>
      _adminProductCategoriesIdGet({
    @Path('id') required String? id,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
  });

  ///Update a Product Category
  ///@param id The ID of the Product Category.
  ///@param expand (Comma separated) Which fields should be expanded in each product category.
  ///@param fields (Comma separated) Which fields should be retrieved in each product category.
  Future<chopper.Response<AdminProductCategoriesCategoryRes>>
      adminProductCategoriesIdPost({
    required String? id,
    String? expand,
    String? fields,
    required AdminPostProductCategoriesCategoryReq? body,
  }) {
    generatedMapping.putIfAbsent(AdminProductCategoriesCategoryRes,
        () => AdminProductCategoriesCategoryRes.fromJsonFactory);

    return _adminProductCategoriesIdPost(
        id: id, expand: expand, fields: fields, body: body);
  }

  ///Update a Product Category
  ///@param id The ID of the Product Category.
  ///@param expand (Comma separated) Which fields should be expanded in each product category.
  ///@param fields (Comma separated) Which fields should be retrieved in each product category.
  @Post(
    path: '/admin/product-categories/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<AdminProductCategoriesCategoryRes>>
      _adminProductCategoriesIdPost({
    @Path('id') required String? id,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Body() required AdminPostProductCategoriesCategoryReq? body,
  });

  ///Delete a Product Category
  ///@param id The ID of the Product Category
  Future<chopper.Response<AdminProductCategoriesCategoryDeleteRes>>
      adminProductCategoriesIdDelete({required String? id}) {
    generatedMapping.putIfAbsent(AdminProductCategoriesCategoryDeleteRes,
        () => AdminProductCategoriesCategoryDeleteRes.fromJsonFactory);

    return _adminProductCategoriesIdDelete(id: id);
  }

  ///Delete a Product Category
  ///@param id The ID of the Product Category
  @Delete(path: '/admin/product-categories/{id}')
  Future<chopper.Response<AdminProductCategoriesCategoryDeleteRes>>
      _adminProductCategoriesIdDelete({@Path('id') required String? id});

  ///Add Products to a Category
  ///@param id The ID of the Product Category.
  ///@param expand Comma-separated relations that should be expanded in the returned product category.
  ///@param fields Comma-separated fields that should be included in the returned product category.
  Future<chopper.Response<AdminProductCategoriesCategoryRes>>
      adminProductCategoriesIdProductsBatchPost({
    required String? id,
    String? expand,
    String? fields,
    required AdminPostProductCategoriesCategoryProductsBatchReq? body,
  }) {
    generatedMapping.putIfAbsent(AdminProductCategoriesCategoryRes,
        () => AdminProductCategoriesCategoryRes.fromJsonFactory);

    return _adminProductCategoriesIdProductsBatchPost(
        id: id, expand: expand, fields: fields, body: body);
  }

  ///Add Products to a Category
  ///@param id The ID of the Product Category.
  ///@param expand Comma-separated relations that should be expanded in the returned product category.
  ///@param fields Comma-separated fields that should be included in the returned product category.
  @Post(
    path: '/admin/product-categories/{id}/products/batch',
    optionalBody: true,
  )
  Future<chopper.Response<AdminProductCategoriesCategoryRes>>
      _adminProductCategoriesIdProductsBatchPost({
    @Path('id') required String? id,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Body() required AdminPostProductCategoriesCategoryProductsBatchReq? body,
  });

  ///Remove Products from Category
  ///@param id The ID of the Product Category.
  ///@param expand Comma-separated relations that should be expanded in the returned product category.
  ///@param fields Comma-separated fields that should be included in the returned product category.
  Future<chopper.Response<AdminProductCategoriesCategoryRes>>
      adminProductCategoriesIdProductsBatchDelete({
    required String? id,
    String? expand,
    String? fields,
    required AdminDeleteProductCategoriesCategoryProductsBatchReq? body,
  }) {
    generatedMapping.putIfAbsent(AdminProductCategoriesCategoryRes,
        () => AdminProductCategoriesCategoryRes.fromJsonFactory);

    return _adminProductCategoriesIdProductsBatchDelete(
        id: id, expand: expand, fields: fields, body: body);
  }

  ///Remove Products from Category
  ///@param id The ID of the Product Category.
  ///@param expand Comma-separated relations that should be expanded in the returned product category.
  ///@param fields Comma-separated fields that should be included in the returned product category.
  @Delete(path: '/admin/product-categories/{id}/products/batch')
  Future<chopper.Response<AdminProductCategoriesCategoryRes>>
      _adminProductCategoriesIdProductsBatchDelete({
    @Path('id') required String? id,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Body() required AdminDeleteProductCategoriesCategoryProductsBatchReq? body,
  });

  ///List Product Tags
  ///@param limit Limit the number of product tags returned.
  ///@param offset The number of product tags to skip when retrieving the product tags.
  ///@param order A product tag field to sort-order the retrieved product tags by.
  ///@param discount_condition_id Filter by the ID of a discount condition. Only product tags that this discount condition is applied to will be retrieved.
  ///@param value Filter by tag value.
  ///@param q term to search product tags' values.
  ///@param id Filter by tag IDs.
  ///@param created_at Filter by a creation date range.
  ///@param updated_at Filter by an update date range.
  Future<chopper.Response<AdminProductTagsListRes>> adminProductTagsGet({
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
    generatedMapping.putIfAbsent(
        AdminProductTagsListRes, () => AdminProductTagsListRes.fromJsonFactory);

    return _adminProductTagsGet(
        limit: limit,
        offset: offset,
        order: order,
        discountConditionId: discountConditionId,
        value: value,
        q: q,
        id: id,
        createdAt: createdAt,
        updatedAt: updatedAt);
  }

  ///List Product Tags
  ///@param limit Limit the number of product tags returned.
  ///@param offset The number of product tags to skip when retrieving the product tags.
  ///@param order A product tag field to sort-order the retrieved product tags by.
  ///@param discount_condition_id Filter by the ID of a discount condition. Only product tags that this discount condition is applied to will be retrieved.
  ///@param value Filter by tag value.
  ///@param q term to search product tags' values.
  ///@param id Filter by tag IDs.
  ///@param created_at Filter by a creation date range.
  ///@param updated_at Filter by an update date range.
  @Get(path: '/admin/product-tags')
  Future<chopper.Response<AdminProductTagsListRes>> _adminProductTagsGet({
    @Query('limit') int? limit,
    @Query('offset') int? offset,
    @Query('order') String? order,
    @Query('discount_condition_id') String? discountConditionId,
    @Query('value') List<String>? value,
    @Query('q') String? q,
    @Query('id') List<String>? id,
    @Query('created_at') Object? createdAt,
    @Query('updated_at') Object? updatedAt,
  });

  ///List Product Types
  ///@param limit Limit the number of product types returned.
  ///@param offset The number of product types to skip when retrieving the product types.
  ///@param order A product type field to sort-order the retrieved product types by.
  ///@param discount_condition_id Filter by the ID of a discount condition. Only product types that this discount condition is applied to will be retrieved.
  ///@param value Filter by value.
  ///@param id Filter by product type IDs.
  ///@param q term to search product types' values.
  ///@param created_at Filter by a creation date range.
  ///@param updated_at Filter by an update date range.
  Future<chopper.Response<AdminProductTypesListRes>> adminProductTypesGet({
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
    generatedMapping.putIfAbsent(AdminProductTypesListRes,
        () => AdminProductTypesListRes.fromJsonFactory);

    return _adminProductTypesGet(
        limit: limit,
        offset: offset,
        order: order,
        discountConditionId: discountConditionId,
        value: value,
        id: id,
        q: q,
        createdAt: createdAt,
        updatedAt: updatedAt);
  }

  ///List Product Types
  ///@param limit Limit the number of product types returned.
  ///@param offset The number of product types to skip when retrieving the product types.
  ///@param order A product type field to sort-order the retrieved product types by.
  ///@param discount_condition_id Filter by the ID of a discount condition. Only product types that this discount condition is applied to will be retrieved.
  ///@param value Filter by value.
  ///@param id Filter by product type IDs.
  ///@param q term to search product types' values.
  ///@param created_at Filter by a creation date range.
  ///@param updated_at Filter by an update date range.
  @Get(path: '/admin/product-types')
  Future<chopper.Response<AdminProductTypesListRes>> _adminProductTypesGet({
    @Query('limit') int? limit,
    @Query('offset') int? offset,
    @Query('order') String? order,
    @Query('discount_condition_id') String? discountConditionId,
    @Query('value') List<String>? value,
    @Query('id') List<String>? id,
    @Query('q') String? q,
    @Query('created_at') Object? createdAt,
    @Query('updated_at') Object? updatedAt,
  });

  ///List Products
  ///@param q term to search products' title, description, variants' title and sku, and collections' title.
  ///@param discount_condition_id Filter by the ID of a discount condition. Only products that this discount condition is applied to will be retrieved.
  ///@param id Filter by product IDs.
  ///@param status Filter by status.
  ///@param collection_id Filter by product collection IDs. Only products that are associated with the specified collections will be retrieved.
  ///@param tags Filter by product tag IDs. Only products that are associated with the specified tags will be retrieved.
  ///@param price_list_id Filter by IDs of price lists. Only products that these price lists are applied to will be retrieved.
  ///@param sales_channel_id Filter by sales channel IDs. Only products that are available in the specified sales channels will be retrieved.
  ///@param type_id Filter by product type IDs. Only products that are associated with the specified types will be retrieved.
  ///@param category_id Filter by product category IDs. Only products that are associated with the specified categories will be retrieved.
  ///@param include_category_children whether to include product category children when filtering by `category_id`
  ///@param title Filter by title.
  ///@param description Filter by description.
  ///@param handle Filter by handle.
  ///@param is_giftcard Whether to retrieve gift cards or regular products.
  ///@param created_at Filter by a creation date range.
  ///@param updated_at Filter by an update date range.
  ///@param deleted_at Filter by a deletion date range.
  ///@param offset The number of products to skip when retrieving the products.
  ///@param limit Limit the number of products returned.
  ///@param expand Comma-separated relations that should be expanded in the returned products.
  ///@param fields Comma-separated fields that should be included in the returned products.
  ///@param order A product field to sort-order the retrieved products by.
  Future<chopper.Response<AdminProductsListRes>> adminProductsGet({
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
    generatedMapping.putIfAbsent(
        AdminProductsListRes, () => AdminProductsListRes.fromJsonFactory);

    return _adminProductsGet(
        q: q,
        discountConditionId: discountConditionId,
        id: id,
        status: status,
        collectionId: collectionId,
        tags: tags,
        priceListId: priceListId,
        salesChannelId: salesChannelId,
        typeId: typeId,
        categoryId: categoryId,
        includeCategoryChildren: includeCategoryChildren,
        title: title,
        description: description,
        handle: handle,
        isGiftcard: isGiftcard,
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
        offset: offset,
        limit: limit,
        expand: expand,
        fields: fields,
        order: order);
  }

  ///List Products
  ///@param q term to search products' title, description, variants' title and sku, and collections' title.
  ///@param discount_condition_id Filter by the ID of a discount condition. Only products that this discount condition is applied to will be retrieved.
  ///@param id Filter by product IDs.
  ///@param status Filter by status.
  ///@param collection_id Filter by product collection IDs. Only products that are associated with the specified collections will be retrieved.
  ///@param tags Filter by product tag IDs. Only products that are associated with the specified tags will be retrieved.
  ///@param price_list_id Filter by IDs of price lists. Only products that these price lists are applied to will be retrieved.
  ///@param sales_channel_id Filter by sales channel IDs. Only products that are available in the specified sales channels will be retrieved.
  ///@param type_id Filter by product type IDs. Only products that are associated with the specified types will be retrieved.
  ///@param category_id Filter by product category IDs. Only products that are associated with the specified categories will be retrieved.
  ///@param include_category_children whether to include product category children when filtering by `category_id`
  ///@param title Filter by title.
  ///@param description Filter by description.
  ///@param handle Filter by handle.
  ///@param is_giftcard Whether to retrieve gift cards or regular products.
  ///@param created_at Filter by a creation date range.
  ///@param updated_at Filter by an update date range.
  ///@param deleted_at Filter by a deletion date range.
  ///@param offset The number of products to skip when retrieving the products.
  ///@param limit Limit the number of products returned.
  ///@param expand Comma-separated relations that should be expanded in the returned products.
  ///@param fields Comma-separated fields that should be included in the returned products.
  ///@param order A product field to sort-order the retrieved products by.
  @Get(path: '/admin/products')
  Future<chopper.Response<AdminProductsListRes>> _adminProductsGet({
    @Query('q') String? q,
    @Query('discount_condition_id') String? discountConditionId,
    @Query('id') Object? id,
    @Query('status') List<String>? status,
    @Query('collection_id') List<String>? collectionId,
    @Query('tags') List<String>? tags,
    @Query('price_list_id') List<String>? priceListId,
    @Query('sales_channel_id') List<String>? salesChannelId,
    @Query('type_id') List<String>? typeId,
    @Query('category_id') List<String>? categoryId,
    @Query('include_category_children') bool? includeCategoryChildren,
    @Query('title') String? title,
    @Query('description') String? description,
    @Query('handle') String? handle,
    @Query('is_giftcard') bool? isGiftcard,
    @Query('created_at') Object? createdAt,
    @Query('updated_at') Object? updatedAt,
    @Query('deleted_at') Object? deletedAt,
    @Query('offset') int? offset,
    @Query('limit') int? limit,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Query('order') String? order,
  });

  ///Create a Product
  Future<chopper.Response<AdminProductsRes>> adminProductsPost(
      {required AdminPostProductsReq? body}) {
    generatedMapping.putIfAbsent(
        AdminProductsRes, () => AdminProductsRes.fromJsonFactory);

    return _adminProductsPost(body: body);
  }

  ///Create a Product
  @Post(
    path: '/admin/products',
    optionalBody: true,
  )
  Future<chopper.Response<AdminProductsRes>> _adminProductsPost(
      {@Body() required AdminPostProductsReq? body});

  ///List Tags Usage Number
  Future<chopper.Response<AdminProductsListTagsRes>>
      adminProductsTagUsageGet() {
    generatedMapping.putIfAbsent(AdminProductsListTagsRes,
        () => AdminProductsListTagsRes.fromJsonFactory);

    return _adminProductsTagUsageGet();
  }

  ///List Tags Usage Number
  @Get(path: '/admin/products/tag-usage')
  Future<chopper.Response<AdminProductsListTagsRes>>
      _adminProductsTagUsageGet();

  ///List Product Types
  Future<chopper.Response<AdminProductsListTypesRes>> adminProductsTypesGet() {
    generatedMapping.putIfAbsent(AdminProductsListTypesRes,
        () => AdminProductsListTypesRes.fromJsonFactory);

    return _adminProductsTypesGet();
  }

  ///List Product Types
  @Get(path: '/admin/products/types')
  Future<chopper.Response<AdminProductsListTypesRes>> _adminProductsTypesGet();

  ///Get a Product
  ///@param id The ID of the Product.
  Future<chopper.Response<AdminProductsRes>> adminProductsIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        AdminProductsRes, () => AdminProductsRes.fromJsonFactory);

    return _adminProductsIdGet(id: id);
  }

  ///Get a Product
  ///@param id The ID of the Product.
  @Get(path: '/admin/products/{id}')
  Future<chopper.Response<AdminProductsRes>> _adminProductsIdGet(
      {@Path('id') required String? id});

  ///Update a Product
  ///@param id The ID of the Product.
  Future<chopper.Response<AdminProductsRes>> adminProductsIdPost({
    required String? id,
    required AdminPostProductsProductReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminProductsRes, () => AdminProductsRes.fromJsonFactory);

    return _adminProductsIdPost(id: id, body: body);
  }

  ///Update a Product
  ///@param id The ID of the Product.
  @Post(
    path: '/admin/products/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<AdminProductsRes>> _adminProductsIdPost({
    @Path('id') required String? id,
    @Body() required AdminPostProductsProductReq? body,
  });

  ///Delete a Product
  ///@param id The ID of the Product.
  Future<chopper.Response<AdminProductsDeleteRes>> adminProductsIdDelete(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        AdminProductsDeleteRes, () => AdminProductsDeleteRes.fromJsonFactory);

    return _adminProductsIdDelete(id: id);
  }

  ///Delete a Product
  ///@param id The ID of the Product.
  @Delete(path: '/admin/products/{id}')
  Future<chopper.Response<AdminProductsDeleteRes>> _adminProductsIdDelete(
      {@Path('id') required String? id});

  ///Set Metadata
  ///@param id The ID of the Product.
  Future<chopper.Response<AdminProductsRes>> adminProductsIdMetadataPost({
    required String? id,
    required AdminPostProductsProductMetadataReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminProductsRes, () => AdminProductsRes.fromJsonFactory);

    return _adminProductsIdMetadataPost(id: id, body: body);
  }

  ///Set Metadata
  ///@param id The ID of the Product.
  @Post(
    path: '/admin/products/{id}/metadata',
    optionalBody: true,
  )
  Future<chopper.Response<AdminProductsRes>> _adminProductsIdMetadataPost({
    @Path('id') required String? id,
    @Body() required AdminPostProductsProductMetadataReq? body,
  });

  ///Add a Product Option
  ///@param id The ID of the Product.
  Future<chopper.Response<AdminProductsRes>> adminProductsIdOptionsPost({
    required String? id,
    required AdminPostProductsProductOptionsReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminProductsRes, () => AdminProductsRes.fromJsonFactory);

    return _adminProductsIdOptionsPost(id: id, body: body);
  }

  ///Add a Product Option
  ///@param id The ID of the Product.
  @Post(
    path: '/admin/products/{id}/options',
    optionalBody: true,
  )
  Future<chopper.Response<AdminProductsRes>> _adminProductsIdOptionsPost({
    @Path('id') required String? id,
    @Body() required AdminPostProductsProductOptionsReq? body,
  });

  ///Update a Product Option
  ///@param id The ID of the Product.
  ///@param option_id The ID of the Product Option.
  Future<chopper.Response<AdminProductsRes>>
      adminProductsIdOptionsOptionIdPost({
    required String? id,
    required String? optionId,
    required AdminPostProductsProductOptionsOption? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminProductsRes, () => AdminProductsRes.fromJsonFactory);

    return _adminProductsIdOptionsOptionIdPost(
        id: id, optionId: optionId, body: body);
  }

  ///Update a Product Option
  ///@param id The ID of the Product.
  ///@param option_id The ID of the Product Option.
  @Post(
    path: '/admin/products/{id}/options/{option_id}',
    optionalBody: true,
  )
  Future<chopper.Response<AdminProductsRes>>
      _adminProductsIdOptionsOptionIdPost({
    @Path('id') required String? id,
    @Path('option_id') required String? optionId,
    @Body() required AdminPostProductsProductOptionsOption? body,
  });

  ///Delete a Product Option
  ///@param id The ID of the Product.
  ///@param option_id The ID of the Product Option.
  Future<chopper.Response<AdminProductsDeleteOptionRes>>
      adminProductsIdOptionsOptionIdDelete({
    required String? id,
    required String? optionId,
  }) {
    generatedMapping.putIfAbsent(AdminProductsDeleteOptionRes,
        () => AdminProductsDeleteOptionRes.fromJsonFactory);

    return _adminProductsIdOptionsOptionIdDelete(id: id, optionId: optionId);
  }

  ///Delete a Product Option
  ///@param id The ID of the Product.
  ///@param option_id The ID of the Product Option.
  @Delete(path: '/admin/products/{id}/options/{option_id}')
  Future<chopper.Response<AdminProductsDeleteOptionRes>>
      _adminProductsIdOptionsOptionIdDelete({
    @Path('id') required String? id,
    @Path('option_id') required String? optionId,
  });

  ///List a Product's Variants
  ///@param id ID of the product.
  ///@param fields Comma-separated fields that should be included in the returned product variants.
  ///@param expand Comma-separated relations that should be expanded in the returned product variants.
  ///@param offset The number of product variants to skip when retrieving the product variants.
  ///@param limit Limit the number of product variants returned.
  Future<chopper.Response<AdminProductsListVariantsRes>>
      adminProductsIdVariantsGet({
    required String? id,
    String? fields,
    String? expand,
    int? offset,
    int? limit,
  }) {
    generatedMapping.putIfAbsent(AdminProductsListVariantsRes,
        () => AdminProductsListVariantsRes.fromJsonFactory);

    return _adminProductsIdVariantsGet(
        id: id, fields: fields, expand: expand, offset: offset, limit: limit);
  }

  ///List a Product's Variants
  ///@param id ID of the product.
  ///@param fields Comma-separated fields that should be included in the returned product variants.
  ///@param expand Comma-separated relations that should be expanded in the returned product variants.
  ///@param offset The number of product variants to skip when retrieving the product variants.
  ///@param limit Limit the number of product variants returned.
  @Get(path: '/admin/products/{id}/variants')
  Future<chopper.Response<AdminProductsListVariantsRes>>
      _adminProductsIdVariantsGet({
    @Path('id') required String? id,
    @Query('fields') String? fields,
    @Query('expand') String? expand,
    @Query('offset') int? offset,
    @Query('limit') int? limit,
  });

  ///Create a Product Variant
  ///@param id The ID of the Product.
  Future<chopper.Response<AdminProductsRes>> adminProductsIdVariantsPost({
    required String? id,
    required AdminPostProductsProductVariantsReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminProductsRes, () => AdminProductsRes.fromJsonFactory);

    return _adminProductsIdVariantsPost(id: id, body: body);
  }

  ///Create a Product Variant
  ///@param id The ID of the Product.
  @Post(
    path: '/admin/products/{id}/variants',
    optionalBody: true,
  )
  Future<chopper.Response<AdminProductsRes>> _adminProductsIdVariantsPost({
    @Path('id') required String? id,
    @Body() required AdminPostProductsProductVariantsReq? body,
  });

  ///Update a Product Variant
  ///@param id The ID of the Product.
  ///@param variant_id The ID of the Product Variant.
  Future<chopper.Response<AdminProductsRes>>
      adminProductsIdVariantsVariantIdPost({
    required String? id,
    required String? variantId,
    required AdminPostProductsProductVariantsVariantReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminProductsRes, () => AdminProductsRes.fromJsonFactory);

    return _adminProductsIdVariantsVariantIdPost(
        id: id, variantId: variantId, body: body);
  }

  ///Update a Product Variant
  ///@param id The ID of the Product.
  ///@param variant_id The ID of the Product Variant.
  @Post(
    path: '/admin/products/{id}/variants/{variant_id}',
    optionalBody: true,
  )
  Future<chopper.Response<AdminProductsRes>>
      _adminProductsIdVariantsVariantIdPost({
    @Path('id') required String? id,
    @Path('variant_id') required String? variantId,
    @Body() required AdminPostProductsProductVariantsVariantReq? body,
  });

  ///Delete a Product Variant
  ///@param id The ID of the Product.
  ///@param variant_id The ID of the Product Variant.
  Future<chopper.Response<AdminProductsDeleteVariantRes>>
      adminProductsIdVariantsVariantIdDelete({
    required String? id,
    required String? variantId,
  }) {
    generatedMapping.putIfAbsent(AdminProductsDeleteVariantRes,
        () => AdminProductsDeleteVariantRes.fromJsonFactory);

    return _adminProductsIdVariantsVariantIdDelete(
        id: id, variantId: variantId);
  }

  ///Delete a Product Variant
  ///@param id The ID of the Product.
  ///@param variant_id The ID of the Product Variant.
  @Delete(path: '/admin/products/{id}/variants/{variant_id}')
  Future<chopper.Response<AdminProductsDeleteVariantRes>>
      _adminProductsIdVariantsVariantIdDelete({
    @Path('id') required String? id,
    @Path('variant_id') required String? variantId,
  });

  ///List Publishable API keys
  ///@param q term to search publishable API keys' titles.
  ///@param limit Limit the number of publishable API keys returned.
  ///@param offset The number of publishable API keys to skip when retrieving the publishable API keys.
  ///@param expand Comma-separated relations that should be expanded in the returned publishable API keys.
  ///@param fields Comma-separated fields that should be included in the returned publishable API keys.
  Future<chopper.Response<AdminPublishableApiKeysListRes>>
      adminPublishableApiKeysGet({
    String? q,
    num? limit,
    num? offset,
    String? expand,
    String? fields,
  }) {
    generatedMapping.putIfAbsent(AdminPublishableApiKeysListRes,
        () => AdminPublishableApiKeysListRes.fromJsonFactory);

    return _adminPublishableApiKeysGet(
        q: q, limit: limit, offset: offset, expand: expand, fields: fields);
  }

  ///List Publishable API keys
  ///@param q term to search publishable API keys' titles.
  ///@param limit Limit the number of publishable API keys returned.
  ///@param offset The number of publishable API keys to skip when retrieving the publishable API keys.
  ///@param expand Comma-separated relations that should be expanded in the returned publishable API keys.
  ///@param fields Comma-separated fields that should be included in the returned publishable API keys.
  @Get(path: '/admin/publishable-api-keys')
  Future<chopper.Response<AdminPublishableApiKeysListRes>>
      _adminPublishableApiKeysGet({
    @Query('q') String? q,
    @Query('limit') num? limit,
    @Query('offset') num? offset,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
  });

  ///Create Publishable API Key
  Future<chopper.Response<AdminPublishableApiKeysRes>>
      adminPublishableApiKeysPost(
          {required AdminPostPublishableApiKeysReq? body}) {
    generatedMapping.putIfAbsent(AdminPublishableApiKeysRes,
        () => AdminPublishableApiKeysRes.fromJsonFactory);

    return _adminPublishableApiKeysPost(body: body);
  }

  ///Create Publishable API Key
  @Post(
    path: '/admin/publishable-api-keys',
    optionalBody: true,
  )
  Future<chopper.Response<AdminPublishableApiKeysRes>>
      _adminPublishableApiKeysPost(
          {@Body() required AdminPostPublishableApiKeysReq? body});

  ///Get a Publishable API Key
  ///@param id The ID of the Publishable API Key.
  Future<chopper.Response<AdminPublishableApiKeysRes>>
      adminPublishableApiKeysIdGet({required String? id}) {
    generatedMapping.putIfAbsent(AdminPublishableApiKeysRes,
        () => AdminPublishableApiKeysRes.fromJsonFactory);

    return _adminPublishableApiKeysIdGet(id: id);
  }

  ///Get a Publishable API Key
  ///@param id The ID of the Publishable API Key.
  @Get(path: '/admin/publishable-api-keys/{id}')
  Future<chopper.Response<AdminPublishableApiKeysRes>>
      _adminPublishableApiKeysIdGet({@Path('id') required String? id});

  ///Update Publishable API Key
  ///@param id The ID of the Publishable API Key.
  Future<chopper.Response<AdminPublishableApiKeysRes>>
      adminPublishableApiKeysIdPost({
    required String? id,
    required AdminPostPublishableApiKeysPublishableApiKeyReq? body,
  }) {
    generatedMapping.putIfAbsent(AdminPublishableApiKeysRes,
        () => AdminPublishableApiKeysRes.fromJsonFactory);

    return _adminPublishableApiKeysIdPost(id: id, body: body);
  }

  ///Update Publishable API Key
  ///@param id The ID of the Publishable API Key.
  @Post(
    path: '/admin/publishable-api-keys/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<AdminPublishableApiKeysRes>>
      _adminPublishableApiKeysIdPost({
    @Path('id') required String? id,
    @Body() required AdminPostPublishableApiKeysPublishableApiKeyReq? body,
  });

  ///Delete Publishable API Key
  ///@param id The ID of the Publishable API Key to delete.
  Future<chopper.Response<AdminPublishableApiKeyDeleteRes>>
      adminPublishableApiKeysIdDelete({required String? id}) {
    generatedMapping.putIfAbsent(AdminPublishableApiKeyDeleteRes,
        () => AdminPublishableApiKeyDeleteRes.fromJsonFactory);

    return _adminPublishableApiKeysIdDelete(id: id);
  }

  ///Delete Publishable API Key
  ///@param id The ID of the Publishable API Key to delete.
  @Delete(path: '/admin/publishable-api-keys/{id}')
  Future<chopper.Response<AdminPublishableApiKeyDeleteRes>>
      _adminPublishableApiKeysIdDelete({@Path('id') required String? id});

  ///Revoke a Publishable API Key
  ///@param id The ID of the Publishable API Key.
  Future<chopper.Response<AdminPublishableApiKeysRes>>
      adminPublishableApiKeysIdRevokePost({required String? id}) {
    generatedMapping.putIfAbsent(AdminPublishableApiKeysRes,
        () => AdminPublishableApiKeysRes.fromJsonFactory);

    return _adminPublishableApiKeysIdRevokePost(id: id);
  }

  ///Revoke a Publishable API Key
  ///@param id The ID of the Publishable API Key.
  @Post(
    path: '/admin/publishable-api-keys/{id}/revoke',
    optionalBody: true,
  )
  Future<chopper.Response<AdminPublishableApiKeysRes>>
      _adminPublishableApiKeysIdRevokePost({@Path('id') required String? id});

  ///List Sales Channels
  ///@param id The ID of the publishable API key.
  ///@param q query to search sales channels' names and descriptions.
  Future<chopper.Response<AdminPublishableApiKeysListSalesChannelsRes>>
      adminPublishableApiKeysIdSalesChannelsGet({
    required String? id,
    String? q,
  }) {
    generatedMapping.putIfAbsent(AdminPublishableApiKeysListSalesChannelsRes,
        () => AdminPublishableApiKeysListSalesChannelsRes.fromJsonFactory);

    return _adminPublishableApiKeysIdSalesChannelsGet(id: id, q: q);
  }

  ///List Sales Channels
  ///@param id The ID of the publishable API key.
  ///@param q query to search sales channels' names and descriptions.
  @Get(path: '/admin/publishable-api-keys/{id}/sales-channels')
  Future<chopper.Response<AdminPublishableApiKeysListSalesChannelsRes>>
      _adminPublishableApiKeysIdSalesChannelsGet({
    @Path('id') required String? id,
    @Query('q') String? q,
  });

  ///Add Sales Channels
  ///@param id The ID of the Publishable Api Key.
  Future<chopper.Response<AdminPublishableApiKeysRes>>
      adminPublishableApiKeysIdSalesChannelsBatchPost({
    required String? id,
    required AdminPostPublishableApiKeySalesChannelsBatchReq? body,
  }) {
    generatedMapping.putIfAbsent(AdminPublishableApiKeysRes,
        () => AdminPublishableApiKeysRes.fromJsonFactory);

    return _adminPublishableApiKeysIdSalesChannelsBatchPost(id: id, body: body);
  }

  ///Add Sales Channels
  ///@param id The ID of the Publishable Api Key.
  @Post(
    path: '/admin/publishable-api-keys/{id}/sales-channels/batch',
    optionalBody: true,
  )
  Future<chopper.Response<AdminPublishableApiKeysRes>>
      _adminPublishableApiKeysIdSalesChannelsBatchPost({
    @Path('id') required String? id,
    @Body() required AdminPostPublishableApiKeySalesChannelsBatchReq? body,
  });

  ///Remove Sales Channels
  ///@param id The ID of the Publishable API Key.
  Future<chopper.Response<AdminPublishableApiKeysRes>>
      adminPublishableApiKeysIdSalesChannelsBatchDelete({
    required String? id,
    required AdminDeletePublishableApiKeySalesChannelsBatchReq? body,
  }) {
    generatedMapping.putIfAbsent(AdminPublishableApiKeysRes,
        () => AdminPublishableApiKeysRes.fromJsonFactory);

    return _adminPublishableApiKeysIdSalesChannelsBatchDelete(
        id: id, body: body);
  }

  ///Remove Sales Channels
  ///@param id The ID of the Publishable API Key.
  @Delete(path: '/admin/publishable-api-keys/{id}/sales-channels/batch')
  Future<chopper.Response<AdminPublishableApiKeysRes>>
      _adminPublishableApiKeysIdSalesChannelsBatchDelete({
    @Path('id') required String? id,
    @Body() required AdminDeletePublishableApiKeySalesChannelsBatchReq? body,
  });

  ///List Regions
  ///@param limit Limit the number of regions returned.
  ///@param offset The number of regions to skip when retrieving the regions.
  ///@param created_at Filter by a creation date range.
  ///@param updated_at Filter by an update date range.
  ///@param deleted_at Filter by a deletion date range.
  Future<chopper.Response<AdminRegionsListRes>> adminRegionsGet({
    int? limit,
    int? offset,
    Object? createdAt,
    Object? updatedAt,
    Object? deletedAt,
  }) {
    generatedMapping.putIfAbsent(
        AdminRegionsListRes, () => AdminRegionsListRes.fromJsonFactory);

    return _adminRegionsGet(
        limit: limit,
        offset: offset,
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt);
  }

  ///List Regions
  ///@param limit Limit the number of regions returned.
  ///@param offset The number of regions to skip when retrieving the regions.
  ///@param created_at Filter by a creation date range.
  ///@param updated_at Filter by an update date range.
  ///@param deleted_at Filter by a deletion date range.
  @Get(path: '/admin/regions')
  Future<chopper.Response<AdminRegionsListRes>> _adminRegionsGet({
    @Query('limit') int? limit,
    @Query('offset') int? offset,
    @Query('created_at') Object? createdAt,
    @Query('updated_at') Object? updatedAt,
    @Query('deleted_at') Object? deletedAt,
  });

  ///Create a Region
  Future<chopper.Response<AdminRegionsRes>> adminRegionsPost(
      {required AdminPostRegionsReq? body}) {
    generatedMapping.putIfAbsent(
        AdminRegionsRes, () => AdminRegionsRes.fromJsonFactory);

    return _adminRegionsPost(body: body);
  }

  ///Create a Region
  @Post(
    path: '/admin/regions',
    optionalBody: true,
  )
  Future<chopper.Response<AdminRegionsRes>> _adminRegionsPost(
      {@Body() required AdminPostRegionsReq? body});

  ///Get a Region
  ///@param id The ID of the Region.
  Future<chopper.Response<AdminRegionsRes>> adminRegionsIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        AdminRegionsRes, () => AdminRegionsRes.fromJsonFactory);

    return _adminRegionsIdGet(id: id);
  }

  ///Get a Region
  ///@param id The ID of the Region.
  @Get(path: '/admin/regions/{id}')
  Future<chopper.Response<AdminRegionsRes>> _adminRegionsIdGet(
      {@Path('id') required String? id});

  ///Update a Region
  ///@param id The ID of the Region.
  Future<chopper.Response<AdminRegionsRes>> adminRegionsIdPost({
    required String? id,
    required AdminPostRegionsRegionReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminRegionsRes, () => AdminRegionsRes.fromJsonFactory);

    return _adminRegionsIdPost(id: id, body: body);
  }

  ///Update a Region
  ///@param id The ID of the Region.
  @Post(
    path: '/admin/regions/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<AdminRegionsRes>> _adminRegionsIdPost({
    @Path('id') required String? id,
    @Body() required AdminPostRegionsRegionReq? body,
  });

  ///Delete a Region
  ///@param id The ID of the Region.
  Future<chopper.Response<AdminRegionsDeleteRes>> adminRegionsIdDelete(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        AdminRegionsDeleteRes, () => AdminRegionsDeleteRes.fromJsonFactory);

    return _adminRegionsIdDelete(id: id);
  }

  ///Delete a Region
  ///@param id The ID of the Region.
  @Delete(path: '/admin/regions/{id}')
  Future<chopper.Response<AdminRegionsDeleteRes>> _adminRegionsIdDelete(
      {@Path('id') required String? id});

  ///Add Country
  ///@param id The ID of the Region.
  Future<chopper.Response<AdminRegionsRes>> adminRegionsIdCountriesPost({
    required String? id,
    required AdminPostRegionsRegionCountriesReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminRegionsRes, () => AdminRegionsRes.fromJsonFactory);

    return _adminRegionsIdCountriesPost(id: id, body: body);
  }

  ///Add Country
  ///@param id The ID of the Region.
  @Post(
    path: '/admin/regions/{id}/countries',
    optionalBody: true,
  )
  Future<chopper.Response<AdminRegionsRes>> _adminRegionsIdCountriesPost({
    @Path('id') required String? id,
    @Body() required AdminPostRegionsRegionCountriesReq? body,
  });

  ///Remove Country
  ///@param id The ID of the Region.
  ///@param country_code The 2 character ISO code for the Country.
  Future<chopper.Response<AdminRegionsRes>>
      adminRegionsIdCountriesCountryCodeDelete({
    required String? id,
    required String? countryCode,
  }) {
    generatedMapping.putIfAbsent(
        AdminRegionsRes, () => AdminRegionsRes.fromJsonFactory);

    return _adminRegionsIdCountriesCountryCodeDelete(
        id: id, countryCode: countryCode);
  }

  ///Remove Country
  ///@param id The ID of the Region.
  ///@param country_code The 2 character ISO code for the Country.
  @Delete(path: '/admin/regions/{id}/countries/{country_code}')
  Future<chopper.Response<AdminRegionsRes>>
      _adminRegionsIdCountriesCountryCodeDelete({
    @Path('id') required String? id,
    @Path('country_code') required String? countryCode,
  });

  ///List Fulfillment Options
  ///@param id The ID of the Region.
  Future<chopper.Response<AdminGetRegionsRegionFulfillmentOptionsRes>>
      adminRegionsIdFulfillmentOptionsGet({required String? id}) {
    generatedMapping.putIfAbsent(AdminGetRegionsRegionFulfillmentOptionsRes,
        () => AdminGetRegionsRegionFulfillmentOptionsRes.fromJsonFactory);

    return _adminRegionsIdFulfillmentOptionsGet(id: id);
  }

  ///List Fulfillment Options
  ///@param id The ID of the Region.
  @Get(path: '/admin/regions/{id}/fulfillment-options')
  Future<chopper.Response<AdminGetRegionsRegionFulfillmentOptionsRes>>
      _adminRegionsIdFulfillmentOptionsGet({@Path('id') required String? id});

  ///Add Fulfillment Provider
  ///@param id The ID of the Region.
  Future<chopper.Response<AdminRegionsRes>>
      adminRegionsIdFulfillmentProvidersPost({
    required String? id,
    required AdminPostRegionsRegionFulfillmentProvidersReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminRegionsRes, () => AdminRegionsRes.fromJsonFactory);

    return _adminRegionsIdFulfillmentProvidersPost(id: id, body: body);
  }

  ///Add Fulfillment Provider
  ///@param id The ID of the Region.
  @Post(
    path: '/admin/regions/{id}/fulfillment-providers',
    optionalBody: true,
  )
  Future<chopper.Response<AdminRegionsRes>>
      _adminRegionsIdFulfillmentProvidersPost({
    @Path('id') required String? id,
    @Body() required AdminPostRegionsRegionFulfillmentProvidersReq? body,
  });

  ///Remove Fulfillment Provider
  ///@param id The ID of the Region.
  ///@param provider_id The ID of the Fulfillment Provider.
  Future<chopper.Response<AdminRegionsRes>>
      adminRegionsIdFulfillmentProvidersProviderIdDelete({
    required String? id,
    required String? providerId,
  }) {
    generatedMapping.putIfAbsent(
        AdminRegionsRes, () => AdminRegionsRes.fromJsonFactory);

    return _adminRegionsIdFulfillmentProvidersProviderIdDelete(
        id: id, providerId: providerId);
  }

  ///Remove Fulfillment Provider
  ///@param id The ID of the Region.
  ///@param provider_id The ID of the Fulfillment Provider.
  @Delete(path: '/admin/regions/{id}/fulfillment-providers/{provider_id}')
  Future<chopper.Response<AdminRegionsRes>>
      _adminRegionsIdFulfillmentProvidersProviderIdDelete({
    @Path('id') required String? id,
    @Path('provider_id') required String? providerId,
  });

  ///Add Payment Provider
  ///@param id The ID of the Region.
  Future<chopper.Response<AdminRegionsRes>> adminRegionsIdPaymentProvidersPost({
    required String? id,
    required AdminPostRegionsRegionPaymentProvidersReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminRegionsRes, () => AdminRegionsRes.fromJsonFactory);

    return _adminRegionsIdPaymentProvidersPost(id: id, body: body);
  }

  ///Add Payment Provider
  ///@param id The ID of the Region.
  @Post(
    path: '/admin/regions/{id}/payment-providers',
    optionalBody: true,
  )
  Future<chopper.Response<AdminRegionsRes>>
      _adminRegionsIdPaymentProvidersPost({
    @Path('id') required String? id,
    @Body() required AdminPostRegionsRegionPaymentProvidersReq? body,
  });

  ///Remove Payment Provider
  ///@param id The ID of the Region.
  ///@param provider_id The ID of the Payment Provider.
  Future<chopper.Response<AdminRegionsRes>>
      adminRegionsIdPaymentProvidersProviderIdDelete({
    required String? id,
    required String? providerId,
  }) {
    generatedMapping.putIfAbsent(
        AdminRegionsRes, () => AdminRegionsRes.fromJsonFactory);

    return _adminRegionsIdPaymentProvidersProviderIdDelete(
        id: id, providerId: providerId);
  }

  ///Remove Payment Provider
  ///@param id The ID of the Region.
  ///@param provider_id The ID of the Payment Provider.
  @Delete(path: '/admin/regions/{id}/payment-providers/{provider_id}')
  Future<chopper.Response<AdminRegionsRes>>
      _adminRegionsIdPaymentProvidersProviderIdDelete({
    @Path('id') required String? id,
    @Path('provider_id') required String? providerId,
  });

  ///List Reservations
  ///@param location_id Filter by location ID
  ///@param inventory_item_id Filter by inventory item ID.
  ///@param line_item_id Filter by line item ID.
  ///@param quantity Filter by reservation quantity
  ///@param description Filter by description.
  ///@param created_at Filter by a creation date range.
  ///@param offset The number of reservations to skip when retrieving the reservations.
  ///@param limit Limit the number of reservations returned.
  ///@param expand Comma-separated relations that should be expanded in the returned reservations.
  ///@param fields Comma-separated fields that should be included in the returned reservations.
  Future<chopper.Response<AdminReservationsListRes>> adminReservationsGet({
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
    generatedMapping.putIfAbsent(AdminReservationsListRes,
        () => AdminReservationsListRes.fromJsonFactory);

    return _adminReservationsGet(
        locationId: locationId,
        inventoryItemId: inventoryItemId,
        lineItemId: lineItemId,
        quantity: quantity,
        description: description,
        createdAt: createdAt,
        offset: offset,
        limit: limit,
        expand: expand,
        fields: fields);
  }

  ///List Reservations
  ///@param location_id Filter by location ID
  ///@param inventory_item_id Filter by inventory item ID.
  ///@param line_item_id Filter by line item ID.
  ///@param quantity Filter by reservation quantity
  ///@param description Filter by description.
  ///@param created_at Filter by a creation date range.
  ///@param offset The number of reservations to skip when retrieving the reservations.
  ///@param limit Limit the number of reservations returned.
  ///@param expand Comma-separated relations that should be expanded in the returned reservations.
  ///@param fields Comma-separated fields that should be included in the returned reservations.
  @Get(path: '/admin/reservations')
  Future<chopper.Response<AdminReservationsListRes>> _adminReservationsGet({
    @Query('location_id') List<String>? locationId,
    @Query('inventory_item_id') List<String>? inventoryItemId,
    @Query('line_item_id') List<String>? lineItemId,
    @Query('quantity') Object? quantity,
    @Query('description') Object? description,
    @Query('created_at') Object? createdAt,
    @Query('offset') int? offset,
    @Query('limit') int? limit,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
  });

  ///Create a Reservation
  Future<chopper.Response<AdminReservationsRes>> adminReservationsPost(
      {required AdminPostReservationsReq? body}) {
    generatedMapping.putIfAbsent(
        AdminReservationsRes, () => AdminReservationsRes.fromJsonFactory);

    return _adminReservationsPost(body: body);
  }

  ///Create a Reservation
  @Post(
    path: '/admin/reservations',
    optionalBody: true,
  )
  Future<chopper.Response<AdminReservationsRes>> _adminReservationsPost(
      {@Body() required AdminPostReservationsReq? body});

  ///Get a Reservation
  ///@param id The ID of the reservation.
  Future<chopper.Response<AdminReservationsRes>> adminReservationsIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        AdminReservationsRes, () => AdminReservationsRes.fromJsonFactory);

    return _adminReservationsIdGet(id: id);
  }

  ///Get a Reservation
  ///@param id The ID of the reservation.
  @Get(path: '/admin/reservations/{id}')
  Future<chopper.Response<AdminReservationsRes>> _adminReservationsIdGet(
      {@Path('id') required String? id});

  ///Update a Reservation
  ///@param id The ID of the Reservation.
  Future<chopper.Response<AdminReservationsRes>> adminReservationsIdPost({
    required String? id,
    required AdminPostReservationsReservationReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminReservationsRes, () => AdminReservationsRes.fromJsonFactory);

    return _adminReservationsIdPost(id: id, body: body);
  }

  ///Update a Reservation
  ///@param id The ID of the Reservation.
  @Post(
    path: '/admin/reservations/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<AdminReservationsRes>> _adminReservationsIdPost({
    @Path('id') required String? id,
    @Body() required AdminPostReservationsReservationReq? body,
  });

  ///Delete a Reservation
  ///@param id The ID of the Reservation to delete.
  Future<chopper.Response<AdminReservationsDeleteRes>>
      adminReservationsIdDelete({required String? id}) {
    generatedMapping.putIfAbsent(AdminReservationsDeleteRes,
        () => AdminReservationsDeleteRes.fromJsonFactory);

    return _adminReservationsIdDelete(id: id);
  }

  ///Delete a Reservation
  ///@param id The ID of the Reservation to delete.
  @Delete(path: '/admin/reservations/{id}')
  Future<chopper.Response<AdminReservationsDeleteRes>>
      _adminReservationsIdDelete({@Path('id') required String? id});

  ///List Return Reasons
  Future<chopper.Response<AdminReturnReasonsListRes>> adminReturnReasonsGet() {
    generatedMapping.putIfAbsent(AdminReturnReasonsListRes,
        () => AdminReturnReasonsListRes.fromJsonFactory);

    return _adminReturnReasonsGet();
  }

  ///List Return Reasons
  @Get(path: '/admin/return-reasons')
  Future<chopper.Response<AdminReturnReasonsListRes>> _adminReturnReasonsGet();

  ///Create a Return Reason
  Future<chopper.Response<AdminReturnReasonsRes>> adminReturnReasonsPost(
      {required AdminPostReturnReasonsReq? body}) {
    generatedMapping.putIfAbsent(
        AdminReturnReasonsRes, () => AdminReturnReasonsRes.fromJsonFactory);

    return _adminReturnReasonsPost(body: body);
  }

  ///Create a Return Reason
  @Post(
    path: '/admin/return-reasons',
    optionalBody: true,
  )
  Future<chopper.Response<AdminReturnReasonsRes>> _adminReturnReasonsPost(
      {@Body() required AdminPostReturnReasonsReq? body});

  ///Get a Return Reason
  ///@param id The ID of the Return Reason.
  Future<chopper.Response<AdminReturnReasonsRes>> adminReturnReasonsIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        AdminReturnReasonsRes, () => AdminReturnReasonsRes.fromJsonFactory);

    return _adminReturnReasonsIdGet(id: id);
  }

  ///Get a Return Reason
  ///@param id The ID of the Return Reason.
  @Get(path: '/admin/return-reasons/{id}')
  Future<chopper.Response<AdminReturnReasonsRes>> _adminReturnReasonsIdGet(
      {@Path('id') required String? id});

  ///Update a Return Reason
  ///@param id The ID of the Return Reason.
  Future<chopper.Response<AdminReturnReasonsRes>> adminReturnReasonsIdPost({
    required String? id,
    required AdminPostReturnReasonsReasonReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminReturnReasonsRes, () => AdminReturnReasonsRes.fromJsonFactory);

    return _adminReturnReasonsIdPost(id: id, body: body);
  }

  ///Update a Return Reason
  ///@param id The ID of the Return Reason.
  @Post(
    path: '/admin/return-reasons/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<AdminReturnReasonsRes>> _adminReturnReasonsIdPost({
    @Path('id') required String? id,
    @Body() required AdminPostReturnReasonsReasonReq? body,
  });

  ///Delete a Return Reason
  ///@param id The ID of the return reason
  Future<chopper.Response<AdminReturnReasonsDeleteRes>>
      adminReturnReasonsIdDelete({required String? id}) {
    generatedMapping.putIfAbsent(AdminReturnReasonsDeleteRes,
        () => AdminReturnReasonsDeleteRes.fromJsonFactory);

    return _adminReturnReasonsIdDelete(id: id);
  }

  ///Delete a Return Reason
  ///@param id The ID of the return reason
  @Delete(path: '/admin/return-reasons/{id}')
  Future<chopper.Response<AdminReturnReasonsDeleteRes>>
      _adminReturnReasonsIdDelete({@Path('id') required String? id});

  ///List Returns
  ///@param limit Limit the number of Returns returned.
  ///@param offset The number of Returns to skip when retrieving the Returns.
  Future<chopper.Response<AdminReturnsListRes>> adminReturnsGet({
    num? limit,
    num? offset,
  }) {
    generatedMapping.putIfAbsent(
        AdminReturnsListRes, () => AdminReturnsListRes.fromJsonFactory);

    return _adminReturnsGet(limit: limit, offset: offset);
  }

  ///List Returns
  ///@param limit Limit the number of Returns returned.
  ///@param offset The number of Returns to skip when retrieving the Returns.
  @Get(path: '/admin/returns')
  Future<chopper.Response<AdminReturnsListRes>> _adminReturnsGet({
    @Query('limit') num? limit,
    @Query('offset') num? offset,
  });

  ///Cancel a Return
  ///@param id The ID of the Return.
  Future<chopper.Response<AdminReturnsCancelRes>> adminReturnsIdCancelPost(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        AdminReturnsCancelRes, () => AdminReturnsCancelRes.fromJsonFactory);

    return _adminReturnsIdCancelPost(id: id);
  }

  ///Cancel a Return
  ///@param id The ID of the Return.
  @Post(
    path: '/admin/returns/{id}/cancel',
    optionalBody: true,
  )
  Future<chopper.Response<AdminReturnsCancelRes>> _adminReturnsIdCancelPost(
      {@Path('id') required String? id});

  ///Receive a Return
  ///@param id The ID of the Return.
  Future<chopper.Response<AdminReturnsRes>> adminReturnsIdReceivePost({
    required String? id,
    required AdminPostReturnsReturnReceiveReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminReturnsRes, () => AdminReturnsRes.fromJsonFactory);

    return _adminReturnsIdReceivePost(id: id, body: body);
  }

  ///Receive a Return
  ///@param id The ID of the Return.
  @Post(
    path: '/admin/returns/{id}/receive',
    optionalBody: true,
  )
  Future<chopper.Response<AdminReturnsRes>> _adminReturnsIdReceivePost({
    @Path('id') required String? id,
    @Body() required AdminPostReturnsReturnReceiveReq? body,
  });

  ///List Sales Channels
  ///@param id Filter by a sales channel ID.
  ///@param name Filter by name.
  ///@param description Filter by description.
  ///@param q term used to search sales channels' names and descriptions.
  ///@param order A sales-channel field to sort-order the retrieved sales channels by.
  ///@param created_at Filter by a creation date range.
  ///@param updated_at Filter by an update date range.
  ///@param deleted_at Filter by a deletion date range.
  ///@param offset The number of sales channels to skip when retrieving the sales channels.
  ///@param limit Limit the number of sales channels returned.
  ///@param expand Comma-separated relations that should be expanded in the returned sales channels.
  ///@param fields Comma-separated fields that should be included in the returned sales channels.
  Future<chopper.Response<AdminSalesChannelsListRes>> adminSalesChannelsGet({
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
    generatedMapping.putIfAbsent(AdminSalesChannelsListRes,
        () => AdminSalesChannelsListRes.fromJsonFactory);

    return _adminSalesChannelsGet(
        id: id,
        name: name,
        description: description,
        q: q,
        order: order,
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
        offset: offset,
        limit: limit,
        expand: expand,
        fields: fields);
  }

  ///List Sales Channels
  ///@param id Filter by a sales channel ID.
  ///@param name Filter by name.
  ///@param description Filter by description.
  ///@param q term used to search sales channels' names and descriptions.
  ///@param order A sales-channel field to sort-order the retrieved sales channels by.
  ///@param created_at Filter by a creation date range.
  ///@param updated_at Filter by an update date range.
  ///@param deleted_at Filter by a deletion date range.
  ///@param offset The number of sales channels to skip when retrieving the sales channels.
  ///@param limit Limit the number of sales channels returned.
  ///@param expand Comma-separated relations that should be expanded in the returned sales channels.
  ///@param fields Comma-separated fields that should be included in the returned sales channels.
  @Get(path: '/admin/sales-channels')
  Future<chopper.Response<AdminSalesChannelsListRes>> _adminSalesChannelsGet({
    @Query('id') String? id,
    @Query('name') String? name,
    @Query('description') String? description,
    @Query('q') String? q,
    @Query('order') String? order,
    @Query('created_at') Object? createdAt,
    @Query('updated_at') Object? updatedAt,
    @Query('deleted_at') Object? deletedAt,
    @Query('offset') int? offset,
    @Query('limit') int? limit,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
  });

  ///Create a Sales Channel
  Future<chopper.Response<AdminSalesChannelsRes>> adminSalesChannelsPost(
      {required AdminPostSalesChannelsReq? body}) {
    generatedMapping.putIfAbsent(
        AdminSalesChannelsRes, () => AdminSalesChannelsRes.fromJsonFactory);

    return _adminSalesChannelsPost(body: body);
  }

  ///Create a Sales Channel
  @Post(
    path: '/admin/sales-channels',
    optionalBody: true,
  )
  Future<chopper.Response<AdminSalesChannelsRes>> _adminSalesChannelsPost(
      {@Body() required AdminPostSalesChannelsReq? body});

  ///Get a Sales Channel
  ///@param id The ID of the Sales channel.
  Future<chopper.Response<AdminSalesChannelsRes>> adminSalesChannelsIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        AdminSalesChannelsRes, () => AdminSalesChannelsRes.fromJsonFactory);

    return _adminSalesChannelsIdGet(id: id);
  }

  ///Get a Sales Channel
  ///@param id The ID of the Sales channel.
  @Get(path: '/admin/sales-channels/{id}')
  Future<chopper.Response<AdminSalesChannelsRes>> _adminSalesChannelsIdGet(
      {@Path('id') required String? id});

  ///Update a Sales Channel
  ///@param id The ID of the Sales Channel.
  Future<chopper.Response<AdminSalesChannelsRes>> adminSalesChannelsIdPost({
    required String? id,
    required AdminPostSalesChannelsSalesChannelReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminSalesChannelsRes, () => AdminSalesChannelsRes.fromJsonFactory);

    return _adminSalesChannelsIdPost(id: id, body: body);
  }

  ///Update a Sales Channel
  ///@param id The ID of the Sales Channel.
  @Post(
    path: '/admin/sales-channels/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<AdminSalesChannelsRes>> _adminSalesChannelsIdPost({
    @Path('id') required String? id,
    @Body() required AdminPostSalesChannelsSalesChannelReq? body,
  });

  ///Delete a Sales Channel
  ///@param id The ID of the Sales channel.
  Future<chopper.Response<AdminSalesChannelsDeleteRes>>
      adminSalesChannelsIdDelete({required String? id}) {
    generatedMapping.putIfAbsent(AdminSalesChannelsDeleteRes,
        () => AdminSalesChannelsDeleteRes.fromJsonFactory);

    return _adminSalesChannelsIdDelete(id: id);
  }

  ///Delete a Sales Channel
  ///@param id The ID of the Sales channel.
  @Delete(path: '/admin/sales-channels/{id}')
  Future<chopper.Response<AdminSalesChannelsDeleteRes>>
      _adminSalesChannelsIdDelete({@Path('id') required String? id});

  ///Add Products to Sales Channel
  ///@param id The ID of the Sales channel.
  Future<chopper.Response<AdminSalesChannelsRes>>
      adminSalesChannelsIdProductsBatchPost({
    required String? id,
    required AdminPostSalesChannelsChannelProductsBatchReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminSalesChannelsRes, () => AdminSalesChannelsRes.fromJsonFactory);

    return _adminSalesChannelsIdProductsBatchPost(id: id, body: body);
  }

  ///Add Products to Sales Channel
  ///@param id The ID of the Sales channel.
  @Post(
    path: '/admin/sales-channels/{id}/products/batch',
    optionalBody: true,
  )
  Future<chopper.Response<AdminSalesChannelsRes>>
      _adminSalesChannelsIdProductsBatchPost({
    @Path('id') required String? id,
    @Body() required AdminPostSalesChannelsChannelProductsBatchReq? body,
  });

  ///Remove Products from Sales Channel
  ///@param id The ID of the Sales Channel
  Future<chopper.Response<AdminSalesChannelsRes>>
      adminSalesChannelsIdProductsBatchDelete({
    required String? id,
    required AdminDeleteSalesChannelsChannelProductsBatchReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminSalesChannelsRes, () => AdminSalesChannelsRes.fromJsonFactory);

    return _adminSalesChannelsIdProductsBatchDelete(id: id, body: body);
  }

  ///Remove Products from Sales Channel
  ///@param id The ID of the Sales Channel
  @Delete(path: '/admin/sales-channels/{id}/products/batch')
  Future<chopper.Response<AdminSalesChannelsRes>>
      _adminSalesChannelsIdProductsBatchDelete({
    @Path('id') required String? id,
    @Body() required AdminDeleteSalesChannelsChannelProductsBatchReq? body,
  });

  ///Associate a Stock Location
  ///@param id The ID of the Sales Channel.
  Future<chopper.Response<AdminSalesChannelsRes>>
      adminSalesChannelsIdStockLocationsPost({
    required String? id,
    required AdminPostSalesChannelsChannelStockLocationsReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminSalesChannelsRes, () => AdminSalesChannelsRes.fromJsonFactory);

    return _adminSalesChannelsIdStockLocationsPost(id: id, body: body);
  }

  ///Associate a Stock Location
  ///@param id The ID of the Sales Channel.
  @Post(
    path: '/admin/sales-channels/{id}/stock-locations',
    optionalBody: true,
  )
  Future<chopper.Response<AdminSalesChannelsRes>>
      _adminSalesChannelsIdStockLocationsPost({
    @Path('id') required String? id,
    @Body() required AdminPostSalesChannelsChannelStockLocationsReq? body,
  });

  ///Remove Stock Location from Sales Channels.
  ///@param id The ID of the Sales Channel.
  Future<chopper.Response<AdminSalesChannelsDeleteLocationRes>>
      adminSalesChannelsIdStockLocationsDelete({
    required String? id,
    required AdminDeleteSalesChannelsChannelStockLocationsReq? body,
  }) {
    generatedMapping.putIfAbsent(AdminSalesChannelsDeleteLocationRes,
        () => AdminSalesChannelsDeleteLocationRes.fromJsonFactory);

    return _adminSalesChannelsIdStockLocationsDelete(id: id, body: body);
  }

  ///Remove Stock Location from Sales Channels.
  ///@param id The ID of the Sales Channel.
  @Delete(path: '/admin/sales-channels/{id}/stock-locations')
  Future<chopper.Response<AdminSalesChannelsDeleteLocationRes>>
      _adminSalesChannelsIdStockLocationsDelete({
    @Path('id') required String? id,
    @Body() required AdminDeleteSalesChannelsChannelStockLocationsReq? body,
  });

  ///List Shipping Options
  ///@param region_id Filter by a region ID.
  ///@param is_return Filter by whether the shipping option is used for returns or orders.
  ///@param admin_only Filter by whether the shipping option is used only by admins or not.
  Future<chopper.Response<AdminShippingOptionsListRes>>
      adminShippingOptionsGet({
    String? regionId,
    bool? isReturn,
    bool? adminOnly,
  }) {
    generatedMapping.putIfAbsent(AdminShippingOptionsListRes,
        () => AdminShippingOptionsListRes.fromJsonFactory);

    return _adminShippingOptionsGet(
        regionId: regionId, isReturn: isReturn, adminOnly: adminOnly);
  }

  ///List Shipping Options
  ///@param region_id Filter by a region ID.
  ///@param is_return Filter by whether the shipping option is used for returns or orders.
  ///@param admin_only Filter by whether the shipping option is used only by admins or not.
  @Get(path: '/admin/shipping-options')
  Future<chopper.Response<AdminShippingOptionsListRes>>
      _adminShippingOptionsGet({
    @Query('region_id') String? regionId,
    @Query('is_return') bool? isReturn,
    @Query('admin_only') bool? adminOnly,
  });

  ///Create Shipping Option
  Future<chopper.Response<AdminShippingOptionsRes>> adminShippingOptionsPost(
      {required AdminPostShippingOptionsReq? body}) {
    generatedMapping.putIfAbsent(
        AdminShippingOptionsRes, () => AdminShippingOptionsRes.fromJsonFactory);

    return _adminShippingOptionsPost(body: body);
  }

  ///Create Shipping Option
  @Post(
    path: '/admin/shipping-options',
    optionalBody: true,
  )
  Future<chopper.Response<AdminShippingOptionsRes>> _adminShippingOptionsPost(
      {@Body() required AdminPostShippingOptionsReq? body});

  ///Get a Shipping Option
  ///@param id The ID of the Shipping Option.
  Future<chopper.Response<AdminShippingOptionsRes>> adminShippingOptionsIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        AdminShippingOptionsRes, () => AdminShippingOptionsRes.fromJsonFactory);

    return _adminShippingOptionsIdGet(id: id);
  }

  ///Get a Shipping Option
  ///@param id The ID of the Shipping Option.
  @Get(path: '/admin/shipping-options/{id}')
  Future<chopper.Response<AdminShippingOptionsRes>> _adminShippingOptionsIdGet(
      {@Path('id') required String? id});

  ///Update Shipping Option
  ///@param id The ID of the Shipping Option.
  Future<chopper.Response<AdminShippingOptionsRes>> adminShippingOptionsIdPost({
    required String? id,
    required AdminPostShippingOptionsOptionReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminShippingOptionsRes, () => AdminShippingOptionsRes.fromJsonFactory);

    return _adminShippingOptionsIdPost(id: id, body: body);
  }

  ///Update Shipping Option
  ///@param id The ID of the Shipping Option.
  @Post(
    path: '/admin/shipping-options/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<AdminShippingOptionsRes>>
      _adminShippingOptionsIdPost({
    @Path('id') required String? id,
    @Body() required AdminPostShippingOptionsOptionReq? body,
  });

  ///Delete Shipping Option
  ///@param id The ID of the Shipping Option.
  Future<chopper.Response<AdminShippingOptionsDeleteRes>>
      adminShippingOptionsIdDelete({required String? id}) {
    generatedMapping.putIfAbsent(AdminShippingOptionsDeleteRes,
        () => AdminShippingOptionsDeleteRes.fromJsonFactory);

    return _adminShippingOptionsIdDelete(id: id);
  }

  ///Delete Shipping Option
  ///@param id The ID of the Shipping Option.
  @Delete(path: '/admin/shipping-options/{id}')
  Future<chopper.Response<AdminShippingOptionsDeleteRes>>
      _adminShippingOptionsIdDelete({@Path('id') required String? id});

  ///List Shipping Profiles
  Future<chopper.Response<AdminShippingProfilesListRes>>
      adminShippingProfilesGet() {
    generatedMapping.putIfAbsent(AdminShippingProfilesListRes,
        () => AdminShippingProfilesListRes.fromJsonFactory);

    return _adminShippingProfilesGet();
  }

  ///List Shipping Profiles
  @Get(path: '/admin/shipping-profiles')
  Future<chopper.Response<AdminShippingProfilesListRes>>
      _adminShippingProfilesGet();

  ///Create a Shipping Profile
  Future<chopper.Response<AdminShippingProfilesRes>> adminShippingProfilesPost(
      {required AdminPostShippingProfilesReq? body}) {
    generatedMapping.putIfAbsent(AdminShippingProfilesRes,
        () => AdminShippingProfilesRes.fromJsonFactory);

    return _adminShippingProfilesPost(body: body);
  }

  ///Create a Shipping Profile
  @Post(
    path: '/admin/shipping-profiles',
    optionalBody: true,
  )
  Future<chopper.Response<AdminShippingProfilesRes>> _adminShippingProfilesPost(
      {@Body() required AdminPostShippingProfilesReq? body});

  ///Get a Shipping Profile
  ///@param id The ID of the Shipping Profile.
  Future<chopper.Response<AdminShippingProfilesRes>> adminShippingProfilesIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(AdminShippingProfilesRes,
        () => AdminShippingProfilesRes.fromJsonFactory);

    return _adminShippingProfilesIdGet(id: id);
  }

  ///Get a Shipping Profile
  ///@param id The ID of the Shipping Profile.
  @Get(path: '/admin/shipping-profiles/{id}')
  Future<chopper.Response<AdminShippingProfilesRes>>
      _adminShippingProfilesIdGet({@Path('id') required String? id});

  ///Update a Shipping Profile
  ///@param id The ID of the Shipping Profile.
  Future<chopper.Response<AdminShippingProfilesRes>>
      adminShippingProfilesIdPost({
    required String? id,
    required AdminPostShippingProfilesProfileReq? body,
  }) {
    generatedMapping.putIfAbsent(AdminShippingProfilesRes,
        () => AdminShippingProfilesRes.fromJsonFactory);

    return _adminShippingProfilesIdPost(id: id, body: body);
  }

  ///Update a Shipping Profile
  ///@param id The ID of the Shipping Profile.
  @Post(
    path: '/admin/shipping-profiles/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<AdminShippingProfilesRes>>
      _adminShippingProfilesIdPost({
    @Path('id') required String? id,
    @Body() required AdminPostShippingProfilesProfileReq? body,
  });

  ///Delete a Shipping Profile
  ///@param id The ID of the Shipping Profile.
  Future<chopper.Response<AdminDeleteShippingProfileRes>>
      adminShippingProfilesIdDelete({required String? id}) {
    generatedMapping.putIfAbsent(AdminDeleteShippingProfileRes,
        () => AdminDeleteShippingProfileRes.fromJsonFactory);

    return _adminShippingProfilesIdDelete(id: id);
  }

  ///Delete a Shipping Profile
  ///@param id The ID of the Shipping Profile.
  @Delete(path: '/admin/shipping-profiles/{id}')
  Future<chopper.Response<AdminDeleteShippingProfileRes>>
      _adminShippingProfilesIdDelete({@Path('id') required String? id});

  ///List Stock Locations
  ///@param id Filter by ID.
  ///@param name Filter by name.
  ///@param order A stock-location field to sort-order the retrieved stock locations by.
  ///@param created_at Filter by a creation date range.
  ///@param updated_at Filter by an update date range.
  ///@param deleted_at Filter by a deletion date range.
  ///@param offset The number of stock locations to skip when retrieving the stock locations.
  ///@param limit Limit the number of stock locations returned.
  ///@param expand Comma-separated relations that should be expanded in the returned stock locations.
  ///@param fields Comma-separated fields that should be included in the returned stock locations.
  Future<chopper.Response<AdminStockLocationsListRes>> adminStockLocationsGet({
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
    generatedMapping.putIfAbsent(AdminStockLocationsListRes,
        () => AdminStockLocationsListRes.fromJsonFactory);

    return _adminStockLocationsGet(
        id: id,
        name: name,
        order: order,
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
        offset: offset,
        limit: limit,
        expand: expand,
        fields: fields);
  }

  ///List Stock Locations
  ///@param id Filter by ID.
  ///@param name Filter by name.
  ///@param order A stock-location field to sort-order the retrieved stock locations by.
  ///@param created_at Filter by a creation date range.
  ///@param updated_at Filter by an update date range.
  ///@param deleted_at Filter by a deletion date range.
  ///@param offset The number of stock locations to skip when retrieving the stock locations.
  ///@param limit Limit the number of stock locations returned.
  ///@param expand Comma-separated relations that should be expanded in the returned stock locations.
  ///@param fields Comma-separated fields that should be included in the returned stock locations.
  @Get(path: '/admin/stock-locations')
  Future<chopper.Response<AdminStockLocationsListRes>> _adminStockLocationsGet({
    @Query('id') String? id,
    @Query('name') String? name,
    @Query('order') String? order,
    @Query('created_at') Object? createdAt,
    @Query('updated_at') Object? updatedAt,
    @Query('deleted_at') Object? deletedAt,
    @Query('offset') int? offset,
    @Query('limit') int? limit,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
  });

  ///Create a Stock Location
  ///@param expand Comma-separated relations that should be expanded in the returned stock location.
  ///@param fields Comma-separated fields that should be included in the returned stock location.
  Future<chopper.Response<AdminStockLocationsRes>> adminStockLocationsPost({
    String? expand,
    String? fields,
    required AdminPostStockLocationsReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminStockLocationsRes, () => AdminStockLocationsRes.fromJsonFactory);

    return _adminStockLocationsPost(expand: expand, fields: fields, body: body);
  }

  ///Create a Stock Location
  ///@param expand Comma-separated relations that should be expanded in the returned stock location.
  ///@param fields Comma-separated fields that should be included in the returned stock location.
  @Post(
    path: '/admin/stock-locations',
    optionalBody: true,
  )
  Future<chopper.Response<AdminStockLocationsRes>> _adminStockLocationsPost({
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Body() required AdminPostStockLocationsReq? body,
  });

  ///Get a Stock Location
  ///@param id The ID of the Stock Location.
  ///@param expand Comma-separated relations that should be expanded in the returned stock location.
  ///@param fields Comma-separated fields that should be included in the returned stock location.
  Future<chopper.Response<AdminStockLocationsRes>> adminStockLocationsIdGet({
    required String? id,
    String? expand,
    String? fields,
  }) {
    generatedMapping.putIfAbsent(
        AdminStockLocationsRes, () => AdminStockLocationsRes.fromJsonFactory);

    return _adminStockLocationsIdGet(id: id, expand: expand, fields: fields);
  }

  ///Get a Stock Location
  ///@param id The ID of the Stock Location.
  ///@param expand Comma-separated relations that should be expanded in the returned stock location.
  ///@param fields Comma-separated fields that should be included in the returned stock location.
  @Get(path: '/admin/stock-locations/{id}')
  Future<chopper.Response<AdminStockLocationsRes>> _adminStockLocationsIdGet({
    @Path('id') required String? id,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
  });

  ///Update a Stock Location
  ///@param id The ID of the Stock Location.
  ///@param expand Comma-separated relations that should be expanded in the returned stock location.
  ///@param fields Comma-separated fields that should be included in the returned stock location.
  Future<chopper.Response<AdminStockLocationsRes>> adminStockLocationsIdPost({
    required String? id,
    String? expand,
    String? fields,
    required AdminPostStockLocationsLocationReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminStockLocationsRes, () => AdminStockLocationsRes.fromJsonFactory);

    return _adminStockLocationsIdPost(
        id: id, expand: expand, fields: fields, body: body);
  }

  ///Update a Stock Location
  ///@param id The ID of the Stock Location.
  ///@param expand Comma-separated relations that should be expanded in the returned stock location.
  ///@param fields Comma-separated fields that should be included in the returned stock location.
  @Post(
    path: '/admin/stock-locations/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<AdminStockLocationsRes>> _adminStockLocationsIdPost({
    @Path('id') required String? id,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Body() required AdminPostStockLocationsLocationReq? body,
  });

  ///Delete a Stock Location
  ///@param id The ID of the Stock Location.
  Future<chopper.Response<AdminStockLocationsDeleteRes>>
      adminStockLocationsIdDelete({required String? id}) {
    generatedMapping.putIfAbsent(AdminStockLocationsDeleteRes,
        () => AdminStockLocationsDeleteRes.fromJsonFactory);

    return _adminStockLocationsIdDelete(id: id);
  }

  ///Delete a Stock Location
  ///@param id The ID of the Stock Location.
  @Delete(path: '/admin/stock-locations/{id}')
  Future<chopper.Response<AdminStockLocationsDeleteRes>>
      _adminStockLocationsIdDelete({@Path('id') required String? id});

  ///Get Store details
  Future<chopper.Response<AdminExtendedStoresRes>> adminStoreGet() {
    generatedMapping.putIfAbsent(
        AdminExtendedStoresRes, () => AdminExtendedStoresRes.fromJsonFactory);

    return _adminStoreGet();
  }

  ///Get Store details
  @Get(path: '/admin/store')
  Future<chopper.Response<AdminExtendedStoresRes>> _adminStoreGet();

  ///Update Store Details
  Future<chopper.Response<AdminStoresRes>> adminStorePost(
      {required AdminPostStoreReq? body}) {
    generatedMapping.putIfAbsent(
        AdminStoresRes, () => AdminStoresRes.fromJsonFactory);

    return _adminStorePost(body: body);
  }

  ///Update Store Details
  @Post(
    path: '/admin/store',
    optionalBody: true,
  )
  Future<chopper.Response<AdminStoresRes>> _adminStorePost(
      {@Body() required AdminPostStoreReq? body});

  ///Add a Currency Code
  ///@param code The 3 character ISO currency code.
  Future<chopper.Response<AdminStoresRes>> adminStoreCurrenciesCodePost(
      {required String? code}) {
    generatedMapping.putIfAbsent(
        AdminStoresRes, () => AdminStoresRes.fromJsonFactory);

    return _adminStoreCurrenciesCodePost(code: code);
  }

  ///Add a Currency Code
  ///@param code The 3 character ISO currency code.
  @Post(
    path: '/admin/store/currencies/{code}',
    optionalBody: true,
  )
  Future<chopper.Response<AdminStoresRes>> _adminStoreCurrenciesCodePost(
      {@Path('code') required String? code});

  ///Remove a Currency
  ///@param code The 3 character ISO currency code.
  Future<chopper.Response<AdminStoresRes>> adminStoreCurrenciesCodeDelete(
      {required String? code}) {
    generatedMapping.putIfAbsent(
        AdminStoresRes, () => AdminStoresRes.fromJsonFactory);

    return _adminStoreCurrenciesCodeDelete(code: code);
  }

  ///Remove a Currency
  ///@param code The 3 character ISO currency code.
  @Delete(path: '/admin/store/currencies/{code}')
  Future<chopper.Response<AdminStoresRes>> _adminStoreCurrenciesCodeDelete(
      {@Path('code') required String? code});

  ///List Payment Providers
  Future<chopper.Response<AdminPaymentProvidersList>>
      adminStorePaymentProvidersGet() {
    generatedMapping.putIfAbsent(AdminPaymentProvidersList,
        () => AdminPaymentProvidersList.fromJsonFactory);

    return _adminStorePaymentProvidersGet();
  }

  ///List Payment Providers
  @Get(path: '/admin/store/payment-providers')
  Future<chopper.Response<AdminPaymentProvidersList>>
      _adminStorePaymentProvidersGet();

  ///List Tax Providers
  Future<chopper.Response<AdminTaxProvidersList>> adminStoreTaxProvidersGet() {
    generatedMapping.putIfAbsent(
        AdminTaxProvidersList, () => AdminTaxProvidersList.fromJsonFactory);

    return _adminStoreTaxProvidersGet();
  }

  ///List Tax Providers
  @Get(path: '/admin/store/tax-providers')
  Future<chopper.Response<AdminTaxProvidersList>> _adminStoreTaxProvidersGet();

  ///List Swaps
  ///@param limit Limit the number of swaps returned.
  ///@param offset The number of swaps to skip when retrieving the swaps.
  Future<chopper.Response<AdminSwapsListRes>> adminSwapsGet({
    num? limit,
    num? offset,
  }) {
    generatedMapping.putIfAbsent(
        AdminSwapsListRes, () => AdminSwapsListRes.fromJsonFactory);

    return _adminSwapsGet(limit: limit, offset: offset);
  }

  ///List Swaps
  ///@param limit Limit the number of swaps returned.
  ///@param offset The number of swaps to skip when retrieving the swaps.
  @Get(path: '/admin/swaps')
  Future<chopper.Response<AdminSwapsListRes>> _adminSwapsGet({
    @Query('limit') num? limit,
    @Query('offset') num? offset,
  });

  ///Get a Swap
  ///@param id The ID of the Swap.
  Future<chopper.Response<AdminSwapsRes>> adminSwapsIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        AdminSwapsRes, () => AdminSwapsRes.fromJsonFactory);

    return _adminSwapsIdGet(id: id);
  }

  ///Get a Swap
  ///@param id The ID of the Swap.
  @Get(path: '/admin/swaps/{id}')
  Future<chopper.Response<AdminSwapsRes>> _adminSwapsIdGet(
      {@Path('id') required String? id});

  ///List Tax Rates
  ///@param name Filter by name.
  ///@param region_id Filter by Region IDs
  ///@param code Filter by code.
  ///@param rate Filter by Rate
  ///@param offset The number of tax rates to skip when retrieving the tax rates.
  ///@param limit Limit the number of tax rates returned.
  ///@param fields Comma-separated fields that should be included in the returned tax rate.
  ///@param expand Comma-separated relations that should be expanded in the returned tax rate.
  Future<chopper.Response<AdminTaxRatesListRes>> adminTaxRatesGet({
    String? name,
    Object? regionId,
    String? code,
    Object? rate,
    int? offset,
    int? limit,
    List<String>? fields,
    List<String>? expand,
  }) {
    generatedMapping.putIfAbsent(
        AdminTaxRatesListRes, () => AdminTaxRatesListRes.fromJsonFactory);

    return _adminTaxRatesGet(
        name: name,
        regionId: regionId,
        code: code,
        rate: rate,
        offset: offset,
        limit: limit,
        fields: fields,
        expand: expand);
  }

  ///List Tax Rates
  ///@param name Filter by name.
  ///@param region_id Filter by Region IDs
  ///@param code Filter by code.
  ///@param rate Filter by Rate
  ///@param offset The number of tax rates to skip when retrieving the tax rates.
  ///@param limit Limit the number of tax rates returned.
  ///@param fields Comma-separated fields that should be included in the returned tax rate.
  ///@param expand Comma-separated relations that should be expanded in the returned tax rate.
  @Get(path: '/admin/tax-rates')
  Future<chopper.Response<AdminTaxRatesListRes>> _adminTaxRatesGet({
    @Query('name') String? name,
    @Query('region_id') Object? regionId,
    @Query('code') String? code,
    @Query('rate') Object? rate,
    @Query('offset') int? offset,
    @Query('limit') int? limit,
    @Query('fields') List<String>? fields,
    @Query('expand') List<String>? expand,
  });

  ///Create a Tax Rate
  ///@param fields Comma-separated fields that should be included in the returned tax rate.
  ///@param expand Comma-separated relations that should be expanded in the returned tax rate.
  Future<chopper.Response<AdminTaxRatesRes>> adminTaxRatesPost({
    List<String>? fields,
    List<String>? expand,
    required AdminPostTaxRatesReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminTaxRatesRes, () => AdminTaxRatesRes.fromJsonFactory);

    return _adminTaxRatesPost(fields: fields, expand: expand, body: body);
  }

  ///Create a Tax Rate
  ///@param fields Comma-separated fields that should be included in the returned tax rate.
  ///@param expand Comma-separated relations that should be expanded in the returned tax rate.
  @Post(
    path: '/admin/tax-rates',
    optionalBody: true,
  )
  Future<chopper.Response<AdminTaxRatesRes>> _adminTaxRatesPost({
    @Query('fields') List<String>? fields,
    @Query('expand') List<String>? expand,
    @Body() required AdminPostTaxRatesReq? body,
  });

  ///Get a Tax Rate
  ///@param id ID of the tax rate.
  ///@param fields Comma-separated fields that should be included in the returned tax rate.
  ///@param expand Comma-separated relations that should be expanded in the returned tax rate.
  Future<chopper.Response<AdminTaxRatesRes>> adminTaxRatesIdGet({
    required String? id,
    List<String>? fields,
    List<String>? expand,
  }) {
    generatedMapping.putIfAbsent(
        AdminTaxRatesRes, () => AdminTaxRatesRes.fromJsonFactory);

    return _adminTaxRatesIdGet(id: id, fields: fields, expand: expand);
  }

  ///Get a Tax Rate
  ///@param id ID of the tax rate.
  ///@param fields Comma-separated fields that should be included in the returned tax rate.
  ///@param expand Comma-separated relations that should be expanded in the returned tax rate.
  @Get(path: '/admin/tax-rates/{id}')
  Future<chopper.Response<AdminTaxRatesRes>> _adminTaxRatesIdGet({
    @Path('id') required String? id,
    @Query('fields') List<String>? fields,
    @Query('expand') List<String>? expand,
  });

  ///Update a Tax Rate
  ///@param id ID of the tax rate.
  ///@param fields Comma-separated fields that should be included in the returned tax rate.
  ///@param expand Comma-separated relations that should be expanded in the returned tax rate.
  Future<chopper.Response<AdminTaxRatesRes>> adminTaxRatesIdPost({
    required String? id,
    List<String>? fields,
    List<String>? expand,
    required AdminPostTaxRatesTaxRateReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminTaxRatesRes, () => AdminTaxRatesRes.fromJsonFactory);

    return _adminTaxRatesIdPost(
        id: id, fields: fields, expand: expand, body: body);
  }

  ///Update a Tax Rate
  ///@param id ID of the tax rate.
  ///@param fields Comma-separated fields that should be included in the returned tax rate.
  ///@param expand Comma-separated relations that should be expanded in the returned tax rate.
  @Post(
    path: '/admin/tax-rates/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<AdminTaxRatesRes>> _adminTaxRatesIdPost({
    @Path('id') required String? id,
    @Query('fields') List<String>? fields,
    @Query('expand') List<String>? expand,
    @Body() required AdminPostTaxRatesTaxRateReq? body,
  });

  ///Delete a Tax Rate
  ///@param id The ID of the Shipping Option.
  Future<chopper.Response<AdminTaxRatesDeleteRes>> adminTaxRatesIdDelete(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        AdminTaxRatesDeleteRes, () => AdminTaxRatesDeleteRes.fromJsonFactory);

    return _adminTaxRatesIdDelete(id: id);
  }

  ///Delete a Tax Rate
  ///@param id The ID of the Shipping Option.
  @Delete(path: '/admin/tax-rates/{id}')
  Future<chopper.Response<AdminTaxRatesDeleteRes>> _adminTaxRatesIdDelete(
      {@Path('id') required String? id});

  ///Add to Product Types
  ///@param id ID of the tax rate.
  ///@param fields Comma-separated fields that should be included in the returned tax rate.
  ///@param expand Comma-separated relations that should be expanded in the returned tax rate.
  Future<chopper.Response<AdminTaxRatesRes>>
      adminTaxRatesIdProductTypesBatchPost({
    required String? id,
    List<String>? fields,
    List<String>? expand,
    required AdminPostTaxRatesTaxRateProductTypesReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminTaxRatesRes, () => AdminTaxRatesRes.fromJsonFactory);

    return _adminTaxRatesIdProductTypesBatchPost(
        id: id, fields: fields, expand: expand, body: body);
  }

  ///Add to Product Types
  ///@param id ID of the tax rate.
  ///@param fields Comma-separated fields that should be included in the returned tax rate.
  ///@param expand Comma-separated relations that should be expanded in the returned tax rate.
  @Post(
    path: '/admin/tax-rates/{id}/product-types/batch',
    optionalBody: true,
  )
  Future<chopper.Response<AdminTaxRatesRes>>
      _adminTaxRatesIdProductTypesBatchPost({
    @Path('id') required String? id,
    @Query('fields') List<String>? fields,
    @Query('expand') List<String>? expand,
    @Body() required AdminPostTaxRatesTaxRateProductTypesReq? body,
  });

  ///Remove Product Types from Rate
  ///@param id ID of the tax rate.
  ///@param fields Comma-separated fields that should be included in the returned tax rate.
  ///@param expand Comma-separated relations that should be expanded in the returned tax rate.
  Future<chopper.Response<AdminTaxRatesRes>>
      adminTaxRatesIdProductTypesBatchDelete({
    required String? id,
    List<String>? fields,
    List<String>? expand,
    required AdminDeleteTaxRatesTaxRateProductTypesReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminTaxRatesRes, () => AdminTaxRatesRes.fromJsonFactory);

    return _adminTaxRatesIdProductTypesBatchDelete(
        id: id, fields: fields, expand: expand, body: body);
  }

  ///Remove Product Types from Rate
  ///@param id ID of the tax rate.
  ///@param fields Comma-separated fields that should be included in the returned tax rate.
  ///@param expand Comma-separated relations that should be expanded in the returned tax rate.
  @Delete(path: '/admin/tax-rates/{id}/product-types/batch')
  Future<chopper.Response<AdminTaxRatesRes>>
      _adminTaxRatesIdProductTypesBatchDelete({
    @Path('id') required String? id,
    @Query('fields') List<String>? fields,
    @Query('expand') List<String>? expand,
    @Body() required AdminDeleteTaxRatesTaxRateProductTypesReq? body,
  });

  ///Add to Products
  ///@param id ID of the tax rate.
  ///@param fields Comma-separated fields that should be included in the returned tax rate.
  ///@param expand Comma-separated relations that should be expanded in the returned tax rate.
  Future<chopper.Response<AdminTaxRatesRes>> adminTaxRatesIdProductsBatchPost({
    required String? id,
    List<String>? fields,
    List<String>? expand,
    required AdminPostTaxRatesTaxRateProductsReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminTaxRatesRes, () => AdminTaxRatesRes.fromJsonFactory);

    return _adminTaxRatesIdProductsBatchPost(
        id: id, fields: fields, expand: expand, body: body);
  }

  ///Add to Products
  ///@param id ID of the tax rate.
  ///@param fields Comma-separated fields that should be included in the returned tax rate.
  ///@param expand Comma-separated relations that should be expanded in the returned tax rate.
  @Post(
    path: '/admin/tax-rates/{id}/products/batch',
    optionalBody: true,
  )
  Future<chopper.Response<AdminTaxRatesRes>> _adminTaxRatesIdProductsBatchPost({
    @Path('id') required String? id,
    @Query('fields') List<String>? fields,
    @Query('expand') List<String>? expand,
    @Body() required AdminPostTaxRatesTaxRateProductsReq? body,
  });

  ///Remove Products from Rate
  ///@param id ID of the tax rate.
  ///@param fields Comma-separated fields that should be included in the returned tax rate.
  ///@param expand Comma-separated relations that should be expanded in the returned tax rate.
  Future<chopper.Response<AdminTaxRatesRes>>
      adminTaxRatesIdProductsBatchDelete({
    required String? id,
    List<String>? fields,
    List<String>? expand,
    required AdminDeleteTaxRatesTaxRateProductsReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminTaxRatesRes, () => AdminTaxRatesRes.fromJsonFactory);

    return _adminTaxRatesIdProductsBatchDelete(
        id: id, fields: fields, expand: expand, body: body);
  }

  ///Remove Products from Rate
  ///@param id ID of the tax rate.
  ///@param fields Comma-separated fields that should be included in the returned tax rate.
  ///@param expand Comma-separated relations that should be expanded in the returned tax rate.
  @Delete(path: '/admin/tax-rates/{id}/products/batch')
  Future<chopper.Response<AdminTaxRatesRes>>
      _adminTaxRatesIdProductsBatchDelete({
    @Path('id') required String? id,
    @Query('fields') List<String>? fields,
    @Query('expand') List<String>? expand,
    @Body() required AdminDeleteTaxRatesTaxRateProductsReq? body,
  });

  ///Add to Shipping Options
  ///@param id ID of the tax rate.
  ///@param fields Comma-separated fields that should be included in the returned tax rate.
  ///@param expand Comma-separated relations that should be expanded in the returned tax rate.
  Future<chopper.Response<AdminTaxRatesRes>>
      adminTaxRatesIdShippingOptionsBatchPost({
    required String? id,
    List<String>? fields,
    List<String>? expand,
    required AdminPostTaxRatesTaxRateShippingOptionsReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminTaxRatesRes, () => AdminTaxRatesRes.fromJsonFactory);

    return _adminTaxRatesIdShippingOptionsBatchPost(
        id: id, fields: fields, expand: expand, body: body);
  }

  ///Add to Shipping Options
  ///@param id ID of the tax rate.
  ///@param fields Comma-separated fields that should be included in the returned tax rate.
  ///@param expand Comma-separated relations that should be expanded in the returned tax rate.
  @Post(
    path: '/admin/tax-rates/{id}/shipping-options/batch',
    optionalBody: true,
  )
  Future<chopper.Response<AdminTaxRatesRes>>
      _adminTaxRatesIdShippingOptionsBatchPost({
    @Path('id') required String? id,
    @Query('fields') List<String>? fields,
    @Query('expand') List<String>? expand,
    @Body() required AdminPostTaxRatesTaxRateShippingOptionsReq? body,
  });

  ///Remove Shipping Options from Rate
  ///@param id ID of the tax rate.
  ///@param fields Comma-separated fields that should be included in the returned tax rate.
  ///@param expand Comma-separated relations that should be expanded in the returned tax rate.
  Future<chopper.Response<AdminTaxRatesRes>>
      adminTaxRatesIdShippingOptionsBatchDelete({
    required String? id,
    List<String>? fields,
    List<String>? expand,
    required AdminDeleteTaxRatesTaxRateShippingOptionsReq? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminTaxRatesRes, () => AdminTaxRatesRes.fromJsonFactory);

    return _adminTaxRatesIdShippingOptionsBatchDelete(
        id: id, fields: fields, expand: expand, body: body);
  }

  ///Remove Shipping Options from Rate
  ///@param id ID of the tax rate.
  ///@param fields Comma-separated fields that should be included in the returned tax rate.
  ///@param expand Comma-separated relations that should be expanded in the returned tax rate.
  @Delete(path: '/admin/tax-rates/{id}/shipping-options/batch')
  Future<chopper.Response<AdminTaxRatesRes>>
      _adminTaxRatesIdShippingOptionsBatchDelete({
    @Path('id') required String? id,
    @Query('fields') List<String>? fields,
    @Query('expand') List<String>? expand,
    @Body() required AdminDeleteTaxRatesTaxRateShippingOptionsReq? body,
  });

  ///Upload Files
  Future<chopper.Response<AdminUploadsRes>> adminUploadsPost(
      {List<int>? files}) {
    generatedMapping.putIfAbsent(
        AdminUploadsRes, () => AdminUploadsRes.fromJsonFactory);

    return _adminUploadsPost(files: files);
  }

  ///Upload Files
  @Post(
    path: '/admin/uploads',
    optionalBody: true,
  )
  @Multipart()
  Future<chopper.Response<AdminUploadsRes>> _adminUploadsPost(
      {@PartFile() List<int>? files});

  ///Delete an Uploaded File
  Future<chopper.Response<AdminDeleteUploadsRes>> adminUploadsDelete(
      {required AdminDeleteUploadsReq? body}) {
    generatedMapping.putIfAbsent(
        AdminDeleteUploadsRes, () => AdminDeleteUploadsRes.fromJsonFactory);

    return _adminUploadsDelete(body: body);
  }

  ///Delete an Uploaded File
  @Delete(path: '/admin/uploads')
  Future<chopper.Response<AdminDeleteUploadsRes>> _adminUploadsDelete(
      {@Body() required AdminDeleteUploadsReq? body});

  ///Get a File's Download URL
  Future<chopper.Response<AdminUploadsDownloadUrlRes>>
      adminUploadsDownloadUrlPost(
          {required AdminPostUploadsDownloadUrlReq? body}) {
    generatedMapping.putIfAbsent(AdminUploadsDownloadUrlRes,
        () => AdminUploadsDownloadUrlRes.fromJsonFactory);

    return _adminUploadsDownloadUrlPost(body: body);
  }

  ///Get a File's Download URL
  @Post(
    path: '/admin/uploads/download-url',
    optionalBody: true,
  )
  Future<chopper.Response<AdminUploadsDownloadUrlRes>>
      _adminUploadsDownloadUrlPost(
          {@Body() required AdminPostUploadsDownloadUrlReq? body});

  ///Protected File Upload
  Future<chopper.Response<AdminUploadsRes>> adminUploadsProtectedPost(
      {List<int>? files}) {
    generatedMapping.putIfAbsent(
        AdminUploadsRes, () => AdminUploadsRes.fromJsonFactory);

    return _adminUploadsProtectedPost(files: files);
  }

  ///Protected File Upload
  @Post(
    path: '/admin/uploads/protected',
    optionalBody: true,
  )
  @Multipart()
  Future<chopper.Response<AdminUploadsRes>> _adminUploadsProtectedPost(
      {@PartFile() List<int>? files});

  ///List Users
  Future<chopper.Response<AdminUsersListRes>> adminUsersGet() {
    generatedMapping.putIfAbsent(
        AdminUsersListRes, () => AdminUsersListRes.fromJsonFactory);

    return _adminUsersGet();
  }

  ///List Users
  @Get(path: '/admin/users')
  Future<chopper.Response<AdminUsersListRes>> _adminUsersGet();

  ///Create a User
  Future<chopper.Response<AdminUserRes>> adminUsersPost(
      {required AdminCreateUserRequest? body}) {
    generatedMapping.putIfAbsent(
        AdminUserRes, () => AdminUserRes.fromJsonFactory);

    return _adminUsersPost(body: body);
  }

  ///Create a User
  @Post(
    path: '/admin/users',
    optionalBody: true,
  )
  Future<chopper.Response<AdminUserRes>> _adminUsersPost(
      {@Body() required AdminCreateUserRequest? body});

  ///Request Password Reset
  Future<chopper.Response> adminUsersPasswordTokenPost(
      {required AdminResetPasswordTokenRequest? body}) {
    return _adminUsersPasswordTokenPost(body: body);
  }

  ///Request Password Reset
  @Post(
    path: '/admin/users/password-token',
    optionalBody: true,
  )
  Future<chopper.Response> _adminUsersPasswordTokenPost(
      {@Body() required AdminResetPasswordTokenRequest? body});

  ///Reset Password
  Future<chopper.Response<AdminUserRes>> adminUsersResetPasswordPost(
      {required AdminResetPasswordRequest? body}) {
    generatedMapping.putIfAbsent(
        AdminUserRes, () => AdminUserRes.fromJsonFactory);

    return _adminUsersResetPasswordPost(body: body);
  }

  ///Reset Password
  @Post(
    path: '/admin/users/reset-password',
    optionalBody: true,
  )
  Future<chopper.Response<AdminUserRes>> _adminUsersResetPasswordPost(
      {@Body() required AdminResetPasswordRequest? body});

  ///Get a User
  ///@param id The ID of the User.
  Future<chopper.Response<AdminUserRes>> adminUsersIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        AdminUserRes, () => AdminUserRes.fromJsonFactory);

    return _adminUsersIdGet(id: id);
  }

  ///Get a User
  ///@param id The ID of the User.
  @Get(path: '/admin/users/{id}')
  Future<chopper.Response<AdminUserRes>> _adminUsersIdGet(
      {@Path('id') required String? id});

  ///Update a User
  ///@param id The ID of the User.
  Future<chopper.Response<AdminUserRes>> adminUsersIdPost({
    required String? id,
    required AdminUpdateUserRequest? body,
  }) {
    generatedMapping.putIfAbsent(
        AdminUserRes, () => AdminUserRes.fromJsonFactory);

    return _adminUsersIdPost(id: id, body: body);
  }

  ///Update a User
  ///@param id The ID of the User.
  @Post(
    path: '/admin/users/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<AdminUserRes>> _adminUsersIdPost({
    @Path('id') required String? id,
    @Body() required AdminUpdateUserRequest? body,
  });

  ///Delete a User
  ///@param id The ID of the User.
  Future<chopper.Response<AdminDeleteUserRes>> adminUsersIdDelete(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        AdminDeleteUserRes, () => AdminDeleteUserRes.fromJsonFactory);

    return _adminUsersIdDelete(id: id);
  }

  ///Delete a User
  ///@param id The ID of the User.
  @Delete(path: '/admin/users/{id}')
  Future<chopper.Response<AdminDeleteUserRes>> _adminUsersIdDelete(
      {@Path('id') required String? id});

  ///List Product Variants
  ///@param id Filter by product variant IDs.
  ///@param expand "Comma-separated relations that should be expanded in the returned product variants."
  ///@param fields "Comma-separated fields that should be included in the returned product variants."
  ///@param offset The number of product variants to skip when retrieving the product variants.
  ///@param limit Limit the number of product variants returned.
  ///@param cart_id The ID of the cart to use for the price selection context.
  ///@param region_id The ID of the region to use for the price selection context.
  ///@param currency_code The 3 character ISO currency code to use for the price selection context.
  ///@param customer_id The ID of the customer to use for the price selection context.
  ///@param title Filter by title.
  ///@param inventory_quantity Filter by available inventory quantity
  Future<chopper.Response<AdminVariantsListRes>> adminVariantsGet({
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
    generatedMapping.putIfAbsent(
        AdminVariantsListRes, () => AdminVariantsListRes.fromJsonFactory);

    return _adminVariantsGet(
        id: id,
        expand: expand,
        fields: fields,
        offset: offset,
        limit: limit,
        cartId: cartId,
        regionId: regionId,
        currencyCode: currencyCode,
        customerId: customerId,
        title: title,
        inventoryQuantity: inventoryQuantity);
  }

  ///List Product Variants
  ///@param id Filter by product variant IDs.
  ///@param expand "Comma-separated relations that should be expanded in the returned product variants."
  ///@param fields "Comma-separated fields that should be included in the returned product variants."
  ///@param offset The number of product variants to skip when retrieving the product variants.
  ///@param limit Limit the number of product variants returned.
  ///@param cart_id The ID of the cart to use for the price selection context.
  ///@param region_id The ID of the region to use for the price selection context.
  ///@param currency_code The 3 character ISO currency code to use for the price selection context.
  ///@param customer_id The ID of the customer to use for the price selection context.
  ///@param title Filter by title.
  ///@param inventory_quantity Filter by available inventory quantity
  @Get(path: '/admin/variants')
  Future<chopper.Response<AdminVariantsListRes>> _adminVariantsGet({
    @Query('id') Object? id,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Query('offset') num? offset,
    @Query('limit') num? limit,
    @Query('cart_id') String? cartId,
    @Query('region_id') String? regionId,
    @Query('currency_code') String? currencyCode,
    @Query('customer_id') String? customerId,
    @Query('title') Object? title,
    @Query('inventory_quantity') Object? inventoryQuantity,
  });

  ///Get a Product variant
  ///@param id The ID of the product variant.
  ///@param expand "Comma-separated relations that should be expanded in the returned product variant."
  ///@param fields "Comma-separated fields that should be included in the returned product variant."
  Future<chopper.Response<AdminVariantsRes>> adminVariantsIdGet({
    required String? id,
    String? expand,
    String? fields,
  }) {
    generatedMapping.putIfAbsent(
        AdminVariantsRes, () => AdminVariantsRes.fromJsonFactory);

    return _adminVariantsIdGet(id: id, expand: expand, fields: fields);
  }

  ///Get a Product variant
  ///@param id The ID of the product variant.
  ///@param expand "Comma-separated relations that should be expanded in the returned product variant."
  ///@param fields "Comma-separated fields that should be included in the returned product variant."
  @Get(path: '/admin/variants/{id}')
  Future<chopper.Response<AdminVariantsRes>> _adminVariantsIdGet({
    @Path('id') required String? id,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
  });

  ///Get Variant's Inventory
  ///@param id The Product Variant ID.
  Future<chopper.Response<AdminGetVariantsVariantInventoryRes>>
      adminVariantsIdInventoryGet({required String? id}) {
    generatedMapping.putIfAbsent(AdminGetVariantsVariantInventoryRes,
        () => AdminGetVariantsVariantInventoryRes.fromJsonFactory);

    return _adminVariantsIdInventoryGet(id: id);
  }

  ///Get Variant's Inventory
  ///@param id The Product Variant ID.
  @Get(path: '/admin/variants/{id}/inventory')
  Future<chopper.Response<AdminGetVariantsVariantInventoryRes>>
      _adminVariantsIdInventoryGet({@Path('id') required String? id});

  ///Get Current Customer
  Future<chopper.Response<StoreAuthRes>> storeAuthGet() {
    generatedMapping.putIfAbsent(
        StoreAuthRes, () => StoreAuthRes.fromJsonFactory);

    return _storeAuthGet();
  }

  ///Get Current Customer
  @Get(path: '/store/auth')
  Future<chopper.Response<StoreAuthRes>> _storeAuthGet();

  ///Customer Login
  Future<chopper.Response<StoreAuthRes>> storeAuthPost(
      {required StorePostAuthReq? body}) {
    generatedMapping.putIfAbsent(
        StoreAuthRes, () => StoreAuthRes.fromJsonFactory);

    return _storeAuthPost(body: body);
  }

  ///Customer Login
  @Post(
    path: '/store/auth',
    optionalBody: true,
  )
  Future<chopper.Response<StoreAuthRes>> _storeAuthPost(
      {@Body() required StorePostAuthReq? body});

  ///Customer Log out
  Future<chopper.Response> storeAuthDelete() {
    return _storeAuthDelete();
  }

  ///Customer Log out
  @Delete(path: '/store/auth')
  Future<chopper.Response> _storeAuthDelete();

  ///Customer Login (JWT)
  Future<chopper.Response<StoreBearerAuthRes>> storeAuthTokenPost(
      {required StorePostAuthReq? body}) {
    generatedMapping.putIfAbsent(
        StoreBearerAuthRes, () => StoreBearerAuthRes.fromJsonFactory);

    return _storeAuthTokenPost(body: body);
  }

  ///Customer Login (JWT)
  @Post(
    path: '/store/auth/token',
    optionalBody: true,
  )
  Future<chopper.Response<StoreBearerAuthRes>> _storeAuthTokenPost(
      {@Body() required StorePostAuthReq? body});

  ///Check if Email Exists
  ///@param email The email to check.
  Future<chopper.Response<StoreGetAuthEmailRes>> storeAuthEmailGet(
      {required String? email}) {
    generatedMapping.putIfAbsent(
        StoreGetAuthEmailRes, () => StoreGetAuthEmailRes.fromJsonFactory);

    return _storeAuthEmailGet(email: email);
  }

  ///Check if Email Exists
  ///@param email The email to check.
  @Get(path: '/store/auth/{email}')
  Future<chopper.Response<StoreGetAuthEmailRes>> _storeAuthEmailGet(
      {@Path('email') required String? email});

  ///Create a Cart
  Future<chopper.Response<StoreCartsRes>> storeCartsPost(
      {required StorePostCartReq? body}) {
    generatedMapping.putIfAbsent(
        StoreCartsRes, () => StoreCartsRes.fromJsonFactory);

    return _storeCartsPost(body: body);
  }

  ///Create a Cart
  @Post(
    path: '/store/carts',
    optionalBody: true,
  )
  Future<chopper.Response<StoreCartsRes>> _storeCartsPost(
      {@Body() required StorePostCartReq? body});

  ///Get a Cart
  ///@param id The ID of the Cart.
  Future<chopper.Response<StoreCartsRes>> storeCartsIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        StoreCartsRes, () => StoreCartsRes.fromJsonFactory);

    return _storeCartsIdGet(id: id);
  }

  ///Get a Cart
  ///@param id The ID of the Cart.
  @Get(path: '/store/carts/{id}')
  Future<chopper.Response<StoreCartsRes>> _storeCartsIdGet(
      {@Path('id') required String? id});

  ///Update a Cart
  ///@param id The ID of the Cart.
  Future<chopper.Response<StoreCartsRes>> storeCartsIdPost({
    required String? id,
    required StorePostCartsCartReq? body,
  }) {
    generatedMapping.putIfAbsent(
        StoreCartsRes, () => StoreCartsRes.fromJsonFactory);

    return _storeCartsIdPost(id: id, body: body);
  }

  ///Update a Cart
  ///@param id The ID of the Cart.
  @Post(
    path: '/store/carts/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<StoreCartsRes>> _storeCartsIdPost({
    @Path('id') required String? id,
    @Body() required StorePostCartsCartReq? body,
  });

  ///Complete a Cart
  ///@param id The Cart ID.
  Future<chopper.Response<StoreCompleteCartRes>> storeCartsIdCompletePost(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        StoreCompleteCartRes, () => StoreCompleteCartRes.fromJsonFactory);

    return _storeCartsIdCompletePost(id: id);
  }

  ///Complete a Cart
  ///@param id The Cart ID.
  @Post(
    path: '/store/carts/{id}/complete',
    optionalBody: true,
  )
  Future<chopper.Response<StoreCompleteCartRes>> _storeCartsIdCompletePost(
      {@Path('id') required String? id});

  ///Remove Discount
  ///@param id The ID of the Cart.
  ///@param code The unique discount code.
  Future<chopper.Response<StoreCartsRes>> storeCartsIdDiscountsCodeDelete({
    required String? id,
    required String? code,
  }) {
    generatedMapping.putIfAbsent(
        StoreCartsRes, () => StoreCartsRes.fromJsonFactory);

    return _storeCartsIdDiscountsCodeDelete(id: id, code: code);
  }

  ///Remove Discount
  ///@param id The ID of the Cart.
  ///@param code The unique discount code.
  @Delete(path: '/store/carts/{id}/discounts/{code}')
  Future<chopper.Response<StoreCartsRes>> _storeCartsIdDiscountsCodeDelete({
    @Path('id') required String? id,
    @Path('code') required String? code,
  });

  ///Add a Line Item
  ///@param id The id of the Cart to add the Line Item to.
  Future<chopper.Response<StoreCartsRes>> storeCartsIdLineItemsPost({
    required String? id,
    required StorePostCartsCartLineItemsReq? body,
  }) {
    generatedMapping.putIfAbsent(
        StoreCartsRes, () => StoreCartsRes.fromJsonFactory);

    return _storeCartsIdLineItemsPost(id: id, body: body);
  }

  ///Add a Line Item
  ///@param id The id of the Cart to add the Line Item to.
  @Post(
    path: '/store/carts/{id}/line-items',
    optionalBody: true,
  )
  Future<chopper.Response<StoreCartsRes>> _storeCartsIdLineItemsPost({
    @Path('id') required String? id,
    @Body() required StorePostCartsCartLineItemsReq? body,
  });

  ///Update a Line Item
  ///@param id The ID of the Cart.
  ///@param line_id The ID of the Line Item.
  Future<chopper.Response<StoreCartsRes>> storeCartsIdLineItemsLineIdPost({
    required String? id,
    required String? lineId,
    required StorePostCartsCartLineItemsItemReq? body,
  }) {
    generatedMapping.putIfAbsent(
        StoreCartsRes, () => StoreCartsRes.fromJsonFactory);

    return _storeCartsIdLineItemsLineIdPost(id: id, lineId: lineId, body: body);
  }

  ///Update a Line Item
  ///@param id The ID of the Cart.
  ///@param line_id The ID of the Line Item.
  @Post(
    path: '/store/carts/{id}/line-items/{line_id}',
    optionalBody: true,
  )
  Future<chopper.Response<StoreCartsRes>> _storeCartsIdLineItemsLineIdPost({
    @Path('id') required String? id,
    @Path('line_id') required String? lineId,
    @Body() required StorePostCartsCartLineItemsItemReq? body,
  });

  ///Delete a Line Item
  ///@param id The ID of the Cart.
  ///@param line_id The ID of the Line Item.
  Future<chopper.Response<StoreCartsRes>> storeCartsIdLineItemsLineIdDelete({
    required String? id,
    required String? lineId,
  }) {
    generatedMapping.putIfAbsent(
        StoreCartsRes, () => StoreCartsRes.fromJsonFactory);

    return _storeCartsIdLineItemsLineIdDelete(id: id, lineId: lineId);
  }

  ///Delete a Line Item
  ///@param id The ID of the Cart.
  ///@param line_id The ID of the Line Item.
  @Delete(path: '/store/carts/{id}/line-items/{line_id}')
  Future<chopper.Response<StoreCartsRes>> _storeCartsIdLineItemsLineIdDelete({
    @Path('id') required String? id,
    @Path('line_id') required String? lineId,
  });

  ///Select a Payment Session
  ///@param id The ID of the Cart.
  Future<chopper.Response<StoreCartsRes>> storeCartsIdPaymentSessionPost({
    required String? id,
    required StorePostCartsCartPaymentSessionReq? body,
  }) {
    generatedMapping.putIfAbsent(
        StoreCartsRes, () => StoreCartsRes.fromJsonFactory);

    return _storeCartsIdPaymentSessionPost(id: id, body: body);
  }

  ///Select a Payment Session
  ///@param id The ID of the Cart.
  @Post(
    path: '/store/carts/{id}/payment-session',
    optionalBody: true,
  )
  Future<chopper.Response<StoreCartsRes>> _storeCartsIdPaymentSessionPost({
    @Path('id') required String? id,
    @Body() required StorePostCartsCartPaymentSessionReq? body,
  });

  ///Create Payment Sessions
  ///@param id The ID of the Cart.
  Future<chopper.Response<StoreCartsRes>> storeCartsIdPaymentSessionsPost(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        StoreCartsRes, () => StoreCartsRes.fromJsonFactory);

    return _storeCartsIdPaymentSessionsPost(id: id);
  }

  ///Create Payment Sessions
  ///@param id The ID of the Cart.
  @Post(
    path: '/store/carts/{id}/payment-sessions',
    optionalBody: true,
  )
  Future<chopper.Response<StoreCartsRes>> _storeCartsIdPaymentSessionsPost(
      {@Path('id') required String? id});

  ///Update a Payment Session
  ///@param id The ID of the Cart.
  ///@param provider_id The ID of the payment provider.
  Future<chopper.Response<StoreCartsRes>>
      storeCartsIdPaymentSessionsProviderIdPost({
    required String? id,
    required String? providerId,
    required StorePostCartsCartPaymentSessionUpdateReq? body,
  }) {
    generatedMapping.putIfAbsent(
        StoreCartsRes, () => StoreCartsRes.fromJsonFactory);

    return _storeCartsIdPaymentSessionsProviderIdPost(
        id: id, providerId: providerId, body: body);
  }

  ///Update a Payment Session
  ///@param id The ID of the Cart.
  ///@param provider_id The ID of the payment provider.
  @Post(
    path: '/store/carts/{id}/payment-sessions/{provider_id}',
    optionalBody: true,
  )
  Future<chopper.Response<StoreCartsRes>>
      _storeCartsIdPaymentSessionsProviderIdPost({
    @Path('id') required String? id,
    @Path('provider_id') required String? providerId,
    @Body() required StorePostCartsCartPaymentSessionUpdateReq? body,
  });

  ///Delete a Payment Session
  ///@param id The ID of the Cart.
  ///@param provider_id The ID of the Payment Provider used to create the Payment Session to be deleted.
  Future<chopper.Response<StoreCartsRes>>
      storeCartsIdPaymentSessionsProviderIdDelete({
    required String? id,
    required String? providerId,
  }) {
    generatedMapping.putIfAbsent(
        StoreCartsRes, () => StoreCartsRes.fromJsonFactory);

    return _storeCartsIdPaymentSessionsProviderIdDelete(
        id: id, providerId: providerId);
  }

  ///Delete a Payment Session
  ///@param id The ID of the Cart.
  ///@param provider_id The ID of the Payment Provider used to create the Payment Session to be deleted.
  @Delete(path: '/store/carts/{id}/payment-sessions/{provider_id}')
  Future<chopper.Response<StoreCartsRes>>
      _storeCartsIdPaymentSessionsProviderIdDelete({
    @Path('id') required String? id,
    @Path('provider_id') required String? providerId,
  });

  ///Refresh a Payment Session
  ///@param id The ID of the Cart.
  ///@param provider_id The ID of the Payment Provider that created the Payment Session to be refreshed.
  Future<chopper.Response<StoreCartsRes>>
      storeCartsIdPaymentSessionsProviderIdRefreshPost({
    required String? id,
    required String? providerId,
  }) {
    generatedMapping.putIfAbsent(
        StoreCartsRes, () => StoreCartsRes.fromJsonFactory);

    return _storeCartsIdPaymentSessionsProviderIdRefreshPost(
        id: id, providerId: providerId);
  }

  ///Refresh a Payment Session
  ///@param id The ID of the Cart.
  ///@param provider_id The ID of the Payment Provider that created the Payment Session to be refreshed.
  @Post(
    path: '/store/carts/{id}/payment-sessions/{provider_id}/refresh',
    optionalBody: true,
  )
  Future<chopper.Response<StoreCartsRes>>
      _storeCartsIdPaymentSessionsProviderIdRefreshPost({
    @Path('id') required String? id,
    @Path('provider_id') required String? providerId,
  });

  ///Add Shipping Method
  ///@param id The cart ID.
  Future<chopper.Response<StoreCartsRes>> storeCartsIdShippingMethodsPost({
    required String? id,
    required StorePostCartsCartShippingMethodReq? body,
  }) {
    generatedMapping.putIfAbsent(
        StoreCartsRes, () => StoreCartsRes.fromJsonFactory);

    return _storeCartsIdShippingMethodsPost(id: id, body: body);
  }

  ///Add Shipping Method
  ///@param id The cart ID.
  @Post(
    path: '/store/carts/{id}/shipping-methods',
    optionalBody: true,
  )
  Future<chopper.Response<StoreCartsRes>> _storeCartsIdShippingMethodsPost({
    @Path('id') required String? id,
    @Body() required StorePostCartsCartShippingMethodReq? body,
  });

  ///Calculate Cart Taxes
  ///@param id The Cart ID.
  Future<chopper.Response<StoreCartsRes>> storeCartsIdTaxesPost(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        StoreCartsRes, () => StoreCartsRes.fromJsonFactory);

    return _storeCartsIdTaxesPost(id: id);
  }

  ///Calculate Cart Taxes
  ///@param id The Cart ID.
  @Post(
    path: '/store/carts/{id}/taxes',
    optionalBody: true,
  )
  Future<chopper.Response<StoreCartsRes>> _storeCartsIdTaxesPost(
      {@Path('id') required String? id});

  ///List Collections
  ///@param offset The number of product collections to skip when retrieving the product collections.
  ///@param limit Limit the number of product collections returned.
  ///@param handle Filter by handles
  ///@param created_at Filter by a creation date range.
  ///@param updated_at Filter by an update date range.
  Future<chopper.Response<StoreCollectionsListRes>> storeCollectionsGet({
    int? offset,
    int? limit,
    List<String>? handle,
    Object? createdAt,
    Object? updatedAt,
  }) {
    generatedMapping.putIfAbsent(
        StoreCollectionsListRes, () => StoreCollectionsListRes.fromJsonFactory);

    return _storeCollectionsGet(
        offset: offset,
        limit: limit,
        handle: handle,
        createdAt: createdAt,
        updatedAt: updatedAt);
  }

  ///List Collections
  ///@param offset The number of product collections to skip when retrieving the product collections.
  ///@param limit Limit the number of product collections returned.
  ///@param handle Filter by handles
  ///@param created_at Filter by a creation date range.
  ///@param updated_at Filter by an update date range.
  @Get(path: '/store/collections')
  Future<chopper.Response<StoreCollectionsListRes>> _storeCollectionsGet({
    @Query('offset') int? offset,
    @Query('limit') int? limit,
    @Query('handle') List<String>? handle,
    @Query('created_at') Object? createdAt,
    @Query('updated_at') Object? updatedAt,
  });

  ///Get a Collection
  ///@param id The id of the Product Collection
  Future<chopper.Response<StoreCollectionsRes>> storeCollectionsIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        StoreCollectionsRes, () => StoreCollectionsRes.fromJsonFactory);

    return _storeCollectionsIdGet(id: id);
  }

  ///Get a Collection
  ///@param id The id of the Product Collection
  @Get(path: '/store/collections/{id}')
  Future<chopper.Response<StoreCollectionsRes>> _storeCollectionsIdGet(
      {@Path('id') required String? id});

  ///Create a Customer
  Future<chopper.Response<StoreCustomersRes>> storeCustomersPost(
      {required StorePostCustomersReq? body}) {
    generatedMapping.putIfAbsent(
        StoreCustomersRes, () => StoreCustomersRes.fromJsonFactory);

    return _storeCustomersPost(body: body);
  }

  ///Create a Customer
  @Post(
    path: '/store/customers',
    optionalBody: true,
  )
  Future<chopper.Response<StoreCustomersRes>> _storeCustomersPost(
      {@Body() required StorePostCustomersReq? body});

  ///Get a Customer
  Future<chopper.Response<StoreCustomersRes>> storeCustomersMeGet() {
    generatedMapping.putIfAbsent(
        StoreCustomersRes, () => StoreCustomersRes.fromJsonFactory);

    return _storeCustomersMeGet();
  }

  ///Get a Customer
  @Get(path: '/store/customers/me')
  Future<chopper.Response<StoreCustomersRes>> _storeCustomersMeGet();

  ///Update Customer
  Future<chopper.Response<StoreCustomersRes>> storeCustomersMePost(
      {required StorePostCustomersCustomerReq? body}) {
    generatedMapping.putIfAbsent(
        StoreCustomersRes, () => StoreCustomersRes.fromJsonFactory);

    return _storeCustomersMePost(body: body);
  }

  ///Update Customer
  @Post(
    path: '/store/customers/me',
    optionalBody: true,
  )
  Future<chopper.Response<StoreCustomersRes>> _storeCustomersMePost(
      {@Body() required StorePostCustomersCustomerReq? body});

  ///Add a Shipping Address
  Future<chopper.Response<StoreCustomersRes>> storeCustomersMeAddressesPost(
      {required StorePostCustomersCustomerAddressesReq? body}) {
    generatedMapping.putIfAbsent(
        StoreCustomersRes, () => StoreCustomersRes.fromJsonFactory);

    return _storeCustomersMeAddressesPost(body: body);
  }

  ///Add a Shipping Address
  @Post(
    path: '/store/customers/me/addresses',
    optionalBody: true,
  )
  Future<chopper.Response<StoreCustomersRes>> _storeCustomersMeAddressesPost(
      {@Body() required StorePostCustomersCustomerAddressesReq? body});

  ///Update a Shipping Address
  ///@param address_id The ID of the Address.
  Future<chopper.Response<StoreCustomersRes>>
      storeCustomersMeAddressesAddressIdPost({
    required String? addressId,
    required StorePostCustomersCustomerAddressesAddressReq? body,
  }) {
    generatedMapping.putIfAbsent(
        StoreCustomersRes, () => StoreCustomersRes.fromJsonFactory);

    return _storeCustomersMeAddressesAddressIdPost(
        addressId: addressId, body: body);
  }

  ///Update a Shipping Address
  ///@param address_id The ID of the Address.
  @Post(
    path: '/store/customers/me/addresses/{address_id}',
    optionalBody: true,
  )
  Future<chopper.Response<StoreCustomersRes>>
      _storeCustomersMeAddressesAddressIdPost({
    @Path('address_id') required String? addressId,
    @Body() required StorePostCustomersCustomerAddressesAddressReq? body,
  });

  ///Delete an Address
  ///@param address_id The id of the Address to remove.
  Future<chopper.Response<StoreCustomersRes>>
      storeCustomersMeAddressesAddressIdDelete({required String? addressId}) {
    generatedMapping.putIfAbsent(
        StoreCustomersRes, () => StoreCustomersRes.fromJsonFactory);

    return _storeCustomersMeAddressesAddressIdDelete(addressId: addressId);
  }

  ///Delete an Address
  ///@param address_id The id of the Address to remove.
  @Delete(path: '/store/customers/me/addresses/{address_id}')
  Future<chopper.Response<StoreCustomersRes>>
      _storeCustomersMeAddressesAddressIdDelete(
          {@Path('address_id') required String? addressId});

  ///List Orders
  ///@param q term to search orders' display ID, email, shipping address's first name, customer's first name, customer's last name, and customer's phone number.
  ///@param id Filter by ID.
  ///@param status Filter by status.
  ///@param fulfillment_status Fulfillment status to search for.
  ///@param payment_status Payment status to search for.
  ///@param display_id Filter by display ID.
  ///@param cart_id Filter by cart ID.
  ///@param email Filter by email.
  ///@param region_id Filter by region ID.
  ///@param currency_code Filter by the 3 character ISO currency code of the order.
  ///@param tax_rate Filter by tax rate.
  ///@param created_at Filter by a creation date range.
  ///@param updated_at Filter by an update date range.
  ///@param canceled_at Filter by a cancelation date range.
  ///@param limit Limit the number of orders returned.
  ///@param offset The number of orders to skip when retrieving the orders.
  ///@param expand Comma-separated relations that should be expanded in the returned orders.
  ///@param fields Comma-separated fields that should be included in the returned orders.
  Future<chopper.Response<StoreCustomersListOrdersRes>>
      storeCustomersMeOrdersGet({
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
    generatedMapping.putIfAbsent(StoreCustomersListOrdersRes,
        () => StoreCustomersListOrdersRes.fromJsonFactory);

    return _storeCustomersMeOrdersGet(
        q: q,
        id: id,
        status: status,
        fulfillmentStatus: fulfillmentStatus,
        paymentStatus: paymentStatus,
        displayId: displayId,
        cartId: cartId,
        email: email,
        regionId: regionId,
        currencyCode: currencyCode,
        taxRate: taxRate,
        createdAt: createdAt,
        updatedAt: updatedAt,
        canceledAt: canceledAt,
        limit: limit,
        offset: offset,
        expand: expand,
        fields: fields);
  }

  ///List Orders
  ///@param q term to search orders' display ID, email, shipping address's first name, customer's first name, customer's last name, and customer's phone number.
  ///@param id Filter by ID.
  ///@param status Filter by status.
  ///@param fulfillment_status Fulfillment status to search for.
  ///@param payment_status Payment status to search for.
  ///@param display_id Filter by display ID.
  ///@param cart_id Filter by cart ID.
  ///@param email Filter by email.
  ///@param region_id Filter by region ID.
  ///@param currency_code Filter by the 3 character ISO currency code of the order.
  ///@param tax_rate Filter by tax rate.
  ///@param created_at Filter by a creation date range.
  ///@param updated_at Filter by an update date range.
  ///@param canceled_at Filter by a cancelation date range.
  ///@param limit Limit the number of orders returned.
  ///@param offset The number of orders to skip when retrieving the orders.
  ///@param expand Comma-separated relations that should be expanded in the returned orders.
  ///@param fields Comma-separated fields that should be included in the returned orders.
  @Get(path: '/store/customers/me/orders')
  Future<chopper.Response<StoreCustomersListOrdersRes>>
      _storeCustomersMeOrdersGet({
    @Query('q') String? q,
    @Query('id') String? id,
    @Query('status') List<String>? status,
    @Query('fulfillment_status') List<String>? fulfillmentStatus,
    @Query('payment_status') List<String>? paymentStatus,
    @Query('display_id') String? displayId,
    @Query('cart_id') String? cartId,
    @Query('email') String? email,
    @Query('region_id') String? regionId,
    @Query('currency_code') String? currencyCode,
    @Query('tax_rate') String? taxRate,
    @Query('created_at') Object? createdAt,
    @Query('updated_at') Object? updatedAt,
    @Query('canceled_at') Object? canceledAt,
    @Query('limit') int? limit,
    @Query('offset') int? offset,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
  });

  ///Get Saved Payment Methods
  Future<chopper.Response<StoreCustomersListPaymentMethodsRes>>
      storeCustomersMePaymentMethodsGet() {
    generatedMapping.putIfAbsent(StoreCustomersListPaymentMethodsRes,
        () => StoreCustomersListPaymentMethodsRes.fromJsonFactory);

    return _storeCustomersMePaymentMethodsGet();
  }

  ///Get Saved Payment Methods
  @Get(path: '/store/customers/me/payment-methods')
  Future<chopper.Response<StoreCustomersListPaymentMethodsRes>>
      _storeCustomersMePaymentMethodsGet();

  ///Reset Password
  Future<chopper.Response<StoreCustomersResetPasswordRes>>
      storeCustomersPasswordResetPost(
          {required StorePostCustomersResetPasswordReq? body}) {
    generatedMapping.putIfAbsent(StoreCustomersResetPasswordRes,
        () => StoreCustomersResetPasswordRes.fromJsonFactory);

    return _storeCustomersPasswordResetPost(body: body);
  }

  ///Reset Password
  @Post(
    path: '/store/customers/password-reset',
    optionalBody: true,
  )
  Future<chopper.Response<StoreCustomersResetPasswordRes>>
      _storeCustomersPasswordResetPost(
          {@Body() required StorePostCustomersResetPasswordReq? body});

  ///Request Password Reset
  Future<chopper.Response> storeCustomersPasswordTokenPost(
      {required StorePostCustomersCustomerPasswordTokenReq? body}) {
    return _storeCustomersPasswordTokenPost(body: body);
  }

  ///Request Password Reset
  @Post(
    path: '/store/customers/password-token',
    optionalBody: true,
  )
  Future<chopper.Response> _storeCustomersPasswordTokenPost(
      {@Body() required StorePostCustomersCustomerPasswordTokenReq? body});

  ///Get Gift Card by Code
  ///@param code The unique Gift Card code.
  Future<chopper.Response<StoreGiftCardsRes>> storeGiftCardsCodeGet(
      {required String? code}) {
    generatedMapping.putIfAbsent(
        StoreGiftCardsRes, () => StoreGiftCardsRes.fromJsonFactory);

    return _storeGiftCardsCodeGet(code: code);
  }

  ///Get Gift Card by Code
  ///@param code The unique Gift Card code.
  @Get(path: '/store/gift-cards/{code}')
  Future<chopper.Response<StoreGiftCardsRes>> _storeGiftCardsCodeGet(
      {@Path('code') required String? code});

  ///Retrieve an Order Edit
  ///@param id The ID of the OrderEdit.
  Future<chopper.Response<StoreOrderEditsRes>> storeOrderEditsIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        StoreOrderEditsRes, () => StoreOrderEditsRes.fromJsonFactory);

    return _storeOrderEditsIdGet(id: id);
  }

  ///Retrieve an Order Edit
  ///@param id The ID of the OrderEdit.
  @Get(path: '/store/order-edits/{id}')
  Future<chopper.Response<StoreOrderEditsRes>> _storeOrderEditsIdGet(
      {@Path('id') required String? id});

  ///Complete an Order Edit
  ///@param id The ID of the Order Edit.
  Future<chopper.Response<StoreOrderEditsRes>> storeOrderEditsIdCompletePost(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        StoreOrderEditsRes, () => StoreOrderEditsRes.fromJsonFactory);

    return _storeOrderEditsIdCompletePost(id: id);
  }

  ///Complete an Order Edit
  ///@param id The ID of the Order Edit.
  @Post(
    path: '/store/order-edits/{id}/complete',
    optionalBody: true,
  )
  Future<chopper.Response<StoreOrderEditsRes>> _storeOrderEditsIdCompletePost(
      {@Path('id') required String? id});

  ///Decline an Order Edit
  ///@param id The ID of the OrderEdit.
  Future<chopper.Response<StoreOrderEditsRes>> storeOrderEditsIdDeclinePost({
    required String? id,
    required StorePostOrderEditsOrderEditDecline? body,
  }) {
    generatedMapping.putIfAbsent(
        StoreOrderEditsRes, () => StoreOrderEditsRes.fromJsonFactory);

    return _storeOrderEditsIdDeclinePost(id: id, body: body);
  }

  ///Decline an Order Edit
  ///@param id The ID of the OrderEdit.
  @Post(
    path: '/store/order-edits/{id}/decline',
    optionalBody: true,
  )
  Future<chopper.Response<StoreOrderEditsRes>> _storeOrderEditsIdDeclinePost({
    @Path('id') required String? id,
    @Body() required StorePostOrderEditsOrderEditDecline? body,
  });

  ///Look Up an Order
  ///@param display_id Filter by ID.
  ///@param fields Comma-separated fields that should be expanded in the returned order.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param email Filter by email.
  ///@param shipping_address Filter by the shipping address's postal code.
  Future<chopper.Response<StoreOrdersRes>> storeOrdersGet({
    required num? displayId,
    String? fields,
    String? expand,
    required String? email,
    Object? shippingAddress,
  }) {
    generatedMapping.putIfAbsent(
        StoreOrdersRes, () => StoreOrdersRes.fromJsonFactory);

    return _storeOrdersGet(
        displayId: displayId,
        fields: fields,
        expand: expand,
        email: email,
        shippingAddress: shippingAddress);
  }

  ///Look Up an Order
  ///@param display_id Filter by ID.
  ///@param fields Comma-separated fields that should be expanded in the returned order.
  ///@param expand Comma-separated relations that should be expanded in the returned order.
  ///@param email Filter by email.
  ///@param shipping_address Filter by the shipping address's postal code.
  @Get(path: '/store/orders')
  Future<chopper.Response<StoreOrdersRes>> _storeOrdersGet({
    @Query('display_id') required num? displayId,
    @Query('fields') String? fields,
    @Query('expand') String? expand,
    @Query('email') required String? email,
    @Query('shipping_address') Object? shippingAddress,
  });

  ///Claim Order
  Future<chopper.Response> storeOrdersBatchCustomerTokenPost(
      {required StorePostCustomersCustomerOrderClaimReq? body}) {
    return _storeOrdersBatchCustomerTokenPost(body: body);
  }

  ///Claim Order
  @Post(
    path: '/store/orders/batch/customer/token',
    optionalBody: true,
  )
  Future<chopper.Response> _storeOrdersBatchCustomerTokenPost(
      {@Body() required StorePostCustomersCustomerOrderClaimReq? body});

  ///Get by Cart ID
  ///@param cart_id The ID of Cart.
  Future<chopper.Response<StoreOrdersRes>> storeOrdersCartCartIdGet(
      {required String? cartId}) {
    generatedMapping.putIfAbsent(
        StoreOrdersRes, () => StoreOrdersRes.fromJsonFactory);

    return _storeOrdersCartCartIdGet(cartId: cartId);
  }

  ///Get by Cart ID
  ///@param cart_id The ID of Cart.
  @Get(path: '/store/orders/cart/{cart_id}')
  Future<chopper.Response<StoreOrdersRes>> _storeOrdersCartCartIdGet(
      {@Path('cart_id') required String? cartId});

  ///Verify Order Claim
  Future<chopper.Response> storeOrdersCustomerConfirmPost(
      {required StorePostCustomersCustomerAcceptClaimReq? body}) {
    return _storeOrdersCustomerConfirmPost(body: body);
  }

  ///Verify Order Claim
  @Post(
    path: '/store/orders/customer/confirm',
    optionalBody: true,
  )
  Future<chopper.Response> _storeOrdersCustomerConfirmPost(
      {@Body() required StorePostCustomersCustomerAcceptClaimReq? body});

  ///Get an Order
  ///@param id The ID of the Order.
  ///@param fields Comma-separated fields that should be expanded in the returned order.
  ///@param expand Comma-separated relations that should be included in the returned order.
  Future<chopper.Response<StoreOrdersRes>> storeOrdersIdGet({
    required String? id,
    String? fields,
    String? expand,
  }) {
    generatedMapping.putIfAbsent(
        StoreOrdersRes, () => StoreOrdersRes.fromJsonFactory);

    return _storeOrdersIdGet(id: id, fields: fields, expand: expand);
  }

  ///Get an Order
  ///@param id The ID of the Order.
  ///@param fields Comma-separated fields that should be expanded in the returned order.
  ///@param expand Comma-separated relations that should be included in the returned order.
  @Get(path: '/store/orders/{id}')
  Future<chopper.Response<StoreOrdersRes>> _storeOrdersIdGet({
    @Path('id') required String? id,
    @Query('fields') String? fields,
    @Query('expand') String? expand,
  });

  ///Get a PaymentCollection
  ///@param id The ID of the PaymentCollection.
  ///@param fields Comma-separated fields that should be expanded in the returned payment collection.
  ///@param expand Comma-separated relations that should be expanded in the returned payment collection.
  Future<chopper.Response<StorePaymentCollectionsRes>>
      storePaymentCollectionsIdGet({
    required String? id,
    String? fields,
    String? expand,
  }) {
    generatedMapping.putIfAbsent(StorePaymentCollectionsRes,
        () => StorePaymentCollectionsRes.fromJsonFactory);

    return _storePaymentCollectionsIdGet(
        id: id, fields: fields, expand: expand);
  }

  ///Get a PaymentCollection
  ///@param id The ID of the PaymentCollection.
  ///@param fields Comma-separated fields that should be expanded in the returned payment collection.
  ///@param expand Comma-separated relations that should be expanded in the returned payment collection.
  @Get(path: '/store/payment-collections/{id}')
  Future<chopper.Response<StorePaymentCollectionsRes>>
      _storePaymentCollectionsIdGet({
    @Path('id') required String? id,
    @Query('fields') String? fields,
    @Query('expand') String? expand,
  });

  ///Create a Payment Session
  ///@param id The ID of the Payment Collection.
  Future<chopper.Response<StorePaymentCollectionsRes>>
      storePaymentCollectionsIdSessionsPost({
    required String? id,
    required StorePaymentCollectionSessionsReq? body,
  }) {
    generatedMapping.putIfAbsent(StorePaymentCollectionsRes,
        () => StorePaymentCollectionsRes.fromJsonFactory);

    return _storePaymentCollectionsIdSessionsPost(id: id, body: body);
  }

  ///Create a Payment Session
  ///@param id The ID of the Payment Collection.
  @Post(
    path: '/store/payment-collections/{id}/sessions',
    optionalBody: true,
  )
  Future<chopper.Response<StorePaymentCollectionsRes>>
      _storePaymentCollectionsIdSessionsPost({
    @Path('id') required String? id,
    @Body() required StorePaymentCollectionSessionsReq? body,
  });

  ///Manage Payment Sessions
  ///@param id The ID of the Payment Collection.
  Future<chopper.Response<StorePaymentCollectionsRes>>
      storePaymentCollectionsIdSessionsBatchPost({
    required String? id,
    required StorePostPaymentCollectionsBatchSessionsReq? body,
  }) {
    generatedMapping.putIfAbsent(StorePaymentCollectionsRes,
        () => StorePaymentCollectionsRes.fromJsonFactory);

    return _storePaymentCollectionsIdSessionsBatchPost(id: id, body: body);
  }

  ///Manage Payment Sessions
  ///@param id The ID of the Payment Collection.
  @Post(
    path: '/store/payment-collections/{id}/sessions/batch',
    optionalBody: true,
  )
  Future<chopper.Response<StorePaymentCollectionsRes>>
      _storePaymentCollectionsIdSessionsBatchPost({
    @Path('id') required String? id,
    @Body() required StorePostPaymentCollectionsBatchSessionsReq? body,
  });

  ///Authorize Payment Sessions
  ///@param id The ID of the Payment Collections.
  Future<chopper.Response<StorePaymentCollectionsRes>>
      storePaymentCollectionsIdSessionsBatchAuthorizePost({
    required String? id,
    required StorePostPaymentCollectionsBatchSessionsAuthorizeReq? body,
  }) {
    generatedMapping.putIfAbsent(StorePaymentCollectionsRes,
        () => StorePaymentCollectionsRes.fromJsonFactory);

    return _storePaymentCollectionsIdSessionsBatchAuthorizePost(
        id: id, body: body);
  }

  ///Authorize Payment Sessions
  ///@param id The ID of the Payment Collections.
  @Post(
    path: '/store/payment-collections/{id}/sessions/batch/authorize',
    optionalBody: true,
  )
  Future<chopper.Response<StorePaymentCollectionsRes>>
      _storePaymentCollectionsIdSessionsBatchAuthorizePost({
    @Path('id') required String? id,
    @Body() required StorePostPaymentCollectionsBatchSessionsAuthorizeReq? body,
  });

  ///Refresh a Payment Session
  ///@param id The id of the PaymentCollection.
  ///@param session_id The id of the Payment Session to be refreshed.
  Future<chopper.Response<StorePaymentCollectionsSessionRes>>
      storePaymentCollectionsIdSessionsSessionIdPost({
    required String? id,
    required String? sessionId,
  }) {
    generatedMapping.putIfAbsent(StorePaymentCollectionsSessionRes,
        () => StorePaymentCollectionsSessionRes.fromJsonFactory);

    return _storePaymentCollectionsIdSessionsSessionIdPost(
        id: id, sessionId: sessionId);
  }

  ///Refresh a Payment Session
  ///@param id The id of the PaymentCollection.
  ///@param session_id The id of the Payment Session to be refreshed.
  @Post(
    path: '/store/payment-collections/{id}/sessions/{session_id}',
    optionalBody: true,
  )
  Future<chopper.Response<StorePaymentCollectionsSessionRes>>
      _storePaymentCollectionsIdSessionsSessionIdPost({
    @Path('id') required String? id,
    @Path('session_id') required String? sessionId,
  });

  ///Authorize Payment Session
  ///@param id The ID of the Payment Collection.
  ///@param session_id The ID of the Payment Session.
  Future<chopper.Response<StorePaymentCollectionsSessionRes>>
      storePaymentCollectionsIdSessionsSessionIdAuthorizePost({
    required String? id,
    required String? sessionId,
  }) {
    generatedMapping.putIfAbsent(StorePaymentCollectionsSessionRes,
        () => StorePaymentCollectionsSessionRes.fromJsonFactory);

    return _storePaymentCollectionsIdSessionsSessionIdAuthorizePost(
        id: id, sessionId: sessionId);
  }

  ///Authorize Payment Session
  ///@param id The ID of the Payment Collection.
  ///@param session_id The ID of the Payment Session.
  @Post(
    path: '/store/payment-collections/{id}/sessions/{session_id}/authorize',
    optionalBody: true,
  )
  Future<chopper.Response<StorePaymentCollectionsSessionRes>>
      _storePaymentCollectionsIdSessionsSessionIdAuthorizePost({
    @Path('id') required String? id,
    @Path('session_id') required String? sessionId,
  });

  ///List Product Categories
  ///@param q term used to search product category's names and handles.
  ///@param handle Filter by handle.
  ///@param parent_category_id Filter by the ID of a parent category. Only children of the provided parent category are retrieved.
  ///@param include_descendants_tree Whether all nested categories inside a category should be retrieved.
  ///@param offset The number of product categories to skip when retrieving the product categories.
  ///@param limit Limit the number of product categories returned.
  ///@param expand Comma-separated relations that should be expanded in the returned product categories.
  ///@param fields Comma-separated fields that should be included in the returned product categories.
  Future<chopper.Response<StoreGetProductCategoriesRes>>
      storeProductCategoriesGet({
    String? q,
    String? handle,
    String? parentCategoryId,
    bool? includeDescendantsTree,
    int? offset,
    int? limit,
    String? expand,
    String? fields,
  }) {
    generatedMapping.putIfAbsent(StoreGetProductCategoriesRes,
        () => StoreGetProductCategoriesRes.fromJsonFactory);

    return _storeProductCategoriesGet(
        q: q,
        handle: handle,
        parentCategoryId: parentCategoryId,
        includeDescendantsTree: includeDescendantsTree,
        offset: offset,
        limit: limit,
        expand: expand,
        fields: fields);
  }

  ///List Product Categories
  ///@param q term used to search product category's names and handles.
  ///@param handle Filter by handle.
  ///@param parent_category_id Filter by the ID of a parent category. Only children of the provided parent category are retrieved.
  ///@param include_descendants_tree Whether all nested categories inside a category should be retrieved.
  ///@param offset The number of product categories to skip when retrieving the product categories.
  ///@param limit Limit the number of product categories returned.
  ///@param expand Comma-separated relations that should be expanded in the returned product categories.
  ///@param fields Comma-separated fields that should be included in the returned product categories.
  @Get(path: '/store/product-categories')
  Future<chopper.Response<StoreGetProductCategoriesRes>>
      _storeProductCategoriesGet({
    @Query('q') String? q,
    @Query('handle') String? handle,
    @Query('parent_category_id') String? parentCategoryId,
    @Query('include_descendants_tree') bool? includeDescendantsTree,
    @Query('offset') int? offset,
    @Query('limit') int? limit,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
  });

  ///Get a Product Category
  ///@param id The ID of the Product Category
  ///@param fields Comma-separated fields that should be expanded in the returned product category.
  ///@param expand Comma-separated relations that should be expanded in the returned product category.
  Future<chopper.Response<StoreGetProductCategoriesCategoryRes>>
      storeProductCategoriesIdGet({
    required String? id,
    String? fields,
    String? expand,
  }) {
    generatedMapping.putIfAbsent(StoreGetProductCategoriesCategoryRes,
        () => StoreGetProductCategoriesCategoryRes.fromJsonFactory);

    return _storeProductCategoriesIdGet(id: id, fields: fields, expand: expand);
  }

  ///Get a Product Category
  ///@param id The ID of the Product Category
  ///@param fields Comma-separated fields that should be expanded in the returned product category.
  ///@param expand Comma-separated relations that should be expanded in the returned product category.
  @Get(path: '/store/product-categories/{id}')
  Future<chopper.Response<StoreGetProductCategoriesCategoryRes>>
      _storeProductCategoriesIdGet({
    @Path('id') required String? id,
    @Query('fields') String? fields,
    @Query('expand') String? expand,
  });

  ///List Product Tags
  ///@param limit Limit the number of product tags returned.
  ///@param offset The number of product tags to skip when retrieving the product tags.
  ///@param order A product-tag field to sort-order the retrieved product tags by.
  ///@param discount_condition_id Filter by the ID of a discount condition. When provided, only tags that the discount condition applies for will be retrieved.
  ///@param value Filter by tag values.
  ///@param id Filter by IDs.
  ///@param q term to search product tag's value.
  ///@param created_at Filter by a creation date range.
  ///@param updated_at Filter by an update date range.
  Future<chopper.Response<StoreProductTagsListRes>> storeProductTagsGet({
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
    generatedMapping.putIfAbsent(
        StoreProductTagsListRes, () => StoreProductTagsListRes.fromJsonFactory);

    return _storeProductTagsGet(
        limit: limit,
        offset: offset,
        order: order,
        discountConditionId: discountConditionId,
        value: value,
        id: id,
        q: q,
        createdAt: createdAt,
        updatedAt: updatedAt);
  }

  ///List Product Tags
  ///@param limit Limit the number of product tags returned.
  ///@param offset The number of product tags to skip when retrieving the product tags.
  ///@param order A product-tag field to sort-order the retrieved product tags by.
  ///@param discount_condition_id Filter by the ID of a discount condition. When provided, only tags that the discount condition applies for will be retrieved.
  ///@param value Filter by tag values.
  ///@param id Filter by IDs.
  ///@param q term to search product tag's value.
  ///@param created_at Filter by a creation date range.
  ///@param updated_at Filter by an update date range.
  @Get(path: '/store/product-tags')
  Future<chopper.Response<StoreProductTagsListRes>> _storeProductTagsGet({
    @Query('limit') int? limit,
    @Query('offset') int? offset,
    @Query('order') String? order,
    @Query('discount_condition_id') String? discountConditionId,
    @Query('value') List<String>? value,
    @Query('id') List<String>? id,
    @Query('q') String? q,
    @Query('created_at') Object? createdAt,
    @Query('updated_at') Object? updatedAt,
  });

  ///List Product Types
  ///@param limit Limit the number of product types returned.
  ///@param offset The number of product types to skip when retrieving the product types.
  ///@param order A product-type field to sort-order the retrieved product types by.
  ///@param discount_condition_id Filter by the ID of a discount condition. When provided, only types that the discount condition applies for will be retrieved.
  ///@param value Filter by type values.
  ///@param id Filter by IDs.
  ///@param q term to search product type's value.
  ///@param created_at Filter by a creation date range.
  ///@param updated_at Filter by an update date range.
  Future<chopper.Response<StoreProductTypesListRes>> storeProductTypesGet({
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
    generatedMapping.putIfAbsent(StoreProductTypesListRes,
        () => StoreProductTypesListRes.fromJsonFactory);

    return _storeProductTypesGet(
        limit: limit,
        offset: offset,
        order: order,
        discountConditionId: discountConditionId,
        value: value,
        id: id,
        q: q,
        createdAt: createdAt,
        updatedAt: updatedAt);
  }

  ///List Product Types
  ///@param limit Limit the number of product types returned.
  ///@param offset The number of product types to skip when retrieving the product types.
  ///@param order A product-type field to sort-order the retrieved product types by.
  ///@param discount_condition_id Filter by the ID of a discount condition. When provided, only types that the discount condition applies for will be retrieved.
  ///@param value Filter by type values.
  ///@param id Filter by IDs.
  ///@param q term to search product type's value.
  ///@param created_at Filter by a creation date range.
  ///@param updated_at Filter by an update date range.
  @Get(path: '/store/product-types')
  Future<chopper.Response<StoreProductTypesListRes>> _storeProductTypesGet({
    @Query('limit') int? limit,
    @Query('offset') int? offset,
    @Query('order') String? order,
    @Query('discount_condition_id') String? discountConditionId,
    @Query('value') List<String>? value,
    @Query('id') List<String>? id,
    @Query('q') String? q,
    @Query('created_at') Object? createdAt,
    @Query('updated_at') Object? updatedAt,
  });

  ///List Products
  ///@param q term used to search products' title, description, variant's title, variant's sku, and collection's title.
  ///@param id Filter by IDs.
  ///@param sales_channel_id Filter by sales channel IDs. When provided, only products available in the selected sales channels are retrieved. Alternatively, you can pass a publishable API key in the request header and this will have the same effect.
  ///@param collection_id Filter by product collection IDs. When provided, only products that belong to the specified product collections are retrieved.
  ///@param type_id Filter by product type IDs. When provided, only products that belong to the specified product types are retrieved.
  ///@param tags Filter by product tag IDs. When provided, only products that belong to the specified product tags are retrieved.
  ///@param title Filter by title.
  ///@param description Filter by description
  ///@param handle Filter by handle.
  ///@param is_giftcard Whether to retrieve regular products or gift-card products.
  ///@param created_at Filter by a creation date range.
  ///@param updated_at Filter by an update date range.
  ///@param category_id Filter by product category IDs. When provided, only products that belong to the specified product categories are retrieved.
  ///@param include_category_children Whether to include child product categories when filtering using the `category_id` field.
  ///@param offset The number of products to skip when retrieving the products.
  ///@param limit Limit the number of products returned.
  ///@param expand Comma-separated relations that should be expanded in the returned products.
  ///@param fields Comma-separated fields that should be included in the returned products.
  ///@param order A product field to sort-order the retrieved products by.
  ///@param cart_id The ID of the cart. This is useful for accurate pricing based on the cart's context.
  ///@param region_id The ID of the region. This is useful for accurate pricing based on the selected region.
  ///@param currency_code A 3 character ISO currency code. This is useful for accurate pricing based on the selected currency.
  Future<chopper.Response<StoreProductsListRes>> storeProductsGet({
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
    generatedMapping.putIfAbsent(
        StoreProductsListRes, () => StoreProductsListRes.fromJsonFactory);

    return _storeProductsGet(
        q: q,
        id: id,
        salesChannelId: salesChannelId,
        collectionId: collectionId,
        typeId: typeId,
        tags: tags,
        title: title,
        description: description,
        handle: handle,
        isGiftcard: isGiftcard,
        createdAt: createdAt,
        updatedAt: updatedAt,
        categoryId: categoryId,
        includeCategoryChildren: includeCategoryChildren,
        offset: offset,
        limit: limit,
        expand: expand,
        fields: fields,
        order: order,
        cartId: cartId,
        regionId: regionId,
        currencyCode: currencyCode);
  }

  ///List Products
  ///@param q term used to search products' title, description, variant's title, variant's sku, and collection's title.
  ///@param id Filter by IDs.
  ///@param sales_channel_id Filter by sales channel IDs. When provided, only products available in the selected sales channels are retrieved. Alternatively, you can pass a publishable API key in the request header and this will have the same effect.
  ///@param collection_id Filter by product collection IDs. When provided, only products that belong to the specified product collections are retrieved.
  ///@param type_id Filter by product type IDs. When provided, only products that belong to the specified product types are retrieved.
  ///@param tags Filter by product tag IDs. When provided, only products that belong to the specified product tags are retrieved.
  ///@param title Filter by title.
  ///@param description Filter by description
  ///@param handle Filter by handle.
  ///@param is_giftcard Whether to retrieve regular products or gift-card products.
  ///@param created_at Filter by a creation date range.
  ///@param updated_at Filter by an update date range.
  ///@param category_id Filter by product category IDs. When provided, only products that belong to the specified product categories are retrieved.
  ///@param include_category_children Whether to include child product categories when filtering using the `category_id` field.
  ///@param offset The number of products to skip when retrieving the products.
  ///@param limit Limit the number of products returned.
  ///@param expand Comma-separated relations that should be expanded in the returned products.
  ///@param fields Comma-separated fields that should be included in the returned products.
  ///@param order A product field to sort-order the retrieved products by.
  ///@param cart_id The ID of the cart. This is useful for accurate pricing based on the cart's context.
  ///@param region_id The ID of the region. This is useful for accurate pricing based on the selected region.
  ///@param currency_code A 3 character ISO currency code. This is useful for accurate pricing based on the selected currency.
  @Get(path: '/store/products')
  Future<chopper.Response<StoreProductsListRes>> _storeProductsGet({
    @Query('q') String? q,
    @Query('id') Object? id,
    @Query('sales_channel_id') List<String>? salesChannelId,
    @Query('collection_id') List<String>? collectionId,
    @Query('type_id') List<String>? typeId,
    @Query('tags') List<String>? tags,
    @Query('title') String? title,
    @Query('description') String? description,
    @Query('handle') String? handle,
    @Query('is_giftcard') bool? isGiftcard,
    @Query('created_at') Object? createdAt,
    @Query('updated_at') Object? updatedAt,
    @Query('category_id') List<String>? categoryId,
    @Query('include_category_children') bool? includeCategoryChildren,
    @Query('offset') int? offset,
    @Query('limit') int? limit,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Query('order') String? order,
    @Query('cart_id') String? cartId,
    @Query('region_id') String? regionId,
    @Query('currency_code') String? currencyCode,
  });

  ///Search Products
  Future<chopper.Response<StorePostSearchRes>> storeProductsSearchPost(
      {required StorePostSearchReq? body}) {
    generatedMapping.putIfAbsent(
        StorePostSearchRes, () => StorePostSearchRes.fromJsonFactory);

    return _storeProductsSearchPost(body: body);
  }

  ///Search Products
  @Post(
    path: '/store/products/search',
    optionalBody: true,
  )
  Future<chopper.Response<StorePostSearchRes>> _storeProductsSearchPost(
      {@Body() required StorePostSearchReq? body});

  ///Get a Product
  ///@param id The ID of the Product.
  ///@param sales_channel_id The ID of the sales channel the customer is viewing the product from.
  ///@param cart_id The ID of the cart. This is useful for accurate pricing based on the cart's context.
  ///@param region_id The ID of the region. This is useful for accurate pricing based on the selected region.
  ///@param expand Comma-separated relations that should be expanded in the returned product.
  ///@param fields Comma-separated fields that should be included in the returned product.
  ///@param currency_code A 3 character ISO currency code. This is useful for accurate pricing based on the selected currency.
  Future<chopper.Response<StoreProductsRes>> storeProductsIdGet({
    required String? id,
    String? salesChannelId,
    String? cartId,
    String? regionId,
    String? expand,
    String? fields,
    String? currencyCode,
  }) {
    generatedMapping.putIfAbsent(
        StoreProductsRes, () => StoreProductsRes.fromJsonFactory);

    return _storeProductsIdGet(
        id: id,
        salesChannelId: salesChannelId,
        cartId: cartId,
        regionId: regionId,
        expand: expand,
        fields: fields,
        currencyCode: currencyCode);
  }

  ///Get a Product
  ///@param id The ID of the Product.
  ///@param sales_channel_id The ID of the sales channel the customer is viewing the product from.
  ///@param cart_id The ID of the cart. This is useful for accurate pricing based on the cart's context.
  ///@param region_id The ID of the region. This is useful for accurate pricing based on the selected region.
  ///@param expand Comma-separated relations that should be expanded in the returned product.
  ///@param fields Comma-separated fields that should be included in the returned product.
  ///@param currency_code A 3 character ISO currency code. This is useful for accurate pricing based on the selected currency.
  @Get(path: '/store/products/{id}')
  Future<chopper.Response<StoreProductsRes>> _storeProductsIdGet({
    @Path('id') required String? id,
    @Query('sales_channel_id') String? salesChannelId,
    @Query('cart_id') String? cartId,
    @Query('region_id') String? regionId,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Query('currency_code') String? currencyCode,
  });

  ///List Regions
  ///@param offset The number of regions to skip when retrieving the regions.
  ///@param limit Limit the number of regions returned.
  ///@param created_at Filter by a creation date range.
  ///@param updated_at Filter by an update date range.
  Future<chopper.Response<StoreRegionsListRes>> storeRegionsGet({
    int? offset,
    int? limit,
    Object? createdAt,
    Object? updatedAt,
  }) {
    generatedMapping.putIfAbsent(
        StoreRegionsListRes, () => StoreRegionsListRes.fromJsonFactory);

    return _storeRegionsGet(
        offset: offset,
        limit: limit,
        createdAt: createdAt,
        updatedAt: updatedAt);
  }

  ///List Regions
  ///@param offset The number of regions to skip when retrieving the regions.
  ///@param limit Limit the number of regions returned.
  ///@param created_at Filter by a creation date range.
  ///@param updated_at Filter by an update date range.
  @Get(path: '/store/regions')
  Future<chopper.Response<StoreRegionsListRes>> _storeRegionsGet({
    @Query('offset') int? offset,
    @Query('limit') int? limit,
    @Query('created_at') Object? createdAt,
    @Query('updated_at') Object? updatedAt,
  });

  ///Get a Region
  ///@param id The ID of the Region.
  Future<chopper.Response<StoreRegionsRes>> storeRegionsIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        StoreRegionsRes, () => StoreRegionsRes.fromJsonFactory);

    return _storeRegionsIdGet(id: id);
  }

  ///Get a Region
  ///@param id The ID of the Region.
  @Get(path: '/store/regions/{id}')
  Future<chopper.Response<StoreRegionsRes>> _storeRegionsIdGet(
      {@Path('id') required String? id});

  ///List Return Reasons
  Future<chopper.Response<StoreReturnReasonsListRes>> storeReturnReasonsGet() {
    generatedMapping.putIfAbsent(StoreReturnReasonsListRes,
        () => StoreReturnReasonsListRes.fromJsonFactory);

    return _storeReturnReasonsGet();
  }

  ///List Return Reasons
  @Get(path: '/store/return-reasons')
  Future<chopper.Response<StoreReturnReasonsListRes>> _storeReturnReasonsGet();

  ///Get a Return Reason
  ///@param id The id of the Return Reason.
  Future<chopper.Response<StoreReturnReasonsRes>> storeReturnReasonsIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        StoreReturnReasonsRes, () => StoreReturnReasonsRes.fromJsonFactory);

    return _storeReturnReasonsIdGet(id: id);
  }

  ///Get a Return Reason
  ///@param id The id of the Return Reason.
  @Get(path: '/store/return-reasons/{id}')
  Future<chopper.Response<StoreReturnReasonsRes>> _storeReturnReasonsIdGet(
      {@Path('id') required String? id});

  ///Create Return
  Future<chopper.Response<StoreReturnsRes>> storeReturnsPost(
      {required StorePostReturnsReq? body}) {
    generatedMapping.putIfAbsent(
        StoreReturnsRes, () => StoreReturnsRes.fromJsonFactory);

    return _storeReturnsPost(body: body);
  }

  ///Create Return
  @Post(
    path: '/store/returns',
    optionalBody: true,
  )
  Future<chopper.Response<StoreReturnsRes>> _storeReturnsPost(
      {@Body() required StorePostReturnsReq? body});

  ///Get Shipping Options
  ///@param is_return Whether return shipping options should be included. By default, all shipping options are returned.
  ///@param product_ids "Comma-separated list of Product IDs to filter Shipping Options by. If provided, only shipping options that can be used with the provided products are retrieved."
  ///@param region_id "The ID of the region that the shipping options belong to. If not provided, all shipping options are retrieved."
  Future<chopper.Response<StoreShippingOptionsListRes>>
      storeShippingOptionsGet({
    bool? isReturn,
    String? productIds,
    String? regionId,
  }) {
    generatedMapping.putIfAbsent(StoreShippingOptionsListRes,
        () => StoreShippingOptionsListRes.fromJsonFactory);

    return _storeShippingOptionsGet(
        isReturn: isReturn, productIds: productIds, regionId: regionId);
  }

  ///Get Shipping Options
  ///@param is_return Whether return shipping options should be included. By default, all shipping options are returned.
  ///@param product_ids "Comma-separated list of Product IDs to filter Shipping Options by. If provided, only shipping options that can be used with the provided products are retrieved."
  ///@param region_id "The ID of the region that the shipping options belong to. If not provided, all shipping options are retrieved."
  @Get(path: '/store/shipping-options')
  Future<chopper.Response<StoreShippingOptionsListRes>>
      _storeShippingOptionsGet({
    @Query('is_return') bool? isReturn,
    @Query('product_ids') String? productIds,
    @Query('region_id') String? regionId,
  });

  ///List for Cart
  ///@param cart_id The ID of the Cart.
  Future<chopper.Response<StoreCartShippingOptionsListRes>>
      storeShippingOptionsCartIdGet({required String? cartId}) {
    generatedMapping.putIfAbsent(StoreCartShippingOptionsListRes,
        () => StoreCartShippingOptionsListRes.fromJsonFactory);

    return _storeShippingOptionsCartIdGet(cartId: cartId);
  }

  ///List for Cart
  ///@param cart_id The ID of the Cart.
  @Get(path: '/store/shipping-options/{cart_id}')
  Future<chopper.Response<StoreCartShippingOptionsListRes>>
      _storeShippingOptionsCartIdGet(
          {@Path('cart_id') required String? cartId});

  ///Create a Swap
  Future<chopper.Response<StoreSwapsRes>> storeSwapsPost(
      {required StorePostSwapsReq? body}) {
    generatedMapping.putIfAbsent(
        StoreSwapsRes, () => StoreSwapsRes.fromJsonFactory);

    return _storeSwapsPost(body: body);
  }

  ///Create a Swap
  @Post(
    path: '/store/swaps',
    optionalBody: true,
  )
  Future<chopper.Response<StoreSwapsRes>> _storeSwapsPost(
      {@Body() required StorePostSwapsReq? body});

  ///Get by Cart ID
  ///@param cart_id The id of the Cart
  Future<chopper.Response<StoreSwapsRes>> storeSwapsCartIdGet(
      {required String? cartId}) {
    generatedMapping.putIfAbsent(
        StoreSwapsRes, () => StoreSwapsRes.fromJsonFactory);

    return _storeSwapsCartIdGet(cartId: cartId);
  }

  ///Get by Cart ID
  ///@param cart_id The id of the Cart
  @Get(path: '/store/swaps/{cart_id}')
  Future<chopper.Response<StoreSwapsRes>> _storeSwapsCartIdGet(
      {@Path('cart_id') required String? cartId});

  ///Get Product Variants
  ///@param ids Filter by a comma-separated list of IDs. If supplied, it overrides the `id` parameter.
  ///@param id Filter by one or more IDs. If `ids` is supplied, it's overrides the value of this parameter.
  ///@param sales_channel_id "Filter by sales channel IDs. When provided, only products available in the selected sales channels are retrieved. Alternatively, you can pass a publishable API key in the request header and this will have the same effect."
  ///@param expand Comma-separated relations that should be expanded in the returned product variants.
  ///@param fields Comma-separated fields that should be included in the returned product variants.
  ///@param offset The number of products to skip when retrieving the product variants.
  ///@param limit Limit the number of product variants returned.
  ///@param cart_id The ID of the cart. This is useful for accurate pricing based on the cart's context.
  ///@param region_id The ID of the region. This is useful for accurate pricing based on the selected region.
  ///@param currency_code A 3 character ISO currency code. This is useful for accurate pricing based on the selected currency.
  ///@param title Filter by title
  ///@param inventory_quantity Filter by available inventory quantity
  Future<chopper.Response<StoreVariantsListRes>> storeVariantsGet({
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
    generatedMapping.putIfAbsent(
        StoreVariantsListRes, () => StoreVariantsListRes.fromJsonFactory);

    return _storeVariantsGet(
        ids: ids,
        id: id,
        salesChannelId: salesChannelId,
        expand: expand,
        fields: fields,
        offset: offset,
        limit: limit,
        cartId: cartId,
        regionId: regionId,
        currencyCode: currencyCode,
        title: title,
        inventoryQuantity: inventoryQuantity);
  }

  ///Get Product Variants
  ///@param ids Filter by a comma-separated list of IDs. If supplied, it overrides the `id` parameter.
  ///@param id Filter by one or more IDs. If `ids` is supplied, it's overrides the value of this parameter.
  ///@param sales_channel_id "Filter by sales channel IDs. When provided, only products available in the selected sales channels are retrieved. Alternatively, you can pass a publishable API key in the request header and this will have the same effect."
  ///@param expand Comma-separated relations that should be expanded in the returned product variants.
  ///@param fields Comma-separated fields that should be included in the returned product variants.
  ///@param offset The number of products to skip when retrieving the product variants.
  ///@param limit Limit the number of product variants returned.
  ///@param cart_id The ID of the cart. This is useful for accurate pricing based on the cart's context.
  ///@param region_id The ID of the region. This is useful for accurate pricing based on the selected region.
  ///@param currency_code A 3 character ISO currency code. This is useful for accurate pricing based on the selected currency.
  ///@param title Filter by title
  ///@param inventory_quantity Filter by available inventory quantity
  @Get(path: '/store/variants')
  Future<chopper.Response<StoreVariantsListRes>> _storeVariantsGet({
    @Query('ids') String? ids,
    @Query('id') Object? id,
    @Query('sales_channel_id') String? salesChannelId,
    @Query('expand') String? expand,
    @Query('fields') String? fields,
    @Query('offset') num? offset,
    @Query('limit') num? limit,
    @Query('cart_id') String? cartId,
    @Query('region_id') String? regionId,
    @Query('currency_code') String? currencyCode,
    @Query('title') Object? title,
    @Query('inventory_quantity') Object? inventoryQuantity,
  });

  ///Get a Product Variant
  ///@param id The ID of the Product Variant.
  ///@param sales_channel_id The ID of the sales channel the customer is viewing the product variant from.
  ///@param cart_id The ID of the cart. This is useful for accurate pricing based on the cart's context.
  ///@param region_id The ID of the region. This is useful for accurate pricing based on the selected region.
  ///@param currency_code A 3 character ISO currency code. This is useful for accurate pricing based on the selected currency.
  Future<chopper.Response<StoreVariantsRes>> storeVariantsIdGet({
    required String? id,
    String? salesChannelId,
    String? cartId,
    String? regionId,
    String? currencyCode,
  }) {
    generatedMapping.putIfAbsent(
        StoreVariantsRes, () => StoreVariantsRes.fromJsonFactory);

    return _storeVariantsIdGet(
        id: id,
        salesChannelId: salesChannelId,
        cartId: cartId,
        regionId: regionId,
        currencyCode: currencyCode);
  }

  ///Get a Product Variant
  ///@param id The ID of the Product Variant.
  ///@param sales_channel_id The ID of the sales channel the customer is viewing the product variant from.
  ///@param cart_id The ID of the cart. This is useful for accurate pricing based on the cart's context.
  ///@param region_id The ID of the region. This is useful for accurate pricing based on the selected region.
  ///@param currency_code A 3 character ISO currency code. This is useful for accurate pricing based on the selected currency.
  @Get(path: '/store/variants/{id}')
  Future<chopper.Response<StoreVariantsRes>> _storeVariantsIdGet({
    @Path('id') required String? id,
    @Query('sales_channel_id') String? salesChannelId,
    @Query('cart_id') String? cartId,
    @Query('region_id') String? regionId,
    @Query('currency_code') String? currencyCode,
  });
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    if (ResultType == String) {
      return response.copyWith();
    }

    if (ResultType == DateTime) {
      return response.copyWith(
          body: DateTime.parse((response.body as String).replaceAll('"', ''))
              as ResultType);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);
