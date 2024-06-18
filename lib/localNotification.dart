import 'package:awesome_notifications/awesome_notifications.dart';

class NotificationController {
  static Future<void> onNotificationCreateMethod(ReceivedNotification notification) async {
    // Handle notification creation event
    print('Notification created: ${notification.id}');
  }

  static Future<void> onNotificationDisplayMethod(ReceivedNotification notification) async {
    // Handle notification display event
    print('Notification displayed: ${notification.id}');
  }

  static Future<void> onDismissActionReceivedMethod(ReceivedNotification notification) async {
    // Handle notification dismiss action event
    print('Notification dismissed: ${notification.id}');
  }

  static Future<void> onActionReceivedMethod(ReceivedAction receivedAction) async {
    // Handle notification action event
    print('Action received: ${receivedAction.buttonKeyPressed}');
  }
}
