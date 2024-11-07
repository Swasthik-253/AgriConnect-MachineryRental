// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'edit_profile_params.dart';

class EditProfileParamsMapper extends ClassMapperBase<EditProfileParams> {
  EditProfileParamsMapper._();

  static EditProfileParamsMapper? _instance;
  static EditProfileParamsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EditProfileParamsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'EditProfileParams';

  static String _$fullName(EditProfileParams v) => v.fullName;
  static const Field<EditProfileParams, String> _f$fullName =
      Field('fullName', _$fullName);
  static String _$email(EditProfileParams v) => v.email;
  static const Field<EditProfileParams, String> _f$email =
      Field('email', _$email);
  static String _$phoneNumber(EditProfileParams v) => v.phoneNumber;
  static const Field<EditProfileParams, String> _f$phoneNumber =
      Field('phoneNumber', _$phoneNumber);
  static String _$address(EditProfileParams v) => v.address;
  static const Field<EditProfileParams, String> _f$address =
      Field('address', _$address);
  static String _$oemail(EditProfileParams v) => v.oemail;
  static const Field<EditProfileParams, String> _f$oemail =
      Field('oemail', _$oemail);

  @override
  final MappableFields<EditProfileParams> fields = const {
    #fullName: _f$fullName,
    #email: _f$email,
    #phoneNumber: _f$phoneNumber,
    #address: _f$address,
    #oemail: _f$oemail,
  };

  static EditProfileParams _instantiate(DecodingData data) {
    return EditProfileParams(
        fullName: data.dec(_f$fullName),
        email: data.dec(_f$email),
        phoneNumber: data.dec(_f$phoneNumber),
        address: data.dec(_f$address),
        oemail: data.dec(_f$oemail));
  }

  @override
  final Function instantiate = _instantiate;

  static EditProfileParams fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EditProfileParams>(map);
  }

  static EditProfileParams fromJson(String json) {
    return ensureInitialized().decodeJson<EditProfileParams>(json);
  }
}

mixin EditProfileParamsMappable {
  String toJson() {
    return EditProfileParamsMapper.ensureInitialized()
        .encodeJson<EditProfileParams>(this as EditProfileParams);
  }

  Map<String, dynamic> toMap() {
    return EditProfileParamsMapper.ensureInitialized()
        .encodeMap<EditProfileParams>(this as EditProfileParams);
  }

  EditProfileParamsCopyWith<EditProfileParams, EditProfileParams,
          EditProfileParams>
      get copyWith => _EditProfileParamsCopyWithImpl(
          this as EditProfileParams, $identity, $identity);
  @override
  String toString() {
    return EditProfileParamsMapper.ensureInitialized()
        .stringifyValue(this as EditProfileParams);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            EditProfileParamsMapper.ensureInitialized()
                .isValueEqual(this as EditProfileParams, other));
  }

  @override
  int get hashCode {
    return EditProfileParamsMapper.ensureInitialized()
        .hashValue(this as EditProfileParams);
  }
}

extension EditProfileParamsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EditProfileParams, $Out> {
  EditProfileParamsCopyWith<$R, EditProfileParams, $Out>
      get $asEditProfileParams =>
          $base.as((v, t, t2) => _EditProfileParamsCopyWithImpl(v, t, t2));
}

abstract class EditProfileParamsCopyWith<$R, $In extends EditProfileParams,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? fullName,
      String? email,
      String? phoneNumber,
      String? address,
      String? oemail});
  EditProfileParamsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _EditProfileParamsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EditProfileParams, $Out>
    implements EditProfileParamsCopyWith<$R, EditProfileParams, $Out> {
  _EditProfileParamsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EditProfileParams> $mapper =
      EditProfileParamsMapper.ensureInitialized();
  @override
  $R call(
          {String? fullName,
          String? email,
          String? phoneNumber,
          String? address,
          String? oemail}) =>
      $apply(FieldCopyWithData({
        if (fullName != null) #fullName: fullName,
        if (email != null) #email: email,
        if (phoneNumber != null) #phoneNumber: phoneNumber,
        if (address != null) #address: address,
        if (oemail != null) #oemail: oemail
      }));
  @override
  EditProfileParams $make(CopyWithData data) => EditProfileParams(
      fullName: data.get(#fullName, or: $value.fullName),
      email: data.get(#email, or: $value.email),
      phoneNumber: data.get(#phoneNumber, or: $value.phoneNumber),
      address: data.get(#address, or: $value.address),
      oemail: data.get(#oemail, or: $value.oemail));

  @override
  EditProfileParamsCopyWith<$R2, EditProfileParams, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _EditProfileParamsCopyWithImpl($value, $cast, t);
}
