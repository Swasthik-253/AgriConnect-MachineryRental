// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'change_password_params.dart';

class ChangePasswordParamsMapper extends ClassMapperBase<ChangePasswordParams> {
  ChangePasswordParamsMapper._();

  static ChangePasswordParamsMapper? _instance;
  static ChangePasswordParamsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChangePasswordParamsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ChangePasswordParams';

  static String _$oldPassword(ChangePasswordParams v) => v.oldPassword;
  static const Field<ChangePasswordParams, String> _f$oldPassword =
      Field('oldPassword', _$oldPassword);
  static String _$newPassword(ChangePasswordParams v) => v.newPassword;
  static const Field<ChangePasswordParams, String> _f$newPassword =
      Field('newPassword', _$newPassword);
  static String? _$email(ChangePasswordParams v) => v.email;
  static const Field<ChangePasswordParams, String> _f$email =
      Field('email', _$email, opt: true);

  @override
  final MappableFields<ChangePasswordParams> fields = const {
    #oldPassword: _f$oldPassword,
    #newPassword: _f$newPassword,
    #email: _f$email,
  };

  static ChangePasswordParams _instantiate(DecodingData data) {
    return ChangePasswordParams(
        oldPassword: data.dec(_f$oldPassword),
        newPassword: data.dec(_f$newPassword),
        email: data.dec(_f$email));
  }

  @override
  final Function instantiate = _instantiate;

  static ChangePasswordParams fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ChangePasswordParams>(map);
  }

  static ChangePasswordParams fromJson(String json) {
    return ensureInitialized().decodeJson<ChangePasswordParams>(json);
  }
}

mixin ChangePasswordParamsMappable {
  String toJson() {
    return ChangePasswordParamsMapper.ensureInitialized()
        .encodeJson<ChangePasswordParams>(this as ChangePasswordParams);
  }

  Map<String, dynamic> toMap() {
    return ChangePasswordParamsMapper.ensureInitialized()
        .encodeMap<ChangePasswordParams>(this as ChangePasswordParams);
  }

  ChangePasswordParamsCopyWith<ChangePasswordParams, ChangePasswordParams,
          ChangePasswordParams>
      get copyWith => _ChangePasswordParamsCopyWithImpl(
          this as ChangePasswordParams, $identity, $identity);
  @override
  String toString() {
    return ChangePasswordParamsMapper.ensureInitialized()
        .stringifyValue(this as ChangePasswordParams);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ChangePasswordParamsMapper.ensureInitialized()
                .isValueEqual(this as ChangePasswordParams, other));
  }

  @override
  int get hashCode {
    return ChangePasswordParamsMapper.ensureInitialized()
        .hashValue(this as ChangePasswordParams);
  }
}

extension ChangePasswordParamsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ChangePasswordParams, $Out> {
  ChangePasswordParamsCopyWith<$R, ChangePasswordParams, $Out>
      get $asChangePasswordParams =>
          $base.as((v, t, t2) => _ChangePasswordParamsCopyWithImpl(v, t, t2));
}

abstract class ChangePasswordParamsCopyWith<
    $R,
    $In extends ChangePasswordParams,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? oldPassword, String? newPassword, String? email});
  ChangePasswordParamsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ChangePasswordParamsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ChangePasswordParams, $Out>
    implements ChangePasswordParamsCopyWith<$R, ChangePasswordParams, $Out> {
  _ChangePasswordParamsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ChangePasswordParams> $mapper =
      ChangePasswordParamsMapper.ensureInitialized();
  @override
  $R call({String? oldPassword, String? newPassword, Object? email = $none}) =>
      $apply(FieldCopyWithData({
        if (oldPassword != null) #oldPassword: oldPassword,
        if (newPassword != null) #newPassword: newPassword,
        if (email != $none) #email: email
      }));
  @override
  ChangePasswordParams $make(CopyWithData data) => ChangePasswordParams(
      oldPassword: data.get(#oldPassword, or: $value.oldPassword),
      newPassword: data.get(#newPassword, or: $value.newPassword),
      email: data.get(#email, or: $value.email));

  @override
  ChangePasswordParamsCopyWith<$R2, ChangePasswordParams, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ChangePasswordParamsCopyWithImpl($value, $cast, t);
}
