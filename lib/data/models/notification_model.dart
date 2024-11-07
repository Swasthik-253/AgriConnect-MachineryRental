import 'package:dart_mappable/dart_mappable.dart';

part 'notification_model.mapper.dart';

@MappableEnum()
enum NotiType { normal, action }

@MappableClass()
class NotificationModel with NotificationModelMappable {
  final String id;
  final String title;
  final String body;
  final DateTime createdAt;
  final NotiType type;

  /// This is a flag to check if the notification has been processed (basically if the user has accepted or rejected the notification)
  final bool isProcessed;

  NotificationModel({
    required this.id,
    required this.title,
    required this.body,
    required this.createdAt,
    required this.type,
    this.isProcessed = false,
  });
}
