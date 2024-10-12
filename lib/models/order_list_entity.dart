import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_list_entity.freezed.dart';
part 'order_list_entity.g.dart';

@freezed
class OrderListEntity with _$OrderListEntity {
  const factory OrderListEntity({
    @Default(0) int code, // 默认值为 0
    @Default('') String msg, // 默认值为空字符串
    @Default(Data(list: [], count: 0)) Data data, // 默认空的 Data 对象
  }) = _OrderListEntity;

  factory OrderListEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderListEntityFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @Default([]) List<ListElement> list, // 默认空列表
    @Default(0) int count, // 默认值为 0
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class ListElement with _$ListElement {
  const factory ListElement({
    @Default('') String orderNo, // 默认值为空字符串
    @Default('') String orderId, // 默认值为空字符串
    @Default(0) int createAt, // 默认值为 0
    @Default('') String amount, // 默认值为空字符串
    @Default([]) List<GoodsList> goodsList, // 默认空列表
    @Default('') String currency, // 默认值为空字符串
    @Default('') String transNo, // 默认值为空字符串
    @Default(DTrans(addTransNo: '', createAt: 0, timeout: 0))
    DTrans addTrans, // 默认值为空的 DTrans
    @Default('') String cancelReason, // 默认值为空字符串
    @Default('') String shopName, // 默认值为空字符串
    @Default('') String shopId, // 默认值为空字符串
    @Default(0) int channel, // 默认值为 0
  }) = _ListElement;

  factory ListElement.fromJson(Map<String, dynamic> json) =>
      _$ListElementFromJson(json);
}

@freezed
class DTrans with _$DTrans {
  const factory DTrans({
    @Default('') String addTransNo, // 默认值为空字符串
    @Default(0) int createAt, // 默认值为 0
    @Default(0) int timeout, // 默认值为 0
  }) = _DTrans;

  factory DTrans.fromJson(Map<String, dynamic> json) => _$DTransFromJson(json);
}

@freezed
class GoodsList with _$GoodsList {
  const factory GoodsList({
    @Default('') String offerId, // 默认值为空字符串
    @Default('') String title, // 默认值为空字符串
    @Default('') String skuInfo, // 默认值为空字符串
    @Default(0) int quantity, // 默认值为 0
    @Default('') String unitPrice, // 默认值为空字符串
    @Default('') String goodsAmt, // 默认值为空字符串
    @Default('') String deliveryAmt, // 默认值为空字符串
    @Default('') String image, // 默认值为空字符串
    @Default(0) int status, // 默认值为 0
    @Default('') String remark, // 默认值为空字符串
    @Default('') String orderGoodsNo, // 默认值为空字符串
    @Default('') String orderGoodsId, // 默认值为空字符串
    @Default([]) List<AddService> addService, // 默认空列表
    @Default([]) List<String> freePhotos, // 默认空列表
    @Default([]) List<dynamic> servicePhotos, // 默认空列表
    @Default(false) bool isHasMessage, // 默认值为 false
    @Default('') String deliveryNo, // 默认值为空字符串
    @Default('') String deliveryCode, // 默认值为空字符串
    @Default('') String deliveryName, // 默认值为空字符串
    @Default([]) List<DeliveryInfo> deliveryInfos, // 默认空列表
    @Default('') String thirdOrderNo, // 默认值为空字符串
    @Default(0) int refundStatus, // 默认值为 0
    @Default(DTrans(addTransNo: '', createAt: 0, timeout: 0))
    DTrans refundTrans, // 默认空的 DTrans
    @Default('') String reason, // 默认值为空字符串
    @Default(0) int reasonTime, // 默认值为 0
    @Default('') String offerUrl, // 默认值为空字符串
    @Default(0) int channel, // 默认值为 0
    @Default(ReturnExchangeInfo(
        isSupport: false,
        isReturnExchangeEligible: false,
        timeout: 0,
        arrivalTime: 0))
    ReturnExchangeInfo returnExchangeInfo, // 默认 returnExchangeInfo 对象
    @Default(false) bool isSupportReturnExchange, // 默认值为 false
    @Default(0) int orderType, // 默认值为 0
    @Default(false) bool isSelfOperatedGoods, // 默认值为 false
    @Default([]) List<String> customImages, // 默认空列表
    @Default(DTrans(addTransNo: '', createAt: 0, timeout: 0))
    DTrans addTrans, // 默认空的 DTrans
    @Default(0) int dialogUnReadNum, // 默认值为 0
  }) = _GoodsList;

  factory GoodsList.fromJson(Map<String, dynamic> json) =>
      _$GoodsListFromJson(json);
}

@freezed
class AddService with _$AddService {
  const factory AddService({
    @Default('') String serviceNo, // 默认值为空字符串
    @Default(0) int type, // 默认值为 0
    @Default(0) int status, // 默认值为 0
    @Default('') String unitPrice, // 默认值为空字符串
    @Default(0) int quantity, // 默认值为 0
    @Default('') String totalPrice, // 默认值为空字符串
    @Default('') String transNo, // 默认值为空字符串
  }) = _AddService;

  factory AddService.fromJson(Map<String, dynamic> json) =>
      _$AddServiceFromJson(json);
}

@freezed
class DeliveryInfo with _$DeliveryInfo {
  const factory DeliveryInfo({
    @Default('') String deliveryNo, // 默认值为空字符串
    @Default('') String deliveryCode, // 默认值为空字符串
    @Default('') String deliveryName, // 默认值为空字符串
  }) = _DeliveryInfo;

  factory DeliveryInfo.fromJson(Map<String, dynamic> json) =>
      _$DeliveryInfoFromJson(json);
}

@freezed
class ReturnExchangeInfo with _$ReturnExchangeInfo {
  const factory ReturnExchangeInfo({
    @Default(false) bool isSupport, // 默认值为 false
    @Default(false) bool isReturnExchangeEligible, // 默认值为 false
    @Default(0) int timeout, // 默认值为 0
    @Default(0) int arrivalTime, // 默认值为 0
  }) = _ReturnExchangeInfo;

  factory ReturnExchangeInfo.fromJson(Map<String, dynamic> json) =>
      _$ReturnExchangeInfoFromJson(json);
}
