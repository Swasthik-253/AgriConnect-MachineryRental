part of 'scan_crop_cubit.dart';

abstract class ScanCropState extends Equatable {
  const ScanCropState();
}

class ScanCropInitial extends ScanCropState {
  @override
  List<Object> get props => [];
}

class ScanCropLoading extends ScanCropState {
  @override
  List<Object> get props => [];
}

class ScanCropSuccess extends ScanCropState {
  final Crop crop;

  const ScanCropSuccess(this.crop);
  @override
  List<Object> get props => [crop];
}

class ScanCropFailure extends ScanCropState {
  final AppError error;

  const ScanCropFailure(this.error);
  @override
  List<Object> get props => [error];
}
