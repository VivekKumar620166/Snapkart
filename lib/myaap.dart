import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snapkart/localNotification.dart';
import 'package:snapkart/main.dart';

class MyAppStatefulWidget extends StatefulWidget {
  const MyAppStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyAppStatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyAppStatefulWidget> {
  @override
  void initState(){
     AwesomeNotifications().setListeners(
         onActionReceivedMethod: NotificationController.onActionReceivedMethod,
         onNotificationCreatedMethod:
          NotificationController.onNotificationCreateMethod,
       onNotificationDisplayedMethod:
       NotificationController.onNotificationDisplayMethod,
       onDismissActionReceivedMethod:
         NotificationController.onDismissActionReceivedMethod);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}
