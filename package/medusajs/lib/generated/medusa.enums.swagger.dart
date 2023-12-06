import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum AdminCreateUserRequestRole {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('admin')
  admin('admin'),
  @JsonValue('member')
  member('member'),
  @JsonValue('developer')
  developer('developer');

  final String? value;

  const AdminCreateUserRequestRole(this.value);
}

enum AdminPostDiscountsDiscountConditionsOperator {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('in')
  $in('in'),
  @JsonValue('not_in')
  notIn('not_in');

  final String? value;

  const AdminPostDiscountsDiscountConditionsOperator(this.value);
}

enum AdminPostDiscountsDiscountReq$RuleAllocation {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('total')
  total('total'),
  @JsonValue('item')
  item('item');

  final String? value;

  const AdminPostDiscountsDiscountReq$RuleAllocation(this.value);
}

enum AdminPostDiscountsDiscountReq$Rule$Conditions$ItemOperator {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('in')
  $in('in'),
  @JsonValue('not_in')
  notIn('not_in');

  final String? value;

  const AdminPostDiscountsDiscountReq$Rule$Conditions$ItemOperator(this.value);
}

enum AdminPostDiscountsReq$RuleType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('fixed')
  fixed('fixed'),
  @JsonValue('percentage')
  percentage('percentage'),
  @JsonValue('free_shipping')
  freeShipping('free_shipping');

  final String? value;

  const AdminPostDiscountsReq$RuleType(this.value);
}

enum AdminPostDiscountsReq$RuleAllocation {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('total')
  total('total'),
  @JsonValue('item')
  item('item');

  final String? value;

  const AdminPostDiscountsReq$RuleAllocation(this.value);
}

enum AdminPostDiscountsReq$Rule$Conditions$ItemOperator {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('in')
  $in('in'),
  @JsonValue('not_in')
  notIn('not_in');

  final String? value;

  const AdminPostDiscountsReq$Rule$Conditions$ItemOperator(this.value);
}

enum AdminPostDraftOrdersReqStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('open')
  open('open'),
  @JsonValue('completed')
  completed('completed');

  final String? value;

  const AdminPostDraftOrdersReqStatus(this.value);
}

enum AdminPostInvitesReqRole {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('admin')
  admin('admin'),
  @JsonValue('member')
  member('member'),
  @JsonValue('developer')
  developer('developer');

  final String? value;

  const AdminPostInvitesReqRole(this.value);
}

enum AdminPostOrdersOrderClaimsClaimReq$ClaimItems$ItemReason {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('missing_item')
  missingItem('missing_item'),
  @JsonValue('wrong_item')
  wrongItem('wrong_item'),
  @JsonValue('production_failure')
  productionFailure('production_failure'),
  @JsonValue('other')
  other('other');

  final String? value;

  const AdminPostOrdersOrderClaimsClaimReq$ClaimItems$ItemReason(this.value);
}

enum AdminPostOrdersOrderClaimsReqType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('replace')
  replace('replace'),
  @JsonValue('refund')
  refund('refund');

  final String? value;

  const AdminPostOrdersOrderClaimsReqType(this.value);
}

enum AdminPostOrdersOrderClaimsReq$ClaimItems$ItemReason {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('missing_item')
  missingItem('missing_item'),
  @JsonValue('wrong_item')
  wrongItem('wrong_item'),
  @JsonValue('production_failure')
  productionFailure('production_failure'),
  @JsonValue('other')
  other('other');

  final String? value;

  const AdminPostOrdersOrderClaimsReq$ClaimItems$ItemReason(this.value);
}

enum AdminPostPriceListsPriceListPriceListReqType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('sale')
  sale('sale'),
  @JsonValue('override')
  override('override');

  final String? value;

  const AdminPostPriceListsPriceListPriceListReqType(this.value);
}

enum AdminPostPriceListsPriceListPriceListReqStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('active')
  active('active'),
  @JsonValue('draft')
  draft('draft');

  final String? value;

  const AdminPostPriceListsPriceListPriceListReqStatus(this.value);
}

