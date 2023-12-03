import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:simple_app/consent/navigation.dart';
import 'package:simple_app/screen/login.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 33, 243, 173),
            Color.fromARGB(255, 97, 91, 75),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _page(),
      ),
    );
  }

  Widget _page() {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            _extraText(),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () =>
                    Navigation.navigateTo(context, const LoginPage()),
                child: const Text('Lets Begins')),
          ],
        ),
      ),
    );
  }

  Widget _extraText() {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 18, 18, 18).withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: 'Welcome to ReceBuddy',
              style: TextStyle(
                fontSize: 40,
                color: Color.fromARGB(255, 106, 67, 174),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
