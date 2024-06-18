import 'package:flutter/material.dart';
import 'package:snapkart/Api/NotificationScreen.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(MaterialApp(
    navigatorKey: navigatorKey,
    home: Myorder(),
    routes: {
      // NotificationScreen.routeName: (context) => const NotificationScreen(),
    },
  ));
}

class Myorder extends StatefulWidget {
  const Myorder({Key? key}) : super(key: key);

  @override
  State<Myorder> createState() => _MyorderState();
}

class _MyorderState extends State<Myorder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Push Notification'),
      ),
    );
  }
}
