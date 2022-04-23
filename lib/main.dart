import 'package:flutter/material.dart';
import 'package:titipin_store/pages/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TITIPIN STORE',
      theme: ThemeData(),
      home: LoginPage(),
    );
  }
}
