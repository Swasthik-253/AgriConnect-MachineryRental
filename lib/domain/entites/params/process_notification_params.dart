import 'package:dart_mappable/dart_mappable.dart';

part 'process_notification_params.mapper.dart';

@MappableEnum()
enum NotiAction {
  accept,
  reject;
}

@MappableClass()
class ProcessNotificationParams with ProcessNotificationParamsMappable {
  final String id;
  final NotiAction action;

  ProcessNotificationParams({required this.id, required this.action});
}
