import 'package:dart_mappable/dart_mappable.dart';

part 'scan_crop_params.mapper.dart';

@MappableClass()
class ScanCropParams with ScanCropParamsMappable {
  final String imageInBase64;

  ScanCropParams({
    required this.imageInBase64,
  });
}
