// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'get_machines_params.dart';

class GetMachinesParamsMapper extends ClassMapperBase<GetMachinesParams> {
  GetMachinesParamsMapper._();

  static GetMachinesParamsMapper? _instance;
  static GetMachinesParamsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GetMachinesParamsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'GetMachinesParams';

  static String _$cropName(GetMachinesParams v) => v.cropName;
  static const Field<GetMachinesParams, String> _f$cropName =
      Field('cropName', _$cropName);

  @override
  final MappableFields<GetMachinesParams> fields = const {
    #cropName: _f$cropName,
  };

  static GetMachinesParams _instantiate(DecodingData data) {
    return GetMachinesParams(cropName: data.dec(_f$cropName));
  }

  @override
  final Function instantiate = _instantiate;

  static GetMachinesParams fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GetMachinesParams>(map);
  }

  static GetMachinesParams fromJson(String json) {
    return ensureInitialized().decodeJson<GetMachinesParams>(json);
  }
}

mixin GetMachinesParamsMappable {
  String toJson() {
    return GetMachinesParamsMapper.ensureInitialized()
        .encodeJson<GetMachinesParams>(this as GetMachinesParams);
  }

  Map<String, dynamic> toMap() {
    return GetMachinesParamsMapper.ensureInitialized()
        .encodeMap<GetMachinesParams>(this as GetMachinesParams);
  }

  GetMachinesParamsCopyWith<GetMachinesParams, GetMachinesParams,
          GetMachinesParams>
      get copyWith => _GetMachinesParamsCopyWithImpl(
          this as GetMachinesParams, $identity, $identity);
  @override
  String toString() {
    return GetMachinesParamsMapper.ensureInitialized()
        .stringifyValue(this as GetMachinesParams);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            GetMachinesParamsMapper.ensureInitialized()
                .isValueEqual(this as GetMachinesParams, other));
  }

  @override
  int get hashCode {
    return GetMachinesParamsMapper.ensureInitialized()
        .hashValue(this as GetMachinesParams);
  }
}

extension GetMachinesParamsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GetMachinesParams, $Out> {
  GetMachinesParamsCopyWith<$R, GetMachinesParams, $Out>
      get $asGetMachinesParams =>
          $base.as((v, t, t2) => _GetMachinesParamsCopyWithImpl(v, t, t2));
}

abstract class GetMachinesParamsCopyWith<$R, $In extends GetMachinesParams,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? cropName});
  GetMachinesParamsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _GetMachinesParamsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GetMachinesParams, $Out>
    implements GetMachinesParamsCopyWith<$R, GetMachinesParams, $Out> {
  _GetMachinesParamsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GetMachinesParams> $mapper =
      GetMachinesParamsMapper.ensureInitialized();
  @override
  $R call({String? cropName}) =>
      $apply(FieldCopyWithData({if (cropName != null) #cropName: cropName}));
  @override
  GetMachinesParams $make(CopyWithData data) =>
      GetMachinesParams(cropName: data.get(#cropName, or: $value.cropName));

  @override
  GetMachinesParamsCopyWith<$R2, GetMachinesParams, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _GetMachinesParamsCopyWithImpl($value, $cast, t);
}
