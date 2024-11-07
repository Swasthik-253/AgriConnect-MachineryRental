// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'machine.dart';

class MachineMapper extends ClassMapperBase<Machine> {
  MachineMapper._();

  static MachineMapper? _instance;
  static MachineMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MachineMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Machine';

  static String _$id(Machine v) => v.id;
  static const Field<Machine, String> _f$id = Field('id', _$id);
  static String _$name(Machine v) => v.name;
  static const Field<Machine, String> _f$name = Field('name', _$name);
  static String _$imageInBase64(Machine v) => v.imageInBase64;
  static const Field<Machine, String> _f$imageInBase64 =
      Field('imageInBase64', _$imageInBase64);
  static String _$owner(Machine v) => v.owner;
  static const Field<Machine, String> _f$owner = Field('owner', _$owner);
  static String _$location(Machine v) => v.location;
  static const Field<Machine, String> _f$location =
      Field('location', _$location);
  static double _$price(Machine v) => v.price;
  static const Field<Machine, double> _f$price = Field('price', _$price);
  static String _$ownerContact(Machine v) => v.ownerContact;
  static const Field<Machine, String> _f$ownerContact =
      Field('ownerContact', _$ownerContact);

  @override
  final MappableFields<Machine> fields = const {
    #id: _f$id,
    #name: _f$name,
    #imageInBase64: _f$imageInBase64,
    #owner: _f$owner,
    #location: _f$location,
    #price: _f$price,
    #ownerContact: _f$ownerContact,
  };

  static Machine _instantiate(DecodingData data) {
    return Machine(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        imageInBase64: data.dec(_f$imageInBase64),
        owner: data.dec(_f$owner),
        location: data.dec(_f$location),
        price: data.dec(_f$price),
        ownerContact: data.dec(_f$ownerContact));
  }

  @override
  final Function instantiate = _instantiate;

  static Machine fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Machine>(map);
  }

  static Machine fromJson(String json) {
    return ensureInitialized().decodeJson<Machine>(json);
  }
}

mixin MachineMappable {
  String toJson() {
    return MachineMapper.ensureInitialized()
        .encodeJson<Machine>(this as Machine);
  }

  Map<String, dynamic> toMap() {
    return MachineMapper.ensureInitialized()
        .encodeMap<Machine>(this as Machine);
  }

  MachineCopyWith<Machine, Machine, Machine> get copyWith =>
      _MachineCopyWithImpl(this as Machine, $identity, $identity);
  @override
  String toString() {
    return MachineMapper.ensureInitialized().stringifyValue(this as Machine);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            MachineMapper.ensureInitialized()
                .isValueEqual(this as Machine, other));
  }

  @override
  int get hashCode {
    return MachineMapper.ensureInitialized().hashValue(this as Machine);
  }
}

extension MachineValueCopy<$R, $Out> on ObjectCopyWith<$R, Machine, $Out> {
  MachineCopyWith<$R, Machine, $Out> get $asMachine =>
      $base.as((v, t, t2) => _MachineCopyWithImpl(v, t, t2));
}

abstract class MachineCopyWith<$R, $In extends Machine, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      String? name,
      String? imageInBase64,
      String? owner,
      String? location,
      double? price,
      String? ownerContact});
  MachineCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MachineCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Machine, $Out>
    implements MachineCopyWith<$R, Machine, $Out> {
  _MachineCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Machine> $mapper =
      MachineMapper.ensureInitialized();
  @override
  $R call(
          {String? id,
          String? name,
          String? imageInBase64,
          String? owner,
          String? location,
          double? price,
          String? ownerContact}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (imageInBase64 != null) #imageInBase64: imageInBase64,
        if (owner != null) #owner: owner,
        if (location != null) #location: location,
        if (price != null) #price: price,
        if (ownerContact != null) #ownerContact: ownerContact
      }));
  @override
  Machine $make(CopyWithData data) => Machine(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      imageInBase64: data.get(#imageInBase64, or: $value.imageInBase64),
      owner: data.get(#owner, or: $value.owner),
      location: data.get(#location, or: $value.location),
      price: data.get(#price, or: $value.price),
      ownerContact: data.get(#ownerContact, or: $value.ownerContact));

  @override
  MachineCopyWith<$R2, Machine, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _MachineCopyWithImpl($value, $cast, t);
}