enum AdminPostPriceListsPriceListReqType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('sale')
  sale('sale'),
  @JsonValue('override')
  override('override');

  final String? value;

  const AdminPostPriceListsPriceListReqType(this.value);
}

enum AdminPostPriceListsPriceListReqStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('active')
  active('active'),
  @JsonValue('draft')
  draft('draft');

  final String? value;

  const AdminPostPriceListsPriceListReqStatus(this.value);
}

enum AdminPostProductsProductReqStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('draft')
  draft('draft'),
  @JsonValue('proposed')
  proposed('proposed'),
  @JsonValue('published')
  published('published'),
  @JsonValue('rejected')
  rejected('rejected');

  final String? value;

  const AdminPostProductsProductReqStatus(this.value);
}

enum AdminPostProductsReqStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('draft')
  draft('draft'),
  @JsonValue('proposed')
  proposed('proposed'),
  @JsonValue('published')
  published('published'),
  @JsonValue('rejected')
  rejected('rejected');

  final String? value;

  const AdminPostProductsReqStatus(this.value);
}

enum AdminPostShippingOptionsOptionReq$Requirements$ItemType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('max_subtotal')
  maxSubtotal('max_subtotal'),
  @JsonValue('min_subtotal')
  minSubtotal('min_subtotal');

  final String? value;

  const AdminPostShippingOptionsOptionReq$Requirements$ItemType(this.value);
}

enum AdminPostShippingOptionsReqPriceType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('flat_rate')
  flatRate('flat_rate'),
  @JsonValue('calculated')
  calculated('calculated');

  final String? value;

  const AdminPostShippingOptionsReqPriceType(this.value);
}

enum AdminPostShippingOptionsReq$Requirements$ItemType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('max_subtotal')
  maxSubtotal('max_subtotal'),
  @JsonValue('min_subtotal')
  minSubtotal('min_subtotal');

  final String? value;

  const AdminPostShippingOptionsReq$Requirements$ItemType(this.value);
}

enum AdminPostShippingProfilesProfileReqType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('default')
  $default('default'),
  @JsonValue('gift_card')
  giftCard('gift_card'),
  @JsonValue('custom')
  custom('custom');

  final String? value;

  const AdminPostShippingProfilesProfileReqType(this.value);
}

enum AdminPostShippingProfilesReqType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('default')
  $default('default'),
  @JsonValue('gift_card')
  giftCard('gift_card'),
  @JsonValue('custom')
  custom('custom');

  final String? value;

  const AdminPostShippingProfilesReqType(this.value);
}

enum AdminUpdateUserRequestRole {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('admin')
  admin('admin'),
  @JsonValue('member')
  member('member'),
  @JsonValue('developer')
  developer('developer');

  final String? value;

  const AdminUpdateUserRequestRole(this.value);
}

enum BatchJobType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('product-import')
  productImport('product-import'),
  @JsonValue('product-export')
  productExport('product-export');

  final String? value;

  const BatchJobType(this.value);
}

enum BatchJobStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('created')
  created('created'),
  @JsonValue('pre_processed')
  preProcessed('pre_processed'),
  @JsonValue('confirmed')
  confirmed('confirmed'),
  @JsonValue('processing')
  processing('processing'),
  @JsonValue('completed')
  completed('completed'),
  @JsonValue('canceled')
  canceled('canceled'),
  @JsonValue('failed')
  failed('failed');

  final String? value;

  const BatchJobStatus(this.value);
}

enum CartType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('default')
  $default('default'),
  @JsonValue('swap')
  swap('swap'),
  @JsonValue('draft_order')
  draftOrder('draft_order'),
  @JsonValue('payment_link')
  paymentLink('payment_link'),
  @JsonValue('claim')
  claim('claim');

  final String? value;

  const CartType(this.value);
}

