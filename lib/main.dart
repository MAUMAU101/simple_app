import 'package:flutter/material.dart';
import 'package:simple_app/screen/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: LoginPage(),
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false);
  }
}
