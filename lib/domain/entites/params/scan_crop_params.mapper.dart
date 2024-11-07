// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'scan_crop_params.dart';

class ScanCropParamsMapper extends ClassMapperBase<ScanCropParams> {
  ScanCropParamsMapper._();

  static ScanCropParamsMapper? _instance;
  static ScanCropParamsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ScanCropParamsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ScanCropParams';

  static String _$imageInBase64(ScanCropParams v) => v.imageInBase64;
  static const Field<ScanCropParams, String> _f$imageInBase64 =
      Field('imageInBase64', _$imageInBase64);

  @override
  final MappableFields<ScanCropParams> fields = const {
    #imageInBase64: _f$imageInBase64,
  };

  static ScanCropParams _instantiate(DecodingData data) {
    return ScanCropParams(imageInBase64: data.dec(_f$imageInBase64));
  }

  @override
  final Function instantiate = _instantiate;

  static ScanCropParams fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ScanCropParams>(map);
  }

  static ScanCropParams fromJson(String json) {
    return ensureInitialized().decodeJson<ScanCropParams>(json);
  }
}

mixin ScanCropParamsMappable {
  String toJson() {
    return ScanCropParamsMapper.ensureInitialized()
        .encodeJson<ScanCropParams>(this as ScanCropParams);
  }

  Map<String, dynamic> toMap() {
    return ScanCropParamsMapper.ensureInitialized()
        .encodeMap<ScanCropParams>(this as ScanCropParams);
  }

  ScanCropParamsCopyWith<ScanCropParams, ScanCropParams, ScanCropParams>
      get copyWith => _ScanCropParamsCopyWithImpl(
          this as ScanCropParams, $identity, $identity);
  @override
  String toString() {
    return ScanCropParamsMapper.ensureInitialized()
        .stringifyValue(this as ScanCropParams);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ScanCropParamsMapper.ensureInitialized()
                .isValueEqual(this as ScanCropParams, other));
  }

  @override
  int get hashCode {
    return ScanCropParamsMapper.ensureInitialized()
        .hashValue(this as ScanCropParams);
  }
}

extension ScanCropParamsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ScanCropParams, $Out> {
  ScanCropParamsCopyWith<$R, ScanCropParams, $Out> get $asScanCropParams =>
      $base.as((v, t, t2) => _ScanCropParamsCopyWithImpl(v, t, t2));
}

abstract class ScanCropParamsCopyWith<$R, $In extends ScanCropParams, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? imageInBase64});
  ScanCropParamsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ScanCropParamsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ScanCropParams, $Out>
    implements ScanCropParamsCopyWith<$R, ScanCropParams, $Out> {
  _ScanCropParamsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ScanCropParams> $mapper =
      ScanCropParamsMapper.ensureInitialized();
  @override
  $R call({String? imageInBase64}) => $apply(FieldCopyWithData(
      {if (imageInBase64 != null) #imageInBase64: imageInBase64}));
  @override
  ScanCropParams $make(CopyWithData data) => ScanCropParams(
      imageInBase64: data.get(#imageInBase64, or: $value.imageInBase64));

  @override
  ScanCropParamsCopyWith<$R2, ScanCropParams, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ScanCropParamsCopyWithImpl($value, $cast, t);
}
