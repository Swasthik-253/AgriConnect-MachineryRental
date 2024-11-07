import 'package:dart_mappable/dart_mappable.dart';

part 'get_notification_params.mapper.dart';

@MappableClass()
class GetNotificationParams with GetNotificationParamsMappable {
  final String email;

  GetNotificationParams({
    required this.email,
  });
}
