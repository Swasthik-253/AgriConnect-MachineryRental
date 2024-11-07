// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'process_notification_params.dart';

class NotiActionMapper extends EnumMapper<NotiAction> {
  NotiActionMapper._();

  static NotiActionMapper? _instance;
  static NotiActionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NotiActionMapper._());
    }
    return _instance!;
  }

  static NotiAction fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  NotiAction decode(dynamic value) {
    switch (value) {
      case 'accept':
        return NotiAction.accept;
      case 'reject':
        return NotiAction.reject;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(NotiAction self) {
    switch (self) {
      case NotiAction.accept:
        return 'accept';
      case NotiAction.reject:
        return 'reject';
    }
  }
}

extension NotiActionMapperExtension on NotiAction {
  String toValue() {
    NotiActionMapper.ensureInitialized();
    return MapperContainer.globals.toValue<NotiAction>(this) as String;
  }
}

class ProcessNotificationParamsMapper
    extends ClassMapperBase<ProcessNotificationParams> {
  ProcessNotificationParamsMapper._();

  static ProcessNotificationParamsMapper? _instance;
  static ProcessNotificationParamsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ProcessNotificationParamsMapper._());
      NotiActionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ProcessNotificationParams';

  static String _$id(ProcessNotificationParams v) => v.id;
  static const Field<ProcessNotificationParams, String> _f$id =
      Field('id', _$id);
  static NotiAction _$action(ProcessNotificationParams v) => v.action;
  static const Field<ProcessNotificationParams, NotiAction> _f$action =
      Field('action', _$action);

  @override
  final MappableFields<ProcessNotificationParams> fields = const {
    #id: _f$id,
    #action: _f$action,
  };

  static ProcessNotificationParams _instantiate(DecodingData data) {
    return ProcessNotificationParams(
        id: data.dec(_f$id), action: data.dec(_f$action));
  }

  @override
  final Function instantiate = _instantiate;

  static ProcessNotificationParams fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ProcessNotificationParams>(map);
  }

  static ProcessNotificationParams fromJson(String json) {
    return ensureInitialized().decodeJson<ProcessNotificationParams>(json);
  }
}

mixin ProcessNotificationParamsMappable {
  String toJson() {
    return ProcessNotificationParamsMapper.ensureInitialized()
        .encodeJson<ProcessNotificationParams>(
            this as ProcessNotificationParams);
  }

  Map<String, dynamic> toMap() {
    return ProcessNotificationParamsMapper.ensureInitialized()
        .encodeMap<ProcessNotificationParams>(
            this as ProcessNotificationParams);
  }

  ProcessNotificationParamsCopyWith<ProcessNotificationParams,
          ProcessNotificationParams, ProcessNotificationParams>
      get copyWith => _ProcessNotificationParamsCopyWithImpl(
          this as ProcessNotificationParams, $identity, $identity);
  @override
  String toString() {
    return ProcessNotificationParamsMapper.ensureInitialized()
        .stringifyValue(this as ProcessNotificationParams);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ProcessNotificationParamsMapper.ensureInitialized()
                .isValueEqual(this as ProcessNotificationParams, other));
  }

  @override
  int get hashCode {
    return ProcessNotificationParamsMapper.ensureInitialized()
        .hashValue(this as ProcessNotificationParams);
  }
}

extension ProcessNotificationParamsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ProcessNotificationParams, $Out> {
  ProcessNotificationParamsCopyWith<$R, ProcessNotificationParams, $Out>
      get $asProcessNotificationParams => $base
          .as((v, t, t2) => _ProcessNotificationParamsCopyWithImpl(v, t, t2));
}

abstract class ProcessNotificationParamsCopyWith<
    $R,
    $In extends ProcessNotificationParams,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, NotiAction? action});
  ProcessNotificationParamsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ProcessNotificationParamsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ProcessNotificationParams, $Out>
    implements
        ProcessNotificationParamsCopyWith<$R, ProcessNotificationParams, $Out> {
  _ProcessNotificationParamsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ProcessNotificationParams> $mapper =
      ProcessNotificationParamsMapper.ensureInitialized();
  @override
  $R call({String? id, NotiAction? action}) => $apply(FieldCopyWithData(
      {if (id != null) #id: id, if (action != null) #action: action}));
  @override
  ProcessNotificationParams $make(CopyWithData data) =>
      ProcessNotificationParams(
          id: data.get(#id, or: $value.id),
          action: data.get(#action, or: $value.action));

  @override
  ProcessNotificationParamsCopyWith<$R2, ProcessNotificationParams, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ProcessNotificationParamsCopyWithImpl($value, $cast, t);
}
