// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_list_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderListEntity _$OrderListEntityFromJson(Map<String, dynamic> json) {
  return _OrderListEntity.fromJson(json);
}

/// @nodoc
mixin _$OrderListEntity {
  int get code => throw _privateConstructorUsedError; // 默认值为 0
  String get msg => throw _privateConstructorUsedError; // 默认值为空字符串
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderListEntityCopyWith<OrderListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderListEntityCopyWith<$Res> {
  factory $OrderListEntityCopyWith(
          OrderListEntity value, $Res Function(OrderListEntity) then) =
      _$OrderListEntityCopyWithImpl<$Res, OrderListEntity>;
  @useResult
  $Res call({int code, String msg, Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$OrderListEntityCopyWithImpl<$Res, $Val extends OrderListEntity>
    implements $OrderListEntityCopyWith<$Res> {
  _$OrderListEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? msg = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderListEntityImplCopyWith<$Res>
    implements $OrderListEntityCopyWith<$Res> {
  factory _$$OrderListEntityImplCopyWith(_$OrderListEntityImpl value,
          $Res Function(_$OrderListEntityImpl) then) =
      __$$OrderListEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String msg, Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$OrderListEntityImplCopyWithImpl<$Res>
    extends _$OrderListEntityCopyWithImpl<$Res, _$OrderListEntityImpl>
    implements _$$OrderListEntityImplCopyWith<$Res> {
  __$$OrderListEntityImplCopyWithImpl(
      _$OrderListEntityImpl _value, $Res Function(_$OrderListEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? msg = null,
    Object? data = null,
  }) {
    return _then(_$OrderListEntityImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderListEntityImpl implements _OrderListEntity {
  const _$OrderListEntityImpl(
      {this.code = 0,
      this.msg = '',
      this.data = const Data(list: [], count: 0)});

  factory _$OrderListEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderListEntityImplFromJson(json);

  @override
  @JsonKey()
  final int code;
// 默认值为 0
  @override
  @JsonKey()
  final String msg;
// 默认值为空字符串
  @override
  @JsonKey()
  final Data data;

  @override
  String toString() {
    return 'OrderListEntity(code: $code, msg: $msg, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderListEntityImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, msg, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderListEntityImplCopyWith<_$OrderListEntityImpl> get copyWith =>
      __$$OrderListEntityImplCopyWithImpl<_$OrderListEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderListEntityImplToJson(
      this,
    );
  }
}

abstract class _OrderListEntity implements OrderListEntity {
  const factory _OrderListEntity(
      {final int code,
      final String msg,
      final Data data}) = _$OrderListEntityImpl;

  factory _OrderListEntity.fromJson(Map<String, dynamic> json) =
      _$OrderListEntityImpl.fromJson;

  @override
  int get code;
  @override // 默认值为 0
  String get msg;
  @override // 默认值为空字符串
  Data get data;
  @override
  @JsonKey(ignore: true)
  _$$OrderListEntityImplCopyWith<_$OrderListEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  List<ListElement> get list => throw _privateConstructorUsedError; // 默认空列表
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({List<ListElement> list, int count});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ListElement>,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ListElement> list, int count});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? count = null,
  }) {
    return _then(_$DataImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ListElement>,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl({final List<ListElement> list = const [], this.count = 0})
      : _list = list;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  final List<ListElement> _list;
  @override
  @JsonKey()
  List<ListElement> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

// 默认空列表
  @override
  @JsonKey()
  final int count;

  @override
  String toString() {
    return 'Data(list: $list, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_list), count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data({final List<ListElement> list, final int count}) =
      _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  List<ListElement> get list;
  @override // 默认空列表
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ListElement _$ListElementFromJson(Map<String, dynamic> json) {
  return _ListElement.fromJson(json);
}

/// @nodoc
mixin _$ListElement {
  String get orderNo => throw _privateConstructorUsedError; // 默认值为空字符串
  String get orderId => throw _privateConstructorUsedError; // 默认值为空字符串
  int get createAt => throw _privateConstructorUsedError; // 默认值为 0
  String get amount => throw _privateConstructorUsedError; // 默认值为空字符串
  List<GoodsList> get goodsList => throw _privateConstructorUsedError; // 默认空列表
  String get currency => throw _privateConstructorUsedError; // 默认值为空字符串
  String get transNo => throw _privateConstructorUsedError; // 默认值为空字符串
  DTrans get addTrans => throw _privateConstructorUsedError; // 默认值为空的 DTrans
  String get cancelReason => throw _privateConstructorUsedError; // 默认值为空字符串
  String get shopName => throw _privateConstructorUsedError; // 默认值为空字符串
  String get shopId => throw _privateConstructorUsedError; // 默认值为空字符串
  int get channel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListElementCopyWith<ListElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListElementCopyWith<$Res> {
  factory $ListElementCopyWith(
          ListElement value, $Res Function(ListElement) then) =
      _$ListElementCopyWithImpl<$Res, ListElement>;
  @useResult
  $Res call(
      {String orderNo,
      String orderId,
      int createAt,
      String amount,
      List<GoodsList> goodsList,
      String currency,
      String transNo,
      DTrans addTrans,
      String cancelReason,
      String shopName,
      String shopId,
      int channel});

  $DTransCopyWith<$Res> get addTrans;
}

/// @nodoc
class _$ListElementCopyWithImpl<$Res, $Val extends ListElement>
    implements $ListElementCopyWith<$Res> {
  _$ListElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderNo = null,
    Object? orderId = null,
    Object? createAt = null,
    Object? amount = null,
    Object? goodsList = null,
    Object? currency = null,
    Object? transNo = null,
    Object? addTrans = null,
    Object? cancelReason = null,
    Object? shopName = null,
    Object? shopId = null,
    Object? channel = null,
  }) {
    return _then(_value.copyWith(
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      goodsList: null == goodsList
          ? _value.goodsList
          : goodsList // ignore: cast_nullable_to_non_nullable
              as List<GoodsList>,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      transNo: null == transNo
          ? _value.transNo
          : transNo // ignore: cast_nullable_to_non_nullable
              as String,
      addTrans: null == addTrans
          ? _value.addTrans
          : addTrans // ignore: cast_nullable_to_non_nullable
              as DTrans,
      cancelReason: null == cancelReason
          ? _value.cancelReason
          : cancelReason // ignore: cast_nullable_to_non_nullable
              as String,
      shopName: null == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      shopId: null == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DTransCopyWith<$Res> get addTrans {
    return $DTransCopyWith<$Res>(_value.addTrans, (value) {
      return _then(_value.copyWith(addTrans: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ListElementImplCopyWith<$Res>
    implements $ListElementCopyWith<$Res> {
  factory _$$ListElementImplCopyWith(
          _$ListElementImpl value, $Res Function(_$ListElementImpl) then) =
      __$$ListElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String orderNo,
      String orderId,
      int createAt,
      String amount,
      List<GoodsList> goodsList,
      String currency,
      String transNo,
      DTrans addTrans,
      String cancelReason,
      String shopName,
      String shopId,
      int channel});

  @override
  $DTransCopyWith<$Res> get addTrans;
}

/// @nodoc
class __$$ListElementImplCopyWithImpl<$Res>
    extends _$ListElementCopyWithImpl<$Res, _$ListElementImpl>
    implements _$$ListElementImplCopyWith<$Res> {
  __$$ListElementImplCopyWithImpl(
      _$ListElementImpl _value, $Res Function(_$ListElementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderNo = null,
    Object? orderId = null,
    Object? createAt = null,
    Object? amount = null,
    Object? goodsList = null,
    Object? currency = null,
    Object? transNo = null,
    Object? addTrans = null,
    Object? cancelReason = null,
    Object? shopName = null,
    Object? shopId = null,
    Object? channel = null,
  }) {
    return _then(_$ListElementImpl(
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      goodsList: null == goodsList
          ? _value._goodsList
          : goodsList // ignore: cast_nullable_to_non_nullable
              as List<GoodsList>,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      transNo: null == transNo
          ? _value.transNo
          : transNo // ignore: cast_nullable_to_non_nullable
              as String,
      addTrans: null == addTrans
          ? _value.addTrans
          : addTrans // ignore: cast_nullable_to_non_nullable
              as DTrans,
      cancelReason: null == cancelReason
          ? _value.cancelReason
          : cancelReason // ignore: cast_nullable_to_non_nullable
              as String,
      shopName: null == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      shopId: null == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListElementImpl implements _ListElement {
  const _$ListElementImpl(
      {this.orderNo = '',
      this.orderId = '',
      this.createAt = 0,
      this.amount = '',
      final List<GoodsList> goodsList = const [],
      this.currency = '',
      this.transNo = '',
      this.addTrans = const DTrans(addTransNo: '', createAt: 0, timeout: 0),
      this.cancelReason = '',
      this.shopName = '',
      this.shopId = '',
      this.channel = 0})
      : _goodsList = goodsList;

  factory _$ListElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListElementImplFromJson(json);

  @override
  @JsonKey()
  final String orderNo;
// 默认值为空字符串
  @override
  @JsonKey()
  final String orderId;
// 默认值为空字符串
  @override
  @JsonKey()
  final int createAt;
// 默认值为 0
  @override
  @JsonKey()
  final String amount;
// 默认值为空字符串
  final List<GoodsList> _goodsList;
// 默认值为空字符串
  @override
  @JsonKey()
  List<GoodsList> get goodsList {
    if (_goodsList is EqualUnmodifiableListView) return _goodsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_goodsList);
  }

// 默认空列表
  @override
  @JsonKey()
  final String currency;
// 默认值为空字符串
  @override
  @JsonKey()
  final String transNo;
// 默认值为空字符串
  @override
  @JsonKey()
  final DTrans addTrans;
// 默认值为空的 DTrans
  @override
  @JsonKey()
  final String cancelReason;
// 默认值为空字符串
  @override
  @JsonKey()
  final String shopName;
// 默认值为空字符串
  @override
  @JsonKey()
  final String shopId;
// 默认值为空字符串
  @override
  @JsonKey()
  final int channel;

  @override
  String toString() {
    return 'ListElement(orderNo: $orderNo, orderId: $orderId, createAt: $createAt, amount: $amount, goodsList: $goodsList, currency: $currency, transNo: $transNo, addTrans: $addTrans, cancelReason: $cancelReason, shopName: $shopName, shopId: $shopId, channel: $channel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListElementImpl &&
            (identical(other.orderNo, orderNo) || other.orderNo == orderNo) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            const DeepCollectionEquality()
                .equals(other._goodsList, _goodsList) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.transNo, transNo) || other.transNo == transNo) &&
            (identical(other.addTrans, addTrans) ||
                other.addTrans == addTrans) &&
            (identical(other.cancelReason, cancelReason) ||
                other.cancelReason == cancelReason) &&
            (identical(other.shopName, shopName) ||
                other.shopName == shopName) &&
            (identical(other.shopId, shopId) || other.shopId == shopId) &&
            (identical(other.channel, channel) || other.channel == channel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderNo,
      orderId,
      createAt,
      amount,
      const DeepCollectionEquality().hash(_goodsList),
      currency,
      transNo,
      addTrans,
      cancelReason,
      shopName,
      shopId,
      channel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListElementImplCopyWith<_$ListElementImpl> get copyWith =>
      __$$ListElementImplCopyWithImpl<_$ListElementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListElementImplToJson(
      this,
    );
  }
}

abstract class _ListElement implements ListElement {
  const factory _ListElement(
      {final String orderNo,
      final String orderId,
      final int createAt,
      final String amount,
      final List<GoodsList> goodsList,
      final String currency,
      final String transNo,
      final DTrans addTrans,
      final String cancelReason,
      final String shopName,
      final String shopId,
      final int channel}) = _$ListElementImpl;

  factory _ListElement.fromJson(Map<String, dynamic> json) =
      _$ListElementImpl.fromJson;

  @override
  String get orderNo;
  @override // 默认值为空字符串
  String get orderId;
  @override // 默认值为空字符串
  int get createAt;
  @override // 默认值为 0
  String get amount;
  @override // 默认值为空字符串
  List<GoodsList> get goodsList;
  @override // 默认空列表
  String get currency;
  @override // 默认值为空字符串
  String get transNo;
  @override // 默认值为空字符串
  DTrans get addTrans;
  @override // 默认值为空的 DTrans
  String get cancelReason;
  @override // 默认值为空字符串
  String get shopName;
  @override // 默认值为空字符串
  String get shopId;
  @override // 默认值为空字符串
  int get channel;
  @override
  @JsonKey(ignore: true)
  _$$ListElementImplCopyWith<_$ListElementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DTrans _$DTransFromJson(Map<String, dynamic> json) {
  return _DTrans.fromJson(json);
}

/// @nodoc
mixin _$DTrans {
  String get addTransNo => throw _privateConstructorUsedError; // 默认值为空字符串
  int get createAt => throw _privateConstructorUsedError; // 默认值为 0
  int get timeout => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DTransCopyWith<DTrans> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DTransCopyWith<$Res> {
  factory $DTransCopyWith(DTrans value, $Res Function(DTrans) then) =
      _$DTransCopyWithImpl<$Res, DTrans>;
  @useResult
  $Res call({String addTransNo, int createAt, int timeout});
}

/// @nodoc
class _$DTransCopyWithImpl<$Res, $Val extends DTrans>
    implements $DTransCopyWith<$Res> {
  _$DTransCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addTransNo = null,
    Object? createAt = null,
    Object? timeout = null,
  }) {
    return _then(_value.copyWith(
      addTransNo: null == addTransNo
          ? _value.addTransNo
          : addTransNo // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as int,
      timeout: null == timeout
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DTransImplCopyWith<$Res> implements $DTransCopyWith<$Res> {
  factory _$$DTransImplCopyWith(
          _$DTransImpl value, $Res Function(_$DTransImpl) then) =
      __$$DTransImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String addTransNo, int createAt, int timeout});
}

/// @nodoc
class __$$DTransImplCopyWithImpl<$Res>
    extends _$DTransCopyWithImpl<$Res, _$DTransImpl>
    implements _$$DTransImplCopyWith<$Res> {
  __$$DTransImplCopyWithImpl(
      _$DTransImpl _value, $Res Function(_$DTransImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addTransNo = null,
    Object? createAt = null,
    Object? timeout = null,
  }) {
    return _then(_$DTransImpl(
      addTransNo: null == addTransNo
          ? _value.addTransNo
          : addTransNo // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as int,
      timeout: null == timeout
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DTransImpl implements _DTrans {
  const _$DTransImpl(
      {this.addTransNo = '', this.createAt = 0, this.timeout = 0});

  factory _$DTransImpl.fromJson(Map<String, dynamic> json) =>
      _$$DTransImplFromJson(json);

  @override
  @JsonKey()
  final String addTransNo;
// 默认值为空字符串
  @override
  @JsonKey()
  final int createAt;
// 默认值为 0
  @override
  @JsonKey()
  final int timeout;

  @override
  String toString() {
    return 'DTrans(addTransNo: $addTransNo, createAt: $createAt, timeout: $timeout)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DTransImpl &&
            (identical(other.addTransNo, addTransNo) ||
                other.addTransNo == addTransNo) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.timeout, timeout) || other.timeout == timeout));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, addTransNo, createAt, timeout);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DTransImplCopyWith<_$DTransImpl> get copyWith =>
      __$$DTransImplCopyWithImpl<_$DTransImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DTransImplToJson(
      this,
    );
  }
}

abstract class _DTrans implements DTrans {
  const factory _DTrans(
      {final String addTransNo,
      final int createAt,
      final int timeout}) = _$DTransImpl;

  factory _DTrans.fromJson(Map<String, dynamic> json) = _$DTransImpl.fromJson;

  @override
  String get addTransNo;
  @override // 默认值为空字符串
  int get createAt;
  @override // 默认值为 0
  int get timeout;
  @override
  @JsonKey(ignore: true)
  _$$DTransImplCopyWith<_$DTransImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GoodsList _$GoodsListFromJson(Map<String, dynamic> json) {
  return _GoodsList.fromJson(json);
}

/// @nodoc
mixin _$GoodsList {
  String get offerId => throw _privateConstructorUsedError; // 默认值为空字符串
  String get title => throw _privateConstructorUsedError; // 默认值为空字符串
  String get skuInfo => throw _privateConstructorUsedError; // 默认值为空字符串
  int get quantity => throw _privateConstructorUsedError; // 默认值为 0
  String get unitPrice => throw _privateConstructorUsedError; // 默认值为空字符串
  String get goodsAmt => throw _privateConstructorUsedError; // 默认值为空字符串
  String get deliveryAmt => throw _privateConstructorUsedError; // 默认值为空字符串
  String get image => throw _privateConstructorUsedError; // 默认值为空字符串
  int get status => throw _privateConstructorUsedError; // 默认值为 0
  String get remark => throw _privateConstructorUsedError; // 默认值为空字符串
  String get orderGoodsNo => throw _privateConstructorUsedError; // 默认值为空字符串
  String get orderGoodsId => throw _privateConstructorUsedError; // 默认值为空字符串
  List<AddService> get addService =>
      throw _privateConstructorUsedError; // 默认空列表
  List<String> get freePhotos => throw _privateConstructorUsedError; // 默认空列表
  List<dynamic> get servicePhotos =>
      throw _privateConstructorUsedError; // 默认空列表
  bool get isHasMessage => throw _privateConstructorUsedError; // 默认值为 false
  String get deliveryNo => throw _privateConstructorUsedError; // 默认值为空字符串
  String get deliveryCode => throw _privateConstructorUsedError; // 默认值为空字符串
  String get deliveryName => throw _privateConstructorUsedError; // 默认值为空字符串
  List<DeliveryInfo> get deliveryInfos =>
      throw _privateConstructorUsedError; // 默认空列表
  String get thirdOrderNo => throw _privateConstructorUsedError; // 默认值为空字符串
  int get refundStatus => throw _privateConstructorUsedError; // 默认值为 0
  DTrans get refundTrans => throw _privateConstructorUsedError; // 默认空的 DTrans
  String get reason => throw _privateConstructorUsedError; // 默认值为空字符串
  int get reasonTime => throw _privateConstructorUsedError; // 默认值为 0
  String get offerUrl => throw _privateConstructorUsedError; // 默认值为空字符串
  int get channel => throw _privateConstructorUsedError; // 默认值为 0
  ReturnExchangeInfo get returnExchangeInfo =>
      throw _privateConstructorUsedError; // 默认 returnExchangeInfo 对象
  bool get isSupportReturnExchange =>
      throw _privateConstructorUsedError; // 默认值为 false
  int get orderType => throw _privateConstructorUsedError; // 默认值为 0
  bool get isSelfOperatedGoods =>
      throw _privateConstructorUsedError; // 默认值为 false
  List<String> get customImages => throw _privateConstructorUsedError; // 默认空列表
  DTrans get addTrans => throw _privateConstructorUsedError; // 默认空的 DTrans
  int get dialogUnReadNum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoodsListCopyWith<GoodsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoodsListCopyWith<$Res> {
  factory $GoodsListCopyWith(GoodsList value, $Res Function(GoodsList) then) =
      _$GoodsListCopyWithImpl<$Res, GoodsList>;
  @useResult
  $Res call(
      {String offerId,
      String title,
      String skuInfo,
      int quantity,
      String unitPrice,
      String goodsAmt,
      String deliveryAmt,
      String image,
      int status,
      String remark,
      String orderGoodsNo,
      String orderGoodsId,
      List<AddService> addService,
      List<String> freePhotos,
      List<dynamic> servicePhotos,
      bool isHasMessage,
      String deliveryNo,
      String deliveryCode,
      String deliveryName,
      List<DeliveryInfo> deliveryInfos,
      String thirdOrderNo,
      int refundStatus,
      DTrans refundTrans,
      String reason,
      int reasonTime,
      String offerUrl,
      int channel,
      ReturnExchangeInfo returnExchangeInfo,
      bool isSupportReturnExchange,
      int orderType,
      bool isSelfOperatedGoods,
      List<String> customImages,
      DTrans addTrans,
      int dialogUnReadNum});

  $DTransCopyWith<$Res> get refundTrans;
  $ReturnExchangeInfoCopyWith<$Res> get returnExchangeInfo;
  $DTransCopyWith<$Res> get addTrans;
}

/// @nodoc
class _$GoodsListCopyWithImpl<$Res, $Val extends GoodsList>
    implements $GoodsListCopyWith<$Res> {
  _$GoodsListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offerId = null,
    Object? title = null,
    Object? skuInfo = null,
    Object? quantity = null,
    Object? unitPrice = null,
    Object? goodsAmt = null,
    Object? deliveryAmt = null,
    Object? image = null,
    Object? status = null,
    Object? remark = null,
    Object? orderGoodsNo = null,
    Object? orderGoodsId = null,
    Object? addService = null,
    Object? freePhotos = null,
    Object? servicePhotos = null,
    Object? isHasMessage = null,
    Object? deliveryNo = null,
    Object? deliveryCode = null,
    Object? deliveryName = null,
    Object? deliveryInfos = null,
    Object? thirdOrderNo = null,
    Object? refundStatus = null,
    Object? refundTrans = null,
    Object? reason = null,
    Object? reasonTime = null,
    Object? offerUrl = null,
    Object? channel = null,
    Object? returnExchangeInfo = null,
    Object? isSupportReturnExchange = null,
    Object? orderType = null,
    Object? isSelfOperatedGoods = null,
    Object? customImages = null,
    Object? addTrans = null,
    Object? dialogUnReadNum = null,
  }) {
    return _then(_value.copyWith(
      offerId: null == offerId
          ? _value.offerId
          : offerId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      skuInfo: null == skuInfo
          ? _value.skuInfo
          : skuInfo // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as String,
      goodsAmt: null == goodsAmt
          ? _value.goodsAmt
          : goodsAmt // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAmt: null == deliveryAmt
          ? _value.deliveryAmt
          : deliveryAmt // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      orderGoodsNo: null == orderGoodsNo
          ? _value.orderGoodsNo
          : orderGoodsNo // ignore: cast_nullable_to_non_nullable
              as String,
      orderGoodsId: null == orderGoodsId
          ? _value.orderGoodsId
          : orderGoodsId // ignore: cast_nullable_to_non_nullable
              as String,
      addService: null == addService
          ? _value.addService
          : addService // ignore: cast_nullable_to_non_nullable
              as List<AddService>,
      freePhotos: null == freePhotos
          ? _value.freePhotos
          : freePhotos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      servicePhotos: null == servicePhotos
          ? _value.servicePhotos
          : servicePhotos // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      isHasMessage: null == isHasMessage
          ? _value.isHasMessage
          : isHasMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryNo: null == deliveryNo
          ? _value.deliveryNo
          : deliveryNo // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryCode: null == deliveryCode
          ? _value.deliveryCode
          : deliveryCode // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryName: null == deliveryName
          ? _value.deliveryName
          : deliveryName // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryInfos: null == deliveryInfos
          ? _value.deliveryInfos
          : deliveryInfos // ignore: cast_nullable_to_non_nullable
              as List<DeliveryInfo>,
      thirdOrderNo: null == thirdOrderNo
          ? _value.thirdOrderNo
          : thirdOrderNo // ignore: cast_nullable_to_non_nullable
              as String,
      refundStatus: null == refundStatus
          ? _value.refundStatus
          : refundStatus // ignore: cast_nullable_to_non_nullable
              as int,
      refundTrans: null == refundTrans
          ? _value.refundTrans
          : refundTrans // ignore: cast_nullable_to_non_nullable
              as DTrans,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      reasonTime: null == reasonTime
          ? _value.reasonTime
          : reasonTime // ignore: cast_nullable_to_non_nullable
              as int,
      offerUrl: null == offerUrl
          ? _value.offerUrl
          : offerUrl // ignore: cast_nullable_to_non_nullable
              as String,
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as int,
      returnExchangeInfo: null == returnExchangeInfo
          ? _value.returnExchangeInfo
          : returnExchangeInfo // ignore: cast_nullable_to_non_nullable
              as ReturnExchangeInfo,
      isSupportReturnExchange: null == isSupportReturnExchange
          ? _value.isSupportReturnExchange
          : isSupportReturnExchange // ignore: cast_nullable_to_non_nullable
              as bool,
      orderType: null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as int,
      isSelfOperatedGoods: null == isSelfOperatedGoods
          ? _value.isSelfOperatedGoods
          : isSelfOperatedGoods // ignore: cast_nullable_to_non_nullable
              as bool,
      customImages: null == customImages
          ? _value.customImages
          : customImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      addTrans: null == addTrans
          ? _value.addTrans
          : addTrans // ignore: cast_nullable_to_non_nullable
              as DTrans,
      dialogUnReadNum: null == dialogUnReadNum
          ? _value.dialogUnReadNum
          : dialogUnReadNum // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DTransCopyWith<$Res> get refundTrans {
    return $DTransCopyWith<$Res>(_value.refundTrans, (value) {
      return _then(_value.copyWith(refundTrans: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReturnExchangeInfoCopyWith<$Res> get returnExchangeInfo {
    return $ReturnExchangeInfoCopyWith<$Res>(_value.returnExchangeInfo,
        (value) {
      return _then(_value.copyWith(returnExchangeInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DTransCopyWith<$Res> get addTrans {
    return $DTransCopyWith<$Res>(_value.addTrans, (value) {
      return _then(_value.copyWith(addTrans: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GoodsListImplCopyWith<$Res>
    implements $GoodsListCopyWith<$Res> {
  factory _$$GoodsListImplCopyWith(
          _$GoodsListImpl value, $Res Function(_$GoodsListImpl) then) =
      __$$GoodsListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String offerId,
      String title,
      String skuInfo,
      int quantity,
      String unitPrice,
      String goodsAmt,
      String deliveryAmt,
      String image,
      int status,
      String remark,
      String orderGoodsNo,
      String orderGoodsId,
      List<AddService> addService,
      List<String> freePhotos,
      List<dynamic> servicePhotos,
      bool isHasMessage,
      String deliveryNo,
      String deliveryCode,
      String deliveryName,
      List<DeliveryInfo> deliveryInfos,
      String thirdOrderNo,
      int refundStatus,
      DTrans refundTrans,
      String reason,
      int reasonTime,
      String offerUrl,
      int channel,
      ReturnExchangeInfo returnExchangeInfo,
      bool isSupportReturnExchange,
      int orderType,
      bool isSelfOperatedGoods,
      List<String> customImages,
      DTrans addTrans,
      int dialogUnReadNum});

  @override
  $DTransCopyWith<$Res> get refundTrans;
  @override
  $ReturnExchangeInfoCopyWith<$Res> get returnExchangeInfo;
  @override
  $DTransCopyWith<$Res> get addTrans;
}

/// @nodoc
class __$$GoodsListImplCopyWithImpl<$Res>
    extends _$GoodsListCopyWithImpl<$Res, _$GoodsListImpl>
    implements _$$GoodsListImplCopyWith<$Res> {
  __$$GoodsListImplCopyWithImpl(
      _$GoodsListImpl _value, $Res Function(_$GoodsListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offerId = null,
    Object? title = null,
    Object? skuInfo = null,
    Object? quantity = null,
    Object? unitPrice = null,
    Object? goodsAmt = null,
    Object? deliveryAmt = null,
    Object? image = null,
    Object? status = null,
    Object? remark = null,
    Object? orderGoodsNo = null,
    Object? orderGoodsId = null,
    Object? addService = null,
    Object? freePhotos = null,
    Object? servicePhotos = null,
    Object? isHasMessage = null,
    Object? deliveryNo = null,
    Object? deliveryCode = null,
    Object? deliveryName = null,
    Object? deliveryInfos = null,
    Object? thirdOrderNo = null,
    Object? refundStatus = null,
    Object? refundTrans = null,
    Object? reason = null,
    Object? reasonTime = null,
    Object? offerUrl = null,
    Object? channel = null,
    Object? returnExchangeInfo = null,
    Object? isSupportReturnExchange = null,
    Object? orderType = null,
    Object? isSelfOperatedGoods = null,
    Object? customImages = null,
    Object? addTrans = null,
    Object? dialogUnReadNum = null,
  }) {
    return _then(_$GoodsListImpl(
      offerId: null == offerId
          ? _value.offerId
          : offerId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      skuInfo: null == skuInfo
          ? _value.skuInfo
          : skuInfo // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as String,
      goodsAmt: null == goodsAmt
          ? _value.goodsAmt
          : goodsAmt // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAmt: null == deliveryAmt
          ? _value.deliveryAmt
          : deliveryAmt // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      orderGoodsNo: null == orderGoodsNo
          ? _value.orderGoodsNo
          : orderGoodsNo // ignore: cast_nullable_to_non_nullable
              as String,
      orderGoodsId: null == orderGoodsId
          ? _value.orderGoodsId
          : orderGoodsId // ignore: cast_nullable_to_non_nullable
              as String,
      addService: null == addService
          ? _value._addService
          : addService // ignore: cast_nullable_to_non_nullable
              as List<AddService>,
      freePhotos: null == freePhotos
          ? _value._freePhotos
          : freePhotos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      servicePhotos: null == servicePhotos
          ? _value._servicePhotos
          : servicePhotos // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      isHasMessage: null == isHasMessage
          ? _value.isHasMessage
          : isHasMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryNo: null == deliveryNo
          ? _value.deliveryNo
          : deliveryNo // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryCode: null == deliveryCode
          ? _value.deliveryCode
          : deliveryCode // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryName: null == deliveryName
          ? _value.deliveryName
          : deliveryName // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryInfos: null == deliveryInfos
          ? _value._deliveryInfos
          : deliveryInfos // ignore: cast_nullable_to_non_nullable
              as List<DeliveryInfo>,
      thirdOrderNo: null == thirdOrderNo
          ? _value.thirdOrderNo
          : thirdOrderNo // ignore: cast_nullable_to_non_nullable
              as String,
      refundStatus: null == refundStatus
          ? _value.refundStatus
          : refundStatus // ignore: cast_nullable_to_non_nullable
              as int,
      refundTrans: null == refundTrans
          ? _value.refundTrans
          : refundTrans // ignore: cast_nullable_to_non_nullable
              as DTrans,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      reasonTime: null == reasonTime
          ? _value.reasonTime
          : reasonTime // ignore: cast_nullable_to_non_nullable
              as int,
      offerUrl: null == offerUrl
          ? _value.offerUrl
          : offerUrl // ignore: cast_nullable_to_non_nullable
              as String,
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as int,
      returnExchangeInfo: null == returnExchangeInfo
          ? _value.returnExchangeInfo
          : returnExchangeInfo // ignore: cast_nullable_to_non_nullable
              as ReturnExchangeInfo,
      isSupportReturnExchange: null == isSupportReturnExchange
          ? _value.isSupportReturnExchange
          : isSupportReturnExchange // ignore: cast_nullable_to_non_nullable
              as bool,
      orderType: null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as int,
      isSelfOperatedGoods: null == isSelfOperatedGoods
          ? _value.isSelfOperatedGoods
          : isSelfOperatedGoods // ignore: cast_nullable_to_non_nullable
              as bool,
      customImages: null == customImages
          ? _value._customImages
          : customImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      addTrans: null == addTrans
          ? _value.addTrans
          : addTrans // ignore: cast_nullable_to_non_nullable
              as DTrans,
      dialogUnReadNum: null == dialogUnReadNum
          ? _value.dialogUnReadNum
          : dialogUnReadNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoodsListImpl implements _GoodsList {
  const _$GoodsListImpl(
      {this.offerId = '',
      this.title = '',
      this.skuInfo = '',
      this.quantity = 0,
      this.unitPrice = '',
      this.goodsAmt = '',
      this.deliveryAmt = '',
      this.image = '',
      this.status = 0,
      this.remark = '',
      this.orderGoodsNo = '',
      this.orderGoodsId = '',
      final List<AddService> addService = const [],
      final List<String> freePhotos = const [],
      final List<dynamic> servicePhotos = const [],
      this.isHasMessage = false,
      this.deliveryNo = '',
      this.deliveryCode = '',
      this.deliveryName = '',
      final List<DeliveryInfo> deliveryInfos = const [],
      this.thirdOrderNo = '',
      this.refundStatus = 0,
      this.refundTrans = const DTrans(addTransNo: '', createAt: 0, timeout: 0),
      this.reason = '',
      this.reasonTime = 0,
      this.offerUrl = '',
      this.channel = 0,
      this.returnExchangeInfo = const ReturnExchangeInfo(
          isSupport: false,
          isReturnExchangeEligible: false,
          timeout: 0,
          arrivalTime: 0),
      this.isSupportReturnExchange = false,
      this.orderType = 0,
      this.isSelfOperatedGoods = false,
      final List<String> customImages = const [],
      this.addTrans = const DTrans(addTransNo: '', createAt: 0, timeout: 0),
      this.dialogUnReadNum = 0})
      : _addService = addService,
        _freePhotos = freePhotos,
        _servicePhotos = servicePhotos,
        _deliveryInfos = deliveryInfos,
        _customImages = customImages;

  factory _$GoodsListImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoodsListImplFromJson(json);

  @override
  @JsonKey()
  final String offerId;
// 默认值为空字符串
  @override
  @JsonKey()
  final String title;
// 默认值为空字符串
  @override
  @JsonKey()
  final String skuInfo;
// 默认值为空字符串
  @override
  @JsonKey()
  final int quantity;
// 默认值为 0
  @override
  @JsonKey()
  final String unitPrice;
// 默认值为空字符串
  @override
  @JsonKey()
  final String goodsAmt;
// 默认值为空字符串
  @override
  @JsonKey()
  final String deliveryAmt;
// 默认值为空字符串
  @override
  @JsonKey()
  final String image;
// 默认值为空字符串
  @override
  @JsonKey()
  final int status;
// 默认值为 0
  @override
  @JsonKey()
  final String remark;
// 默认值为空字符串
  @override
  @JsonKey()
  final String orderGoodsNo;
// 默认值为空字符串
  @override
  @JsonKey()
  final String orderGoodsId;
// 默认值为空字符串
  final List<AddService> _addService;
// 默认值为空字符串
  @override
  @JsonKey()
  List<AddService> get addService {
    if (_addService is EqualUnmodifiableListView) return _addService;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addService);
  }

// 默认空列表
  final List<String> _freePhotos;
// 默认空列表
  @override
  @JsonKey()
  List<String> get freePhotos {
    if (_freePhotos is EqualUnmodifiableListView) return _freePhotos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_freePhotos);
  }

// 默认空列表
  final List<dynamic> _servicePhotos;
// 默认空列表
  @override
  @JsonKey()
  List<dynamic> get servicePhotos {
    if (_servicePhotos is EqualUnmodifiableListView) return _servicePhotos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_servicePhotos);
  }

// 默认空列表
  @override
  @JsonKey()
  final bool isHasMessage;
// 默认值为 false
  @override
  @JsonKey()
  final String deliveryNo;
// 默认值为空字符串
  @override
  @JsonKey()
  final String deliveryCode;
// 默认值为空字符串
  @override
  @JsonKey()
  final String deliveryName;
// 默认值为空字符串
  final List<DeliveryInfo> _deliveryInfos;
// 默认值为空字符串
  @override
  @JsonKey()
  List<DeliveryInfo> get deliveryInfos {
    if (_deliveryInfos is EqualUnmodifiableListView) return _deliveryInfos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deliveryInfos);
  }

// 默认空列表
  @override
  @JsonKey()
  final String thirdOrderNo;
// 默认值为空字符串
  @override
  @JsonKey()
  final int refundStatus;
// 默认值为 0
  @override
  @JsonKey()
  final DTrans refundTrans;
// 默认空的 DTrans
  @override
  @JsonKey()
  final String reason;
// 默认值为空字符串
  @override
  @JsonKey()
  final int reasonTime;
// 默认值为 0
  @override
  @JsonKey()
  final String offerUrl;
// 默认值为空字符串
  @override
  @JsonKey()
  final int channel;
// 默认值为 0
  @override
  @JsonKey()
  final ReturnExchangeInfo returnExchangeInfo;
// 默认 returnExchangeInfo 对象
  @override
  @JsonKey()
  final bool isSupportReturnExchange;
// 默认值为 false
  @override
  @JsonKey()
  final int orderType;
// 默认值为 0
  @override
  @JsonKey()
  final bool isSelfOperatedGoods;
// 默认值为 false
  final List<String> _customImages;
// 默认值为 false
  @override
  @JsonKey()
  List<String> get customImages {
    if (_customImages is EqualUnmodifiableListView) return _customImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customImages);
  }

// 默认空列表
  @override
  @JsonKey()
  final DTrans addTrans;
// 默认空的 DTrans
  @override
  @JsonKey()
  final int dialogUnReadNum;

  @override
  String toString() {
    return 'GoodsList(offerId: $offerId, title: $title, skuInfo: $skuInfo, quantity: $quantity, unitPrice: $unitPrice, goodsAmt: $goodsAmt, deliveryAmt: $deliveryAmt, image: $image, status: $status, remark: $remark, orderGoodsNo: $orderGoodsNo, orderGoodsId: $orderGoodsId, addService: $addService, freePhotos: $freePhotos, servicePhotos: $servicePhotos, isHasMessage: $isHasMessage, deliveryNo: $deliveryNo, deliveryCode: $deliveryCode, deliveryName: $deliveryName, deliveryInfos: $deliveryInfos, thirdOrderNo: $thirdOrderNo, refundStatus: $refundStatus, refundTrans: $refundTrans, reason: $reason, reasonTime: $reasonTime, offerUrl: $offerUrl, channel: $channel, returnExchangeInfo: $returnExchangeInfo, isSupportReturnExchange: $isSupportReturnExchange, orderType: $orderType, isSelfOperatedGoods: $isSelfOperatedGoods, customImages: $customImages, addTrans: $addTrans, dialogUnReadNum: $dialogUnReadNum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoodsListImpl &&
            (identical(other.offerId, offerId) || other.offerId == offerId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.skuInfo, skuInfo) || other.skuInfo == skuInfo) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.goodsAmt, goodsAmt) ||
                other.goodsAmt == goodsAmt) &&
            (identical(other.deliveryAmt, deliveryAmt) ||
                other.deliveryAmt == deliveryAmt) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.orderGoodsNo, orderGoodsNo) ||
                other.orderGoodsNo == orderGoodsNo) &&
            (identical(other.orderGoodsId, orderGoodsId) ||
                other.orderGoodsId == orderGoodsId) &&
            const DeepCollectionEquality()
                .equals(other._addService, _addService) &&
            const DeepCollectionEquality()
                .equals(other._freePhotos, _freePhotos) &&
            const DeepCollectionEquality()
                .equals(other._servicePhotos, _servicePhotos) &&
            (identical(other.isHasMessage, isHasMessage) ||
                other.isHasMessage == isHasMessage) &&
            (identical(other.deliveryNo, deliveryNo) ||
                other.deliveryNo == deliveryNo) &&
            (identical(other.deliveryCode, deliveryCode) ||
                other.deliveryCode == deliveryCode) &&
            (identical(other.deliveryName, deliveryName) ||
                other.deliveryName == deliveryName) &&
            const DeepCollectionEquality()
                .equals(other._deliveryInfos, _deliveryInfos) &&
            (identical(other.thirdOrderNo, thirdOrderNo) ||
                other.thirdOrderNo == thirdOrderNo) &&
            (identical(other.refundStatus, refundStatus) ||
                other.refundStatus == refundStatus) &&
            (identical(other.refundTrans, refundTrans) ||
                other.refundTrans == refundTrans) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.reasonTime, reasonTime) ||
                other.reasonTime == reasonTime) &&
            (identical(other.offerUrl, offerUrl) ||
                other.offerUrl == offerUrl) &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.returnExchangeInfo, returnExchangeInfo) ||
                other.returnExchangeInfo == returnExchangeInfo) &&
            (identical(
                    other.isSupportReturnExchange, isSupportReturnExchange) ||
                other.isSupportReturnExchange == isSupportReturnExchange) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            (identical(other.isSelfOperatedGoods, isSelfOperatedGoods) ||
                other.isSelfOperatedGoods == isSelfOperatedGoods) &&
            const DeepCollectionEquality()
                .equals(other._customImages, _customImages) &&
            (identical(other.addTrans, addTrans) ||
                other.addTrans == addTrans) &&
            (identical(other.dialogUnReadNum, dialogUnReadNum) ||
                other.dialogUnReadNum == dialogUnReadNum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        offerId,
        title,
        skuInfo,
        quantity,
        unitPrice,
        goodsAmt,
        deliveryAmt,
        image,
        status,
        remark,
        orderGoodsNo,
        orderGoodsId,
        const DeepCollectionEquality().hash(_addService),
        const DeepCollectionEquality().hash(_freePhotos),
        const DeepCollectionEquality().hash(_servicePhotos),
        isHasMessage,
        deliveryNo,
        deliveryCode,
        deliveryName,
        const DeepCollectionEquality().hash(_deliveryInfos),
        thirdOrderNo,
        refundStatus,
        refundTrans,
        reason,
        reasonTime,
        offerUrl,
        channel,
        returnExchangeInfo,
        isSupportReturnExchange,
        orderType,
        isSelfOperatedGoods,
        const DeepCollectionEquality().hash(_customImages),
        addTrans,
        dialogUnReadNum
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoodsListImplCopyWith<_$GoodsListImpl> get copyWith =>
      __$$GoodsListImplCopyWithImpl<_$GoodsListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoodsListImplToJson(
      this,
    );
  }
}

abstract class _GoodsList implements GoodsList {
  const factory _GoodsList(
      {final String offerId,
      final String title,
      final String skuInfo,
      final int quantity,
      final String unitPrice,
      final String goodsAmt,
      final String deliveryAmt,
      final String image,
      final int status,
      final String remark,
      final String orderGoodsNo,
      final String orderGoodsId,
      final List<AddService> addService,
      final List<String> freePhotos,
      final List<dynamic> servicePhotos,
      final bool isHasMessage,
      final String deliveryNo,
      final String deliveryCode,
      final String deliveryName,
      final List<DeliveryInfo> deliveryInfos,
      final String thirdOrderNo,
      final int refundStatus,
      final DTrans refundTrans,
      final String reason,
      final int reasonTime,
      final String offerUrl,
      final int channel,
      final ReturnExchangeInfo returnExchangeInfo,
      final bool isSupportReturnExchange,
      final int orderType,
      final bool isSelfOperatedGoods,
      final List<String> customImages,
      final DTrans addTrans,
      final int dialogUnReadNum}) = _$GoodsListImpl;

  factory _GoodsList.fromJson(Map<String, dynamic> json) =
      _$GoodsListImpl.fromJson;

  @override
  String get offerId;
  @override // 默认值为空字符串
  String get title;
  @override // 默认值为空字符串
  String get skuInfo;
  @override // 默认值为空字符串
  int get quantity;
  @override // 默认值为 0
  String get unitPrice;
  @override // 默认值为空字符串
  String get goodsAmt;
  @override // 默认值为空字符串
  String get deliveryAmt;
  @override // 默认值为空字符串
  String get image;
  @override // 默认值为空字符串
  int get status;
  @override // 默认值为 0
  String get remark;
  @override // 默认值为空字符串
  String get orderGoodsNo;
  @override // 默认值为空字符串
  String get orderGoodsId;
  @override // 默认值为空字符串
  List<AddService> get addService;
  @override // 默认空列表
  List<String> get freePhotos;
  @override // 默认空列表
  List<dynamic> get servicePhotos;
  @override // 默认空列表
  bool get isHasMessage;
  @override // 默认值为 false
  String get deliveryNo;
  @override // 默认值为空字符串
  String get deliveryCode;
  @override // 默认值为空字符串
  String get deliveryName;
  @override // 默认值为空字符串
  List<DeliveryInfo> get deliveryInfos;
  @override // 默认空列表
  String get thirdOrderNo;
  @override // 默认值为空字符串
  int get refundStatus;
  @override // 默认值为 0
  DTrans get refundTrans;
  @override // 默认空的 DTrans
  String get reason;
  @override // 默认值为空字符串
  int get reasonTime;
  @override // 默认值为 0
  String get offerUrl;
  @override // 默认值为空字符串
  int get channel;
  @override // 默认值为 0
  ReturnExchangeInfo get returnExchangeInfo;
  @override // 默认 returnExchangeInfo 对象
  bool get isSupportReturnExchange;
  @override // 默认值为 false
  int get orderType;
  @override // 默认值为 0
  bool get isSelfOperatedGoods;
  @override // 默认值为 false
  List<String> get customImages;
  @override // 默认空列表
  DTrans get addTrans;
  @override // 默认空的 DTrans
  int get dialogUnReadNum;
  @override
  @JsonKey(ignore: true)
  _$$GoodsListImplCopyWith<_$GoodsListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddService _$AddServiceFromJson(Map<String, dynamic> json) {
  return _AddService.fromJson(json);
}

/// @nodoc
mixin _$AddService {
  String get serviceNo => throw _privateConstructorUsedError; // 默认值为空字符串
  int get type => throw _privateConstructorUsedError; // 默认值为 0
  int get status => throw _privateConstructorUsedError; // 默认值为 0
  String get unitPrice => throw _privateConstructorUsedError; // 默认值为空字符串
  int get quantity => throw _privateConstructorUsedError; // 默认值为 0
  String get totalPrice => throw _privateConstructorUsedError; // 默认值为空字符串
  String get transNo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddServiceCopyWith<AddService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddServiceCopyWith<$Res> {
  factory $AddServiceCopyWith(
          AddService value, $Res Function(AddService) then) =
      _$AddServiceCopyWithImpl<$Res, AddService>;
  @useResult
  $Res call(
      {String serviceNo,
      int type,
      int status,
      String unitPrice,
      int quantity,
      String totalPrice,
      String transNo});
}

/// @nodoc
class _$AddServiceCopyWithImpl<$Res, $Val extends AddService>
    implements $AddServiceCopyWith<$Res> {
  _$AddServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceNo = null,
    Object? type = null,
    Object? status = null,
    Object? unitPrice = null,
    Object? quantity = null,
    Object? totalPrice = null,
    Object? transNo = null,
  }) {
    return _then(_value.copyWith(
      serviceNo: null == serviceNo
          ? _value.serviceNo
          : serviceNo // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String,
      transNo: null == transNo
          ? _value.transNo
          : transNo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddServiceImplCopyWith<$Res>
    implements $AddServiceCopyWith<$Res> {
  factory _$$AddServiceImplCopyWith(
          _$AddServiceImpl value, $Res Function(_$AddServiceImpl) then) =
      __$$AddServiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String serviceNo,
      int type,
      int status,
      String unitPrice,
      int quantity,
      String totalPrice,
      String transNo});
}

/// @nodoc
class __$$AddServiceImplCopyWithImpl<$Res>
    extends _$AddServiceCopyWithImpl<$Res, _$AddServiceImpl>
    implements _$$AddServiceImplCopyWith<$Res> {
  __$$AddServiceImplCopyWithImpl(
      _$AddServiceImpl _value, $Res Function(_$AddServiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceNo = null,
    Object? type = null,
    Object? status = null,
    Object? unitPrice = null,
    Object? quantity = null,
    Object? totalPrice = null,
    Object? transNo = null,
  }) {
    return _then(_$AddServiceImpl(
      serviceNo: null == serviceNo
          ? _value.serviceNo
          : serviceNo // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String,
      transNo: null == transNo
          ? _value.transNo
          : transNo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddServiceImpl implements _AddService {
  const _$AddServiceImpl(
      {this.serviceNo = '',
      this.type = 0,
      this.status = 0,
      this.unitPrice = '',
      this.quantity = 0,
      this.totalPrice = '',
      this.transNo = ''});

  factory _$AddServiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddServiceImplFromJson(json);

  @override
  @JsonKey()
  final String serviceNo;
// 默认值为空字符串
  @override
  @JsonKey()
  final int type;
// 默认值为 0
  @override
  @JsonKey()
  final int status;
// 默认值为 0
  @override
  @JsonKey()
  final String unitPrice;
// 默认值为空字符串
  @override
  @JsonKey()
  final int quantity;
// 默认值为 0
  @override
  @JsonKey()
  final String totalPrice;
// 默认值为空字符串
  @override
  @JsonKey()
  final String transNo;

  @override
  String toString() {
    return 'AddService(serviceNo: $serviceNo, type: $type, status: $status, unitPrice: $unitPrice, quantity: $quantity, totalPrice: $totalPrice, transNo: $transNo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddServiceImpl &&
            (identical(other.serviceNo, serviceNo) ||
                other.serviceNo == serviceNo) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.transNo, transNo) || other.transNo == transNo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, serviceNo, type, status,
      unitPrice, quantity, totalPrice, transNo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddServiceImplCopyWith<_$AddServiceImpl> get copyWith =>
      __$$AddServiceImplCopyWithImpl<_$AddServiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddServiceImplToJson(
      this,
    );
  }
}

abstract class _AddService implements AddService {
  const factory _AddService(
      {final String serviceNo,
      final int type,
      final int status,
      final String unitPrice,
      final int quantity,
      final String totalPrice,
      final String transNo}) = _$AddServiceImpl;

  factory _AddService.fromJson(Map<String, dynamic> json) =
      _$AddServiceImpl.fromJson;

  @override
  String get serviceNo;
  @override // 默认值为空字符串
  int get type;
  @override // 默认值为 0
  int get status;
  @override // 默认值为 0
  String get unitPrice;
  @override // 默认值为空字符串
  int get quantity;
  @override // 默认值为 0
  String get totalPrice;
  @override // 默认值为空字符串
  String get transNo;
  @override
  @JsonKey(ignore: true)
  _$$AddServiceImplCopyWith<_$AddServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeliveryInfo _$DeliveryInfoFromJson(Map<String, dynamic> json) {
  return _DeliveryInfo.fromJson(json);
}

/// @nodoc
mixin _$DeliveryInfo {
  String get deliveryNo => throw _privateConstructorUsedError; // 默认值为空字符串
  String get deliveryCode => throw _privateConstructorUsedError; // 默认值为空字符串
  String get deliveryName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryInfoCopyWith<DeliveryInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryInfoCopyWith<$Res> {
  factory $DeliveryInfoCopyWith(
          DeliveryInfo value, $Res Function(DeliveryInfo) then) =
      _$DeliveryInfoCopyWithImpl<$Res, DeliveryInfo>;
  @useResult
  $Res call({String deliveryNo, String deliveryCode, String deliveryName});
}

/// @nodoc
class _$DeliveryInfoCopyWithImpl<$Res, $Val extends DeliveryInfo>
    implements $DeliveryInfoCopyWith<$Res> {
  _$DeliveryInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryNo = null,
    Object? deliveryCode = null,
    Object? deliveryName = null,
  }) {
    return _then(_value.copyWith(
      deliveryNo: null == deliveryNo
          ? _value.deliveryNo
          : deliveryNo // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryCode: null == deliveryCode
          ? _value.deliveryCode
          : deliveryCode // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryName: null == deliveryName
          ? _value.deliveryName
          : deliveryName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryInfoImplCopyWith<$Res>
    implements $DeliveryInfoCopyWith<$Res> {
  factory _$$DeliveryInfoImplCopyWith(
          _$DeliveryInfoImpl value, $Res Function(_$DeliveryInfoImpl) then) =
      __$$DeliveryInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String deliveryNo, String deliveryCode, String deliveryName});
}

/// @nodoc
class __$$DeliveryInfoImplCopyWithImpl<$Res>
    extends _$DeliveryInfoCopyWithImpl<$Res, _$DeliveryInfoImpl>
    implements _$$DeliveryInfoImplCopyWith<$Res> {
  __$$DeliveryInfoImplCopyWithImpl(
      _$DeliveryInfoImpl _value, $Res Function(_$DeliveryInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryNo = null,
    Object? deliveryCode = null,
    Object? deliveryName = null,
  }) {
    return _then(_$DeliveryInfoImpl(
      deliveryNo: null == deliveryNo
          ? _value.deliveryNo
          : deliveryNo // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryCode: null == deliveryCode
          ? _value.deliveryCode
          : deliveryCode // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryName: null == deliveryName
          ? _value.deliveryName
          : deliveryName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryInfoImpl implements _DeliveryInfo {
  const _$DeliveryInfoImpl(
      {this.deliveryNo = '', this.deliveryCode = '', this.deliveryName = ''});

  factory _$DeliveryInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryInfoImplFromJson(json);

  @override
  @JsonKey()
  final String deliveryNo;
// 默认值为空字符串
  @override
  @JsonKey()
  final String deliveryCode;
// 默认值为空字符串
  @override
  @JsonKey()
  final String deliveryName;

  @override
  String toString() {
    return 'DeliveryInfo(deliveryNo: $deliveryNo, deliveryCode: $deliveryCode, deliveryName: $deliveryName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryInfoImpl &&
            (identical(other.deliveryNo, deliveryNo) ||
                other.deliveryNo == deliveryNo) &&
            (identical(other.deliveryCode, deliveryCode) ||
                other.deliveryCode == deliveryCode) &&
            (identical(other.deliveryName, deliveryName) ||
                other.deliveryName == deliveryName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, deliveryNo, deliveryCode, deliveryName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryInfoImplCopyWith<_$DeliveryInfoImpl> get copyWith =>
      __$$DeliveryInfoImplCopyWithImpl<_$DeliveryInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryInfoImplToJson(
      this,
    );
  }
}

abstract class _DeliveryInfo implements DeliveryInfo {
  const factory _DeliveryInfo(
      {final String deliveryNo,
      final String deliveryCode,
      final String deliveryName}) = _$DeliveryInfoImpl;

  factory _DeliveryInfo.fromJson(Map<String, dynamic> json) =
      _$DeliveryInfoImpl.fromJson;

  @override
  String get deliveryNo;
  @override // 默认值为空字符串
  String get deliveryCode;
  @override // 默认值为空字符串
  String get deliveryName;
  @override
  @JsonKey(ignore: true)
  _$$DeliveryInfoImplCopyWith<_$DeliveryInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReturnExchangeInfo _$ReturnExchangeInfoFromJson(Map<String, dynamic> json) {
  return _ReturnExchangeInfo.fromJson(json);
}

/// @nodoc
mixin _$ReturnExchangeInfo {
  bool get isSupport => throw _privateConstructorUsedError; // 默认值为 false
  bool get isReturnExchangeEligible =>
      throw _privateConstructorUsedError; // 默认值为 false
  int get timeout => throw _privateConstructorUsedError; // 默认值为 0
  int get arrivalTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReturnExchangeInfoCopyWith<ReturnExchangeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReturnExchangeInfoCopyWith<$Res> {
  factory $ReturnExchangeInfoCopyWith(
          ReturnExchangeInfo value, $Res Function(ReturnExchangeInfo) then) =
      _$ReturnExchangeInfoCopyWithImpl<$Res, ReturnExchangeInfo>;
  @useResult
  $Res call(
      {bool isSupport,
      bool isReturnExchangeEligible,
      int timeout,
      int arrivalTime});
}

/// @nodoc
class _$ReturnExchangeInfoCopyWithImpl<$Res, $Val extends ReturnExchangeInfo>
    implements $ReturnExchangeInfoCopyWith<$Res> {
  _$ReturnExchangeInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSupport = null,
    Object? isReturnExchangeEligible = null,
    Object? timeout = null,
    Object? arrivalTime = null,
  }) {
    return _then(_value.copyWith(
      isSupport: null == isSupport
          ? _value.isSupport
          : isSupport // ignore: cast_nullable_to_non_nullable
              as bool,
      isReturnExchangeEligible: null == isReturnExchangeEligible
          ? _value.isReturnExchangeEligible
          : isReturnExchangeEligible // ignore: cast_nullable_to_non_nullable
              as bool,
      timeout: null == timeout
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as int,
      arrivalTime: null == arrivalTime
          ? _value.arrivalTime
          : arrivalTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReturnExchangeInfoImplCopyWith<$Res>
    implements $ReturnExchangeInfoCopyWith<$Res> {
  factory _$$ReturnExchangeInfoImplCopyWith(_$ReturnExchangeInfoImpl value,
          $Res Function(_$ReturnExchangeInfoImpl) then) =
      __$$ReturnExchangeInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSupport,
      bool isReturnExchangeEligible,
      int timeout,
      int arrivalTime});
}

/// @nodoc
class __$$ReturnExchangeInfoImplCopyWithImpl<$Res>
    extends _$ReturnExchangeInfoCopyWithImpl<$Res, _$ReturnExchangeInfoImpl>
    implements _$$ReturnExchangeInfoImplCopyWith<$Res> {
  __$$ReturnExchangeInfoImplCopyWithImpl(_$ReturnExchangeInfoImpl _value,
      $Res Function(_$ReturnExchangeInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSupport = null,
    Object? isReturnExchangeEligible = null,
    Object? timeout = null,
    Object? arrivalTime = null,
  }) {
    return _then(_$ReturnExchangeInfoImpl(
      isSupport: null == isSupport
          ? _value.isSupport
          : isSupport // ignore: cast_nullable_to_non_nullable
              as bool,
      isReturnExchangeEligible: null == isReturnExchangeEligible
          ? _value.isReturnExchangeEligible
          : isReturnExchangeEligible // ignore: cast_nullable_to_non_nullable
              as bool,
      timeout: null == timeout
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as int,
      arrivalTime: null == arrivalTime
          ? _value.arrivalTime
          : arrivalTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReturnExchangeInfoImpl implements _ReturnExchangeInfo {
  const _$ReturnExchangeInfoImpl(
      {this.isSupport = false,
      this.isReturnExchangeEligible = false,
      this.timeout = 0,
      this.arrivalTime = 0});

  factory _$ReturnExchangeInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReturnExchangeInfoImplFromJson(json);

  @override
  @JsonKey()
  final bool isSupport;
// 默认值为 false
  @override
  @JsonKey()
  final bool isReturnExchangeEligible;
// 默认值为 false
  @override
  @JsonKey()
  final int timeout;
// 默认值为 0
  @override
  @JsonKey()
  final int arrivalTime;

  @override
  String toString() {
    return 'ReturnExchangeInfo(isSupport: $isSupport, isReturnExchangeEligible: $isReturnExchangeEligible, timeout: $timeout, arrivalTime: $arrivalTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReturnExchangeInfoImpl &&
            (identical(other.isSupport, isSupport) ||
                other.isSupport == isSupport) &&
            (identical(
                    other.isReturnExchangeEligible, isReturnExchangeEligible) ||
                other.isReturnExchangeEligible == isReturnExchangeEligible) &&
            (identical(other.timeout, timeout) || other.timeout == timeout) &&
            (identical(other.arrivalTime, arrivalTime) ||
                other.arrivalTime == arrivalTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, isSupport, isReturnExchangeEligible, timeout, arrivalTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReturnExchangeInfoImplCopyWith<_$ReturnExchangeInfoImpl> get copyWith =>
      __$$ReturnExchangeInfoImplCopyWithImpl<_$ReturnExchangeInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReturnExchangeInfoImplToJson(
      this,
    );
  }
}

abstract class _ReturnExchangeInfo implements ReturnExchangeInfo {
  const factory _ReturnExchangeInfo(
      {final bool isSupport,
      final bool isReturnExchangeEligible,
      final int timeout,
      final int arrivalTime}) = _$ReturnExchangeInfoImpl;

  factory _ReturnExchangeInfo.fromJson(Map<String, dynamic> json) =
      _$ReturnExchangeInfoImpl.fromJson;

  @override
  bool get isSupport;
  @override // 默认值为 false
  bool get isReturnExchangeEligible;
  @override // 默认值为 false
  int get timeout;
  @override // 默认值为 0
  int get arrivalTime;
  @override
  @JsonKey(ignore: true)
  _$$ReturnExchangeInfoImplCopyWith<_$ReturnExchangeInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
