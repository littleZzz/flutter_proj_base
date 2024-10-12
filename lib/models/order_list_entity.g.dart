// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_list_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderListEntityImpl _$$OrderListEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderListEntityImpl(
      code: (json['code'] as num?)?.toInt() ?? 0,
      msg: json['msg'] as String? ?? '',
      data: json['data'] == null
          ? const Data(list: [], count: 0)
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderListEntityImplToJson(
        _$OrderListEntityImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'msg': instance.msg,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      list: (json['list'] as List<dynamic>?)
              ?.map((e) => ListElement.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      count: (json['count'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
      'count': instance.count,
    };

_$ListElementImpl _$$ListElementImplFromJson(Map<String, dynamic> json) =>
    _$ListElementImpl(
      orderNo: json['orderNo'] as String? ?? '',
      orderId: json['orderId'] as String? ?? '',
      createAt: (json['createAt'] as num?)?.toInt() ?? 0,
      amount: json['amount'] as String? ?? '',
      goodsList: (json['goodsList'] as List<dynamic>?)
              ?.map((e) => GoodsList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      currency: json['currency'] as String? ?? '',
      transNo: json['transNo'] as String? ?? '',
      addTrans: json['addTrans'] == null
          ? const DTrans(addTransNo: '', createAt: 0, timeout: 0)
          : DTrans.fromJson(json['addTrans'] as Map<String, dynamic>),
      cancelReason: json['cancelReason'] as String? ?? '',
      shopName: json['shopName'] as String? ?? '',
      shopId: json['shopId'] as String? ?? '',
      channel: (json['channel'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ListElementImplToJson(_$ListElementImpl instance) =>
    <String, dynamic>{
      'orderNo': instance.orderNo,
      'orderId': instance.orderId,
      'createAt': instance.createAt,
      'amount': instance.amount,
      'goodsList': instance.goodsList,
      'currency': instance.currency,
      'transNo': instance.transNo,
      'addTrans': instance.addTrans,
      'cancelReason': instance.cancelReason,
      'shopName': instance.shopName,
      'shopId': instance.shopId,
      'channel': instance.channel,
    };

_$DTransImpl _$$DTransImplFromJson(Map<String, dynamic> json) => _$DTransImpl(
      addTransNo: json['addTransNo'] as String? ?? '',
      createAt: (json['createAt'] as num?)?.toInt() ?? 0,
      timeout: (json['timeout'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$DTransImplToJson(_$DTransImpl instance) =>
    <String, dynamic>{
      'addTransNo': instance.addTransNo,
      'createAt': instance.createAt,
      'timeout': instance.timeout,
    };

_$GoodsListImpl _$$GoodsListImplFromJson(Map<String, dynamic> json) =>
    _$GoodsListImpl(
      offerId: json['offerId'] as String? ?? '',
      title: json['title'] as String? ?? '',
      skuInfo: json['skuInfo'] as String? ?? '',
      quantity: (json['quantity'] as num?)?.toInt() ?? 0,
      unitPrice: json['unitPrice'] as String? ?? '',
      goodsAmt: json['goodsAmt'] as String? ?? '',
      deliveryAmt: json['deliveryAmt'] as String? ?? '',
      image: json['image'] as String? ?? '',
      status: (json['status'] as num?)?.toInt() ?? 0,
      remark: json['remark'] as String? ?? '',
      orderGoodsNo: json['orderGoodsNo'] as String? ?? '',
      orderGoodsId: json['orderGoodsId'] as String? ?? '',
      addService: (json['addService'] as List<dynamic>?)
              ?.map((e) => AddService.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      freePhotos: (json['freePhotos'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      servicePhotos: json['servicePhotos'] as List<dynamic>? ?? const [],
      isHasMessage: json['isHasMessage'] as bool? ?? false,
      deliveryNo: json['deliveryNo'] as String? ?? '',
      deliveryCode: json['deliveryCode'] as String? ?? '',
      deliveryName: json['deliveryName'] as String? ?? '',
      deliveryInfos: (json['deliveryInfos'] as List<dynamic>?)
              ?.map((e) => DeliveryInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      thirdOrderNo: json['thirdOrderNo'] as String? ?? '',
      refundStatus: (json['refundStatus'] as num?)?.toInt() ?? 0,
      refundTrans: json['refundTrans'] == null
          ? const DTrans(addTransNo: '', createAt: 0, timeout: 0)
          : DTrans.fromJson(json['refundTrans'] as Map<String, dynamic>),
      reason: json['reason'] as String? ?? '',
      reasonTime: (json['reasonTime'] as num?)?.toInt() ?? 0,
      offerUrl: json['offerUrl'] as String? ?? '',
      channel: (json['channel'] as num?)?.toInt() ?? 0,
      returnExchangeInfo: json['returnExchangeInfo'] == null
          ? const ReturnExchangeInfo(
              isSupport: false,
              isReturnExchangeEligible: false,
              timeout: 0,
              arrivalTime: 0)
          : ReturnExchangeInfo.fromJson(
              json['returnExchangeInfo'] as Map<String, dynamic>),
      isSupportReturnExchange:
          json['isSupportReturnExchange'] as bool? ?? false,
      orderType: (json['orderType'] as num?)?.toInt() ?? 0,
      isSelfOperatedGoods: json['isSelfOperatedGoods'] as bool? ?? false,
      customImages: (json['customImages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      addTrans: json['addTrans'] == null
          ? const DTrans(addTransNo: '', createAt: 0, timeout: 0)
          : DTrans.fromJson(json['addTrans'] as Map<String, dynamic>),
      dialogUnReadNum: (json['dialogUnReadNum'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$GoodsListImplToJson(_$GoodsListImpl instance) =>
    <String, dynamic>{
      'offerId': instance.offerId,
      'title': instance.title,
      'skuInfo': instance.skuInfo,
      'quantity': instance.quantity,
      'unitPrice': instance.unitPrice,
      'goodsAmt': instance.goodsAmt,
      'deliveryAmt': instance.deliveryAmt,
      'image': instance.image,
      'status': instance.status,
      'remark': instance.remark,
      'orderGoodsNo': instance.orderGoodsNo,
      'orderGoodsId': instance.orderGoodsId,
      'addService': instance.addService,
      'freePhotos': instance.freePhotos,
      'servicePhotos': instance.servicePhotos,
      'isHasMessage': instance.isHasMessage,
      'deliveryNo': instance.deliveryNo,
      'deliveryCode': instance.deliveryCode,
      'deliveryName': instance.deliveryName,
      'deliveryInfos': instance.deliveryInfos,
      'thirdOrderNo': instance.thirdOrderNo,
      'refundStatus': instance.refundStatus,
      'refundTrans': instance.refundTrans,
      'reason': instance.reason,
      'reasonTime': instance.reasonTime,
      'offerUrl': instance.offerUrl,
      'channel': instance.channel,
      'returnExchangeInfo': instance.returnExchangeInfo,
      'isSupportReturnExchange': instance.isSupportReturnExchange,
      'orderType': instance.orderType,
      'isSelfOperatedGoods': instance.isSelfOperatedGoods,
      'customImages': instance.customImages,
      'addTrans': instance.addTrans,
      'dialogUnReadNum': instance.dialogUnReadNum,
    };

_$AddServiceImpl _$$AddServiceImplFromJson(Map<String, dynamic> json) =>
    _$AddServiceImpl(
      serviceNo: json['serviceNo'] as String? ?? '',
      type: (json['type'] as num?)?.toInt() ?? 0,
      status: (json['status'] as num?)?.toInt() ?? 0,
      unitPrice: json['unitPrice'] as String? ?? '',
      quantity: (json['quantity'] as num?)?.toInt() ?? 0,
      totalPrice: json['totalPrice'] as String? ?? '',
      transNo: json['transNo'] as String? ?? '',
    );

Map<String, dynamic> _$$AddServiceImplToJson(_$AddServiceImpl instance) =>
    <String, dynamic>{
      'serviceNo': instance.serviceNo,
      'type': instance.type,
      'status': instance.status,
      'unitPrice': instance.unitPrice,
      'quantity': instance.quantity,
      'totalPrice': instance.totalPrice,
      'transNo': instance.transNo,
    };

_$DeliveryInfoImpl _$$DeliveryInfoImplFromJson(Map<String, dynamic> json) =>
    _$DeliveryInfoImpl(
      deliveryNo: json['deliveryNo'] as String? ?? '',
      deliveryCode: json['deliveryCode'] as String? ?? '',
      deliveryName: json['deliveryName'] as String? ?? '',
    );

Map<String, dynamic> _$$DeliveryInfoImplToJson(_$DeliveryInfoImpl instance) =>
    <String, dynamic>{
      'deliveryNo': instance.deliveryNo,
      'deliveryCode': instance.deliveryCode,
      'deliveryName': instance.deliveryName,
    };

_$ReturnExchangeInfoImpl _$$ReturnExchangeInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$ReturnExchangeInfoImpl(
      isSupport: json['isSupport'] as bool? ?? false,
      isReturnExchangeEligible:
          json['isReturnExchangeEligible'] as bool? ?? false,
      timeout: (json['timeout'] as num?)?.toInt() ?? 0,
      arrivalTime: (json['arrivalTime'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ReturnExchangeInfoImplToJson(
        _$ReturnExchangeInfoImpl instance) =>
    <String, dynamic>{
      'isSupport': instance.isSupport,
      'isReturnExchangeEligible': instance.isReturnExchangeEligible,
      'timeout': instance.timeout,
      'arrivalTime': instance.arrivalTime,
    };
