import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:simple_app/screen/landing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: LandingPage(),
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false);
  }
}
