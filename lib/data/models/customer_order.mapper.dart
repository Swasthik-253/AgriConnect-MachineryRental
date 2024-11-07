// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'customer_order.dart';

class CustomerOrderMapper extends ClassMapperBase<CustomerOrder> {
  CustomerOrderMapper._();

  static CustomerOrderMapper? _instance;
  static CustomerOrderMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CustomerOrderMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CustomerOrder';

  static String _$id(CustomerOrder v) => v.id;
  static const Field<CustomerOrder, String> _f$id = Field('id', _$id);
  static DateTime _$orderDate(CustomerOrder v) => v.orderDate;
  static const Field<CustomerOrder, DateTime> _f$orderDate =
      Field('orderDate', _$orderDate);
  static String _$machine(CustomerOrder v) => v.machine;
  static const Field<CustomerOrder, String> _f$machine =
      Field('machine', _$machine);

  @override
  final MappableFields<CustomerOrder> fields = const {
    #id: _f$id,
    #orderDate: _f$orderDate,
    #machine: _f$machine,
  };

  static CustomerOrder _instantiate(DecodingData data) {
    return CustomerOrder(
        id: data.dec(_f$id),
        orderDate: data.dec(_f$orderDate),
        machine: data.dec(_f$machine));
  }

  @override
  final Function instantiate = _instantiate;

  static CustomerOrder fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CustomerOrder>(map);
  }

  static CustomerOrder fromJson(String json) {
    return ensureInitialized().decodeJson<CustomerOrder>(json);
  }
}

mixin CustomerOrderMappable {
  String toJson() {
    return CustomerOrderMapper.ensureInitialized()
        .encodeJson<CustomerOrder>(this as CustomerOrder);
  }

  Map<String, dynamic> toMap() {
    return CustomerOrderMapper.ensureInitialized()
        .encodeMap<CustomerOrder>(this as CustomerOrder);
  }

  CustomerOrderCopyWith<CustomerOrder, CustomerOrder, CustomerOrder>
      get copyWith => _CustomerOrderCopyWithImpl(
          this as CustomerOrder, $identity, $identity);
  @override
  String toString() {
    return CustomerOrderMapper.ensureInitialized()
        .stringifyValue(this as CustomerOrder);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            CustomerOrderMapper.ensureInitialized()
                .isValueEqual(this as CustomerOrder, other));
  }

  @override
  int get hashCode {
    return CustomerOrderMapper.ensureInitialized()
        .hashValue(this as CustomerOrder);
  }
}

extension CustomerOrderValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CustomerOrder, $Out> {
  CustomerOrderCopyWith<$R, CustomerOrder, $Out> get $asCustomerOrder =>
      $base.as((v, t, t2) => _CustomerOrderCopyWithImpl(v, t, t2));
}

abstract class CustomerOrderCopyWith<$R, $In extends CustomerOrder, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, DateTime? orderDate, String? machine});
  CustomerOrderCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CustomerOrderCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CustomerOrder, $Out>
    implements CustomerOrderCopyWith<$R, CustomerOrder, $Out> {
  _CustomerOrderCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CustomerOrder> $mapper =
      CustomerOrderMapper.ensureInitialized();
  @override
  $R call({String? id, DateTime? orderDate, String? machine}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (orderDate != null) #orderDate: orderDate,
        if (machine != null) #machine: machine
      }));
  @override
  CustomerOrder $make(CopyWithData data) => CustomerOrder(
      id: data.get(#id, or: $value.id),
      orderDate: data.get(#orderDate, or: $value.orderDate),
      machine: data.get(#machine, or: $value.machine));

  @override
  CustomerOrderCopyWith<$R2, CustomerOrder, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CustomerOrderCopyWithImpl($value, $cast, t);
}
