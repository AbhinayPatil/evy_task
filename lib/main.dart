import 'package:evy_task/screens/recharge_history_screens/recharge_history_screen.dart';
import 'package:flutter/material.dart';

import 'config/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: "/recharge_history",
      routes: {
        "/recharge_history" : (context) => recharge_history_screen(),
      },
    );
  }
}


