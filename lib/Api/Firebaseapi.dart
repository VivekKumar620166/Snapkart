import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:snapkart/loginwork/MyOrder.dart';
import 'package:snapkart/main.dart';
import 'package:snapkart/myaap.dart';

Future<void> handleBackgroundMessage(RemoteMessage message) async {
  print('Title: ${message.notification?.title}');
  print('Body: ${message.notification?.body}');
  print('Payload: ${message.data}');
}

class FirebaseApi {
  final _firebaseMessaging = FirebaseMessaging.instance;

  void handleMessage(RemoteMessage? message) {
    // if (message == null) return;

    //   navigatorKey.currentState?.pushNamed(
    //    // MyHomePage(title: "OK").route,
    //    //  arguments: message,
    //   );
    // }

    Future<void> initNotifications() async {
      await _firebaseMessaging.requestPermission();
      final fCMToken = await _firebaseMessaging.getToken();
      print('Token: $fCMToken');
      FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
    }

    // FirebaseApi() {
    //   FirebaseMessaging.instance.getInitialMessage().then(handleMessage);
    //   FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
    //   FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
    // }
  }
}