enum ClaimItemReason {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('missing_item')
  missingItem('missing_item'),
  @JsonValue('wrong_item')
  wrongItem('wrong_item'),
  @JsonValue('production_failure')
  productionFailure('production_failure'),
  @JsonValue('other')
  other('other');

  final String? value;

  const ClaimItemReason(this.value);
}

enum ClaimOrderType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('refund')
  refund('refund'),
  @JsonValue('replace')
  replace('replace');

  final String? value;

  const ClaimOrderType(this.value);
}

enum ClaimOrderPaymentStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('na')
  na('na'),
  @JsonValue('not_refunded')
  notRefunded('not_refunded'),
  @JsonValue('refunded')
  refunded('refunded');

  final String? value;

  const ClaimOrderPaymentStatus(this.value);
}

enum ClaimOrderFulfillmentStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('not_fulfilled')
  notFulfilled('not_fulfilled'),
  @JsonValue('partially_fulfilled')
  partiallyFulfilled('partially_fulfilled'),
  @JsonValue('fulfilled')
  fulfilled('fulfilled'),
  @JsonValue('partially_shipped')
  partiallyShipped('partially_shipped'),
  @JsonValue('shipped')
  shipped('shipped'),
  @JsonValue('partially_returned')
  partiallyReturned('partially_returned'),
  @JsonValue('returned')
  returned('returned'),
  @JsonValue('canceled')
  canceled('canceled'),
  @JsonValue('requires_action')
  requiresAction('requires_action');

  final String? value;

  const ClaimOrderFulfillmentStatus(this.value);
}

enum DiscountConditionType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('products')
  products('products'),
  @JsonValue('product_types')
  productTypes('product_types'),
  @JsonValue('product_collections')
  productCollections('product_collections'),
  @JsonValue('product_tags')
  productTags('product_tags'),
  @JsonValue('customer_groups')
  customerGroups('customer_groups');

  final String? value;

  const DiscountConditionType(this.value);
}

enum DiscountConditionOperator {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('in')
  $in('in'),
  @JsonValue('not_in')
  notIn('not_in');

  final String? value;

  const DiscountConditionOperator(this.value);
}

enum DiscountRuleType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('fixed')
  fixed('fixed'),
  @JsonValue('percentage')
  percentage('percentage'),
  @JsonValue('free_shipping')
  freeShipping('free_shipping');

  final String? value;

  const DiscountRuleType(this.value);
}

enum DiscountRuleAllocation {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('total')
  total('total'),
  @JsonValue('item')
  item('item');

  final String? value;

  const DiscountRuleAllocation(this.value);
}

enum DraftOrderStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('open')
  open('open'),
  @JsonValue('completed')
  completed('completed');

  final String? value;

  const DraftOrderStatus(this.value);
}

enum ErrorCode {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('invalid_state_error')
  invalidStateError('invalid_state_error'),
  @JsonValue('invalid_request_error')
  invalidRequestError('invalid_request_error'),
  @JsonValue('api_error')
  apiError('api_error'),
  @JsonValue('unknown_error')
  unknownError('unknown_error');

  final String? value;

  const ErrorCode(this.value);
}

enum ErrorType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('QueryRunnerAlreadyReleasedError')
  queryrunneralreadyreleasederror('QueryRunnerAlreadyReleasedError'),
  @JsonValue('TransactionAlreadyStartedError')
  transactionalreadystartederror('TransactionAlreadyStartedError'),
  @JsonValue('TransactionNotStartedError')
  transactionnotstartederror('TransactionNotStartedError'),
  @JsonValue('conflict')
  conflict('conflict'),
  @JsonValue('unauthorized')
  unauthorized('unauthorized'),
  @JsonValue('payment_authorization_error')
  paymentAuthorizationError('payment_authorization_error'),
  @JsonValue('duplicate_error')
  duplicateError('duplicate_error'),
  @JsonValue('not_allowed')
  notAllowed('not_allowed'),
  @JsonValue('invalid_data')
  invalidData('invalid_data'),
  @JsonValue('not_found')
  notFound('not_found'),
  @JsonValue('database_error')
  databaseError('database_error'),
  @JsonValue('unexpected_state')
  unexpectedState('unexpected_state'),
  @JsonValue('invalid_argument')
  invalidArgument('invalid_argument'),
  @JsonValue('unknown_error')
  unknownError('unknown_error');

  final String? value;

  const ErrorType(this.value);
}

