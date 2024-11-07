// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'order_machine_params.dart';

class OrderMachineParamsMapper extends ClassMapperBase<OrderMachineParams> {
  OrderMachineParamsMapper._();

  static OrderMachineParamsMapper? _instance;
  static OrderMachineParamsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OrderMachineParamsMapper._());
      MachineMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'OrderMachineParams';

  static Machine _$machine(OrderMachineParams v) => v.machine;
  static const Field<OrderMachineParams, Machine> _f$machine =
      Field('machine', _$machine);
  static String _$useremail(OrderMachineParams v) => v.useremail;
  static const Field<OrderMachineParams, String> _f$useremail =
      Field('useremail', _$useremail);

  @override
  final MappableFields<OrderMachineParams> fields = const {
    #machine: _f$machine,
    #useremail: _f$useremail,
  };

  static OrderMachineParams _instantiate(DecodingData data) {
    return OrderMachineParams(
        machine: data.dec(_f$machine), useremail: data.dec(_f$useremail));
  }

  @override
  final Function instantiate = _instantiate;

  static OrderMachineParams fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OrderMachineParams>(map);
  }

  static OrderMachineParams fromJson(String json) {
    return ensureInitialized().decodeJson<OrderMachineParams>(json);
  }
}

mixin OrderMachineParamsMappable {
  String toJson() {
    return OrderMachineParamsMapper.ensureInitialized()
        .encodeJson<OrderMachineParams>(this as OrderMachineParams);
  }

  Map<String, dynamic> toMap() {
    return OrderMachineParamsMapper.ensureInitialized()
        .encodeMap<OrderMachineParams>(this as OrderMachineParams);
  }

  OrderMachineParamsCopyWith<OrderMachineParams, OrderMachineParams,
          OrderMachineParams>
      get copyWith => _OrderMachineParamsCopyWithImpl(
          this as OrderMachineParams, $identity, $identity);
  @override
  String toString() {
    return OrderMachineParamsMapper.ensureInitialized()
        .stringifyValue(this as OrderMachineParams);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            OrderMachineParamsMapper.ensureInitialized()
                .isValueEqual(this as OrderMachineParams, other));
  }

  @override
  int get hashCode {
    return OrderMachineParamsMapper.ensureInitialized()
        .hashValue(this as OrderMachineParams);
  }
}

extension OrderMachineParamsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, OrderMachineParams, $Out> {
  OrderMachineParamsCopyWith<$R, OrderMachineParams, $Out>
      get $asOrderMachineParams =>
          $base.as((v, t, t2) => _OrderMachineParamsCopyWithImpl(v, t, t2));
}

abstract class OrderMachineParamsCopyWith<$R, $In extends OrderMachineParams,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  MachineCopyWith<$R, Machine, Machine> get machine;
  $R call({Machine? machine, String? useremail});
  OrderMachineParamsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _OrderMachineParamsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OrderMachineParams, $Out>
    implements OrderMachineParamsCopyWith<$R, OrderMachineParams, $Out> {
  _OrderMachineParamsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OrderMachineParams> $mapper =
      OrderMachineParamsMapper.ensureInitialized();
  @override
  MachineCopyWith<$R, Machine, Machine> get machine =>
      $value.machine.copyWith.$chain((v) => call(machine: v));
  @override
  $R call({Machine? machine, String? useremail}) => $apply(FieldCopyWithData({
        if (machine != null) #machine: machine,
        if (useremail != null) #useremail: useremail
      }));
  @override
  OrderMachineParams $make(CopyWithData data) => OrderMachineParams(
      machine: data.get(#machine, or: $value.machine),
      useremail: data.get(#useremail, or: $value.useremail));

  @override
  OrderMachineParamsCopyWith<$R2, OrderMachineParams, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _OrderMachineParamsCopyWithImpl($value, $cast, t);
}
