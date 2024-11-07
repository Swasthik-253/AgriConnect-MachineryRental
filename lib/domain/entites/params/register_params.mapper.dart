// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'register_params.dart';

class RegisterParamsMapper extends ClassMapperBase<RegisterParams> {
  RegisterParamsMapper._();

  static RegisterParamsMapper? _instance;
  static RegisterParamsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RegisterParamsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RegisterParams';

  static String _$fullName(RegisterParams v) => v.fullName;
  static const Field<RegisterParams, String> _f$fullName =
      Field('fullName', _$fullName);
  static String _$email(RegisterParams v) => v.email;
  static const Field<RegisterParams, String> _f$email = Field('email', _$email);
  static String _$phoneNumber(RegisterParams v) => v.phoneNumber;
  static const Field<RegisterParams, String> _f$phoneNumber =
      Field('phoneNumber', _$phoneNumber);
  static String _$password(RegisterParams v) => v.password;
  static const Field<RegisterParams, String> _f$password =
      Field('password', _$password);
  static String _$address(RegisterParams v) => v.address;
  static const Field<RegisterParams, String> _f$address =
      Field('address', _$address);

  @override
  final MappableFields<RegisterParams> fields = const {
    #fullName: _f$fullName,
    #email: _f$email,
    #phoneNumber: _f$phoneNumber,
    #password: _f$password,
    #address: _f$address,
  };

  static RegisterParams _instantiate(DecodingData data) {
    return RegisterParams(
        fullName: data.dec(_f$fullName),
        email: data.dec(_f$email),
        phoneNumber: data.dec(_f$phoneNumber),
        password: data.dec(_f$password),
        address: data.dec(_f$address));
  }

  @override
  final Function instantiate = _instantiate;

  static RegisterParams fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RegisterParams>(map);
  }

  static RegisterParams fromJson(String json) {
    return ensureInitialized().decodeJson<RegisterParams>(json);
  }
}

mixin RegisterParamsMappable {
  String toJson() {
    return RegisterParamsMapper.ensureInitialized()
        .encodeJson<RegisterParams>(this as RegisterParams);
  }

  Map<String, dynamic> toMap() {
    return RegisterParamsMapper.ensureInitialized()
        .encodeMap<RegisterParams>(this as RegisterParams);
  }

  RegisterParamsCopyWith<RegisterParams, RegisterParams, RegisterParams>
      get copyWith => _RegisterParamsCopyWithImpl(
          this as RegisterParams, $identity, $identity);
  @override
  String toString() {
    return RegisterParamsMapper.ensureInitialized()
        .stringifyValue(this as RegisterParams);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            RegisterParamsMapper.ensureInitialized()
                .isValueEqual(this as RegisterParams, other));
  }

  @override
  int get hashCode {
    return RegisterParamsMapper.ensureInitialized()
        .hashValue(this as RegisterParams);
  }
}

extension RegisterParamsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RegisterParams, $Out> {
  RegisterParamsCopyWith<$R, RegisterParams, $Out> get $asRegisterParams =>
      $base.as((v, t, t2) => _RegisterParamsCopyWithImpl(v, t, t2));
}

abstract class RegisterParamsCopyWith<$R, $In extends RegisterParams, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? fullName,
      String? email,
      String? phoneNumber,
      String? password,
      String? address});
  RegisterParamsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _RegisterParamsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RegisterParams, $Out>
    implements RegisterParamsCopyWith<$R, RegisterParams, $Out> {
  _RegisterParamsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RegisterParams> $mapper =
      RegisterParamsMapper.ensureInitialized();
  @override
  $R call(
          {String? fullName,
          String? email,
          String? phoneNumber,
          String? password,
          String? address}) =>
      $apply(FieldCopyWithData({
        if (fullName != null) #fullName: fullName,
        if (email != null) #email: email,
        if (phoneNumber != null) #phoneNumber: phoneNumber,
        if (password != null) #password: password,
        if (address != null) #address: address
      }));
  @override
  RegisterParams $make(CopyWithData data) => RegisterParams(
      fullName: data.get(#fullName, or: $value.fullName),
      email: data.get(#email, or: $value.email),
      phoneNumber: data.get(#phoneNumber, or: $value.phoneNumber),
      password: data.get(#password, or: $value.password),
      address: data.get(#address, or: $value.address));

  @override
  RegisterParamsCopyWith<$R2, RegisterParams, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _RegisterParamsCopyWithImpl($value, $cast, t);
}