enum InviteRole {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('admin')
  admin('admin'),
  @JsonValue('member')
  member('member'),
  @JsonValue('developer')
  developer('developer');

  final String? value;

  const InviteRole(this.value);
}

enum OrderStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('pending')
  pending('pending'),
  @JsonValue('completed')
  completed('completed'),
  @JsonValue('archived')
  archived('archived'),
  @JsonValue('canceled')
  canceled('canceled'),
  @JsonValue('requires_action')
  requiresAction('requires_action');

  final String? value;

  const OrderStatus(this.value);
}

enum OrderFulfillmentStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('not_fulfilled')
  notFulfilled('not_fulfilled'),
  @JsonValue('partially_fulfilled')
  partiallyFulfilled('partially_fulfilled'),
  @JsonValue('fulfilled')
  fulfilled('fulfilled'),
  @JsonValue('partially_shipped')
  partiallyShipped('partially_shipped'),
  @JsonValue('shipped')
  shipped('shipped'),
  @JsonValue('partially_returned')
  partiallyReturned('partially_returned'),
  @JsonValue('returned')
  returned('returned'),
  @JsonValue('canceled')
  canceled('canceled'),
  @JsonValue('requires_action')
  requiresAction('requires_action');

  final String? value;

  const OrderFulfillmentStatus(this.value);
}

enum OrderPaymentStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('not_paid')
  notPaid('not_paid'),
  @JsonValue('awaiting')
  awaiting('awaiting'),
  @JsonValue('captured')
  captured('captured'),
  @JsonValue('partially_refunded')
  partiallyRefunded('partially_refunded'),
  @JsonValue('refunded')
  refunded('refunded'),
  @JsonValue('canceled')
  canceled('canceled'),
  @JsonValue('requires_action')
  requiresAction('requires_action');

  final String? value;

  const OrderPaymentStatus(this.value);
}

enum OrderEditStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('confirmed')
  confirmed('confirmed'),
  @JsonValue('declined')
  declined('declined'),
  @JsonValue('requested')
  requested('requested'),
  @JsonValue('created')
  created('created'),
  @JsonValue('canceled')
  canceled('canceled');

  final String? value;

  const OrderEditStatus(this.value);
}

enum OrderItemChangeType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('item_add')
  itemAdd('item_add'),
  @JsonValue('item_remove')
  itemRemove('item_remove'),
  @JsonValue('item_update')
  itemUpdate('item_update');

  final String? value;

  const OrderItemChangeType(this.value);
}

enum PaymentCollectionType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('order_edit')
  orderEdit('order_edit');

  final String? value;

  const PaymentCollectionType(this.value);
}

enum PaymentCollectionStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('not_paid')
  notPaid('not_paid'),
  @JsonValue('awaiting')
  awaiting('awaiting'),
  @JsonValue('authorized')
  authorized('authorized'),
  @JsonValue('partially_authorized')
  partiallyAuthorized('partially_authorized'),
  @JsonValue('canceled')
  canceled('canceled');

  final String? value;

  const PaymentCollectionStatus(this.value);
}

enum PaymentSessionStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('authorized')
  authorized('authorized'),
  @JsonValue('pending')
  pending('pending'),
  @JsonValue('requires_more')
  requiresMore('requires_more'),
  @JsonValue('error')
  error('error'),
  @JsonValue('canceled')
  canceled('canceled');

  final String? value;

  const PaymentSessionStatus(this.value);
}

enum PriceListType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('sale')
  sale('sale'),
  @JsonValue('override')
  override('override');

  final String? value;

  const PriceListType(this.value);
}

