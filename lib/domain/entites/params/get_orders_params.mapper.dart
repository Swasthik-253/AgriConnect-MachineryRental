// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'get_orders_params.dart';

class GetOrderParamsMapper extends ClassMapperBase<GetOrderParams> {
  GetOrderParamsMapper._();

  static GetOrderParamsMapper? _instance;
  static GetOrderParamsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GetOrderParamsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'GetOrderParams';

  static String _$email(GetOrderParams v) => v.email;
  static const Field<GetOrderParams, String> _f$email = Field('email', _$email);

  @override
  final MappableFields<GetOrderParams> fields = const {
    #email: _f$email,
  };

  static GetOrderParams _instantiate(DecodingData data) {
    return GetOrderParams(email: data.dec(_f$email));
  }

  @override
  final Function instantiate = _instantiate;

  static GetOrderParams fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GetOrderParams>(map);
  }

  static GetOrderParams fromJson(String json) {
    return ensureInitialized().decodeJson<GetOrderParams>(json);
  }
}

mixin GetOrderParamsMappable {
  String toJson() {
    return GetOrderParamsMapper.ensureInitialized()
        .encodeJson<GetOrderParams>(this as GetOrderParams);
  }

  Map<String, dynamic> toMap() {
    return GetOrderParamsMapper.ensureInitialized()
        .encodeMap<GetOrderParams>(this as GetOrderParams);
  }

  GetOrderParamsCopyWith<GetOrderParams, GetOrderParams, GetOrderParams>
      get copyWith => _GetOrderParamsCopyWithImpl(
          this as GetOrderParams, $identity, $identity);
  @override
  String toString() {
    return GetOrderParamsMapper.ensureInitialized()
        .stringifyValue(this as GetOrderParams);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            GetOrderParamsMapper.ensureInitialized()
                .isValueEqual(this as GetOrderParams, other));
  }

  @override
  int get hashCode {
    return GetOrderParamsMapper.ensureInitialized()
        .hashValue(this as GetOrderParams);
  }
}

extension GetOrderParamsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GetOrderParams, $Out> {
  GetOrderParamsCopyWith<$R, GetOrderParams, $Out> get $asGetOrderParams =>
      $base.as((v, t, t2) => _GetOrderParamsCopyWithImpl(v, t, t2));
}

abstract class GetOrderParamsCopyWith<$R, $In extends GetOrderParams, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? email});
  GetOrderParamsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _GetOrderParamsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GetOrderParams, $Out>
    implements GetOrderParamsCopyWith<$R, GetOrderParams, $Out> {
  _GetOrderParamsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GetOrderParams> $mapper =
      GetOrderParamsMapper.ensureInitialized();
  @override
  $R call({String? email}) =>
      $apply(FieldCopyWithData({if (email != null) #email: email}));
  @override
  GetOrderParams $make(CopyWithData data) =>
      GetOrderParams(email: data.get(#email, or: $value.email));

  @override
  GetOrderParamsCopyWith<$R2, GetOrderParams, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _GetOrderParamsCopyWithImpl($value, $cast, t);
}
