// ignore_for_file: unused_local_variable

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class Notification {
  final FlutterLocalNotificationsPlugin notificationsPlugin =
      FlutterLocalNotificationsPlugin();
  Future<void> initNotification() async {
    AndroidInitializationSettings initializationSettingAndroids =
        const AndroidInitializationSettings("test");

    var initializationSettingIOS = DarwinInitializationSettings(
      defaultPresentAlert: true,
      defaultPresentBadge: true,
      requestSoundPermission: true,
      onDidReceiveLocalNotification: (id, title, body, payload) async {},
    );
    var initializationSettings = InitializationSettings(
      android: initializationSettingAndroids,
      iOS: initializationSettingIOS,
    );
    await notificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse:
          (NotificationResponse notificationResponse) async {},
    );
  }

  Future showNotification(
      {int id = 0, String? title, String? body, String? payload}) async {
    return notificationsPlugin.show(
        id, title, body, await notificationDetails());
  }

  notificationDetails() {
    return const NotificationDetails(
        android:
            AndroidNotificationDetails("a", "b", importance: Importance.max),
        iOS: DarwinNotificationDetails());
  }
}
