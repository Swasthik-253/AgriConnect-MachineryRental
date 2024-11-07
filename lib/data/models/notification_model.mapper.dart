// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'notification_model.dart';

class NotiTypeMapper extends EnumMapper<NotiType> {
  NotiTypeMapper._();

  static NotiTypeMapper? _instance;
  static NotiTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NotiTypeMapper._());
    }
    return _instance!;
  }

  static NotiType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  NotiType decode(dynamic value) {
    switch (value) {
      case 'normal':
        return NotiType.normal;
      case 'action':
        return NotiType.action;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(NotiType self) {
    switch (self) {
      case NotiType.normal:
        return 'normal';
      case NotiType.action:
        return 'action';
    }
  }
}

extension NotiTypeMapperExtension on NotiType {
  String toValue() {
    NotiTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<NotiType>(this) as String;
  }
}

class NotificationModelMapper extends ClassMapperBase<NotificationModel> {
  NotificationModelMapper._();

  static NotificationModelMapper? _instance;
  static NotificationModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NotificationModelMapper._());
      NotiTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'NotificationModel';

  static String _$id(NotificationModel v) => v.id;
  static const Field<NotificationModel, String> _f$id = Field('id', _$id);
  static String _$title(NotificationModel v) => v.title;
  static const Field<NotificationModel, String> _f$title =
      Field('title', _$title);
  static String _$body(NotificationModel v) => v.body;
  static const Field<NotificationModel, String> _f$body = Field('body', _$body);
  static DateTime _$createdAt(NotificationModel v) => v.createdAt;
  static const Field<NotificationModel, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt);
  static NotiType _$type(NotificationModel v) => v.type;
  static const Field<NotificationModel, NotiType> _f$type =
      Field('type', _$type);
  static bool _$isProcessed(NotificationModel v) => v.isProcessed;
  static const Field<NotificationModel, bool> _f$isProcessed =
      Field('isProcessed', _$isProcessed, opt: true, def: false);

  @override
  final MappableFields<NotificationModel> fields = const {
    #id: _f$id,
    #title: _f$title,
    #body: _f$body,
    #createdAt: _f$createdAt,
    #type: _f$type,
    #isProcessed: _f$isProcessed,
  };

  static NotificationModel _instantiate(DecodingData data) {
    return NotificationModel(
        id: data.dec(_f$id),
        title: data.dec(_f$title),
        body: data.dec(_f$body),
        createdAt: data.dec(_f$createdAt),
        type: data.dec(_f$type),
        isProcessed: data.dec(_f$isProcessed));
  }

  @override
  final Function instantiate = _instantiate;

  static NotificationModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NotificationModel>(map);
  }

  static NotificationModel fromJson(String json) {
    return ensureInitialized().decodeJson<NotificationModel>(json);
  }
}

mixin NotificationModelMappable {
  String toJson() {
    return NotificationModelMapper.ensureInitialized()
        .encodeJson<NotificationModel>(this as NotificationModel);
  }

  Map<String, dynamic> toMap() {
    return NotificationModelMapper.ensureInitialized()
        .encodeMap<NotificationModel>(this as NotificationModel);
  }

  NotificationModelCopyWith<NotificationModel, NotificationModel,
          NotificationModel>
      get copyWith => _NotificationModelCopyWithImpl(
          this as NotificationModel, $identity, $identity);
  @override
  String toString() {
    return NotificationModelMapper.ensureInitialized()
        .stringifyValue(this as NotificationModel);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            NotificationModelMapper.ensureInitialized()
                .isValueEqual(this as NotificationModel, other));
  }

  @override
  int get hashCode {
    return NotificationModelMapper.ensureInitialized()
        .hashValue(this as NotificationModel);
  }
}

extension NotificationModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NotificationModel, $Out> {
  NotificationModelCopyWith<$R, NotificationModel, $Out>
      get $asNotificationModel =>
          $base.as((v, t, t2) => _NotificationModelCopyWithImpl(v, t, t2));
}

abstract class NotificationModelCopyWith<$R, $In extends NotificationModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      String? title,
      String? body,
      DateTime? createdAt,
      NotiType? type,
      bool? isProcessed});
  NotificationModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _NotificationModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NotificationModel, $Out>
    implements NotificationModelCopyWith<$R, NotificationModel, $Out> {
  _NotificationModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NotificationModel> $mapper =
      NotificationModelMapper.ensureInitialized();
  @override
  $R call(
          {String? id,
          String? title,
          String? body,
          DateTime? createdAt,
          NotiType? type,
          bool? isProcessed}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (title != null) #title: title,
        if (body != null) #body: body,
        if (createdAt != null) #createdAt: createdAt,
        if (type != null) #type: type,
        if (isProcessed != null) #isProcessed: isProcessed
      }));
  @override
  NotificationModel $make(CopyWithData data) => NotificationModel(
      id: data.get(#id, or: $value.id),
      title: data.get(#title, or: $value.title),
      body: data.get(#body, or: $value.body),
      createdAt: data.get(#createdAt, or: $value.createdAt),
      type: data.get(#type, or: $value.type),
      isProcessed: data.get(#isProcessed, or: $value.isProcessed));

  @override
  NotificationModelCopyWith<$R2, NotificationModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NotificationModelCopyWithImpl($value, $cast, t);
}