enum PriceListStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('active')
  active('active'),
  @JsonValue('draft')
  draft('draft');

  final String? value;

  const PriceListStatus(this.value);
}

enum PricedProductStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('draft')
  draft('draft'),
  @JsonValue('proposed')
  proposed('proposed'),
  @JsonValue('published')
  published('published'),
  @JsonValue('rejected')
  rejected('rejected');

  final String? value;

  const PricedProductStatus(this.value);
}

enum PricedShippingOptionPriceType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('flat_rate')
  flatRate('flat_rate'),
  @JsonValue('calculated')
  calculated('calculated');

  final String? value;

  const PricedShippingOptionPriceType(this.value);
}

enum ProductStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('draft')
  draft('draft'),
  @JsonValue('proposed')
  proposed('proposed'),
  @JsonValue('published')
  published('published'),
  @JsonValue('rejected')
  rejected('rejected');

  final String? value;

  const ProductStatus(this.value);
}

enum RefundReason {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('discount')
  discount('discount'),
  @JsonValue('return')
  $return('return'),
  @JsonValue('swap')
  swap('swap'),
  @JsonValue('claim')
  claim('claim'),
  @JsonValue('other')
  other('other');

  final String? value;

  const RefundReason(this.value);
}

enum ReturnStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('requested')
  requested('requested'),
  @JsonValue('received')
  received('received'),
  @JsonValue('requires_action')
  requiresAction('requires_action'),
  @JsonValue('canceled')
  canceled('canceled');

  final String? value;

  const ReturnStatus(this.value);
}

enum ShippingOptionPriceType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('flat_rate')
  flatRate('flat_rate'),
  @JsonValue('calculated')
  calculated('calculated');

  final String? value;

  const ShippingOptionPriceType(this.value);
}

enum ShippingOptionRequirementType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('min_subtotal')
  minSubtotal('min_subtotal'),
  @JsonValue('max_subtotal')
  maxSubtotal('max_subtotal');

  final String? value;

  const ShippingOptionRequirementType(this.value);
}

enum ShippingProfileType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('default')
  $default('default'),
  @JsonValue('gift_card')
  giftCard('gift_card'),
  @JsonValue('custom')
  custom('custom');

  final String? value;

  const ShippingProfileType(this.value);
}

enum SwapFulfillmentStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('not_fulfilled')
  notFulfilled('not_fulfilled'),
  @JsonValue('fulfilled')
  fulfilled('fulfilled'),
  @JsonValue('shipped')
  shipped('shipped'),
  @JsonValue('partially_shipped')
  partiallyShipped('partially_shipped'),
  @JsonValue('canceled')
  canceled('canceled'),
  @JsonValue('requires_action')
  requiresAction('requires_action');

  final String? value;

  const SwapFulfillmentStatus(this.value);
}

enum SwapPaymentStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('not_paid')
  notPaid('not_paid'),
  @JsonValue('awaiting')
  awaiting('awaiting'),
  @JsonValue('captured')
  captured('captured'),
  @JsonValue('confirmed')
  confirmed('confirmed'),
  @JsonValue('canceled')
  canceled('canceled'),
  @JsonValue('difference_refunded')
  differenceRefunded('difference_refunded'),
  @JsonValue('partially_refunded')
  partiallyRefunded('partially_refunded'),
  @JsonValue('refunded')
  refunded('refunded'),
  @JsonValue('requires_action')
  requiresAction('requires_action');

  final String? value;

  const SwapPaymentStatus(this.value);
}

enum UserRole {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('admin')
  admin('admin'),
  @JsonValue('member')
  member('member'),
  @JsonValue('developer')
  developer('developer');

  final String? value;

  const UserRole(this.value);
}

enum StoreCompleteCartResType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('order')
  order('order'),
  @JsonValue('cart')
  cart('cart'),
  @JsonValue('swap')
  swap('swap');

  final String? value;

  const StoreCompleteCartResType(this.value);
}
