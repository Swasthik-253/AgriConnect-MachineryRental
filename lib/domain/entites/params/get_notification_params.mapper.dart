// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'get_notification_params.dart';

class GetNotificationParamsMapper
    extends ClassMapperBase<GetNotificationParams> {
  GetNotificationParamsMapper._();

  static GetNotificationParamsMapper? _instance;
  static GetNotificationParamsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GetNotificationParamsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'GetNotificationParams';

  static String _$email(GetNotificationParams v) => v.email;
  static const Field<GetNotificationParams, String> _f$email =
      Field('email', _$email);

  @override
  final MappableFields<GetNotificationParams> fields = const {
    #email: _f$email,
  };

  static GetNotificationParams _instantiate(DecodingData data) {
    return GetNotificationParams(email: data.dec(_f$email));
  }

  @override
  final Function instantiate = _instantiate;

  static GetNotificationParams fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GetNotificationParams>(map);
  }

  static GetNotificationParams fromJson(String json) {
    return ensureInitialized().decodeJson<GetNotificationParams>(json);
  }
}

mixin GetNotificationParamsMappable {
  String toJson() {
    return GetNotificationParamsMapper.ensureInitialized()
        .encodeJson<GetNotificationParams>(this as GetNotificationParams);
  }

  Map<String, dynamic> toMap() {
    return GetNotificationParamsMapper.ensureInitialized()
        .encodeMap<GetNotificationParams>(this as GetNotificationParams);
  }

  GetNotificationParamsCopyWith<GetNotificationParams, GetNotificationParams,
          GetNotificationParams>
      get copyWith => _GetNotificationParamsCopyWithImpl(
          this as GetNotificationParams, $identity, $identity);
  @override
  String toString() {
    return GetNotificationParamsMapper.ensureInitialized()
        .stringifyValue(this as GetNotificationParams);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            GetNotificationParamsMapper.ensureInitialized()
                .isValueEqual(this as GetNotificationParams, other));
  }

  @override
  int get hashCode {
    return GetNotificationParamsMapper.ensureInitialized()
        .hashValue(this as GetNotificationParams);
  }
}

extension GetNotificationParamsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GetNotificationParams, $Out> {
  GetNotificationParamsCopyWith<$R, GetNotificationParams, $Out>
      get $asGetNotificationParams =>
          $base.as((v, t, t2) => _GetNotificationParamsCopyWithImpl(v, t, t2));
}

abstract class GetNotificationParamsCopyWith<
    $R,
    $In extends GetNotificationParams,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? email});
  GetNotificationParamsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _GetNotificationParamsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GetNotificationParams, $Out>
    implements GetNotificationParamsCopyWith<$R, GetNotificationParams, $Out> {
  _GetNotificationParamsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GetNotificationParams> $mapper =
      GetNotificationParamsMapper.ensureInitialized();
  @override
  $R call({String? email}) =>
      $apply(FieldCopyWithData({if (email != null) #email: email}));
  @override
  GetNotificationParams $make(CopyWithData data) =>
      GetNotificationParams(email: data.get(#email, or: $value.email));

  @override
  GetNotificationParamsCopyWith<$R2, GetNotificationParams, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _GetNotificationParamsCopyWithImpl($value, $cast, t);
}
