// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'add_machine_params.dart';

class AddMachineParamsMapper extends ClassMapperBase<AddMachineParams> {
  AddMachineParamsMapper._();

  static AddMachineParamsMapper? _instance;
  static AddMachineParamsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AddMachineParamsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'AddMachineParams';

  static String _$machineName(AddMachineParams v) => v.machineName;
  static const Field<AddMachineParams, String> _f$machineName =
      Field('machineName', _$machineName);
  static String _$crop(AddMachineParams v) => v.crop;
  static const Field<AddMachineParams, String> _f$crop = Field('crop', _$crop);
  static String _$userEmail(AddMachineParams v) => v.userEmail;
  static const Field<AddMachineParams, String> _f$userEmail =
      Field('userEmail', _$userEmail);
  static String _$userPhone(AddMachineParams v) => v.userPhone;
  static const Field<AddMachineParams, String> _f$userPhone =
      Field('userPhone', _$userPhone);
  static double _$price(AddMachineParams v) => v.price;
  static const Field<AddMachineParams, double> _f$price =
      Field('price', _$price);
  static String _$imageInBase64(AddMachineParams v) => v.imageInBase64;
  static const Field<AddMachineParams, String> _f$imageInBase64 =
      Field('imageInBase64', _$imageInBase64);

  @override
  final MappableFields<AddMachineParams> fields = const {
    #machineName: _f$machineName,
    #crop: _f$crop,
    #userEmail: _f$userEmail,
    #userPhone: _f$userPhone,
    #price: _f$price,
    #imageInBase64: _f$imageInBase64,
  };

  static AddMachineParams _instantiate(DecodingData data) {
    return AddMachineParams(
        machineName: data.dec(_f$machineName),
        crop: data.dec(_f$crop),
        userEmail: data.dec(_f$userEmail),
        userPhone: data.dec(_f$userPhone),
        price: data.dec(_f$price),
        imageInBase64: data.dec(_f$imageInBase64));
  }

  @override
  final Function instantiate = _instantiate;

  static AddMachineParams fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AddMachineParams>(map);
  }

  static AddMachineParams fromJson(String json) {
    return ensureInitialized().decodeJson<AddMachineParams>(json);
  }
}

mixin AddMachineParamsMappable {
  String toJson() {
    return AddMachineParamsMapper.ensureInitialized()
        .encodeJson<AddMachineParams>(this as AddMachineParams);
  }

  Map<String, dynamic> toMap() {
    return AddMachineParamsMapper.ensureInitialized()
        .encodeMap<AddMachineParams>(this as AddMachineParams);
  }

  AddMachineParamsCopyWith<AddMachineParams, AddMachineParams, AddMachineParams>
      get copyWith => _AddMachineParamsCopyWithImpl(
          this as AddMachineParams, $identity, $identity);
  @override
  String toString() {
    return AddMachineParamsMapper.ensureInitialized()
        .stringifyValue(this as AddMachineParams);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            AddMachineParamsMapper.ensureInitialized()
                .isValueEqual(this as AddMachineParams, other));
  }

  @override
  int get hashCode {
    return AddMachineParamsMapper.ensureInitialized()
        .hashValue(this as AddMachineParams);
  }
}

extension AddMachineParamsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AddMachineParams, $Out> {
  AddMachineParamsCopyWith<$R, AddMachineParams, $Out>
      get $asAddMachineParams =>
          $base.as((v, t, t2) => _AddMachineParamsCopyWithImpl(v, t, t2));
}

abstract class AddMachineParamsCopyWith<$R, $In extends AddMachineParams, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? machineName,
      String? crop,
      String? userEmail,
      String? userPhone,
      double? price,
      String? imageInBase64});
  AddMachineParamsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AddMachineParamsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AddMachineParams, $Out>
    implements AddMachineParamsCopyWith<$R, AddMachineParams, $Out> {
  _AddMachineParamsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AddMachineParams> $mapper =
      AddMachineParamsMapper.ensureInitialized();
  @override
  $R call(
          {String? machineName,
          String? crop,
          String? userEmail,
          String? userPhone,
          double? price,
          String? imageInBase64}) =>
      $apply(FieldCopyWithData({
        if (machineName != null) #machineName: machineName,
        if (crop != null) #crop: crop,
        if (userEmail != null) #userEmail: userEmail,
        if (userPhone != null) #userPhone: userPhone,
        if (price != null) #price: price,
        if (imageInBase64 != null) #imageInBase64: imageInBase64
      }));
  @override
  AddMachineParams $make(CopyWithData data) => AddMachineParams(
      machineName: data.get(#machineName, or: $value.machineName),
      crop: data.get(#crop, or: $value.crop),
      userEmail: data.get(#userEmail, or: $value.userEmail),
      userPhone: data.get(#userPhone, or: $value.userPhone),
      price: data.get(#price, or: $value.price),
      imageInBase64: data.get(#imageInBase64, or: $value.imageInBase64));

  @override
  AddMachineParamsCopyWith<$R2, AddMachineParams, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AddMachineParamsCopyWithImpl($value, $cast, t);
}
