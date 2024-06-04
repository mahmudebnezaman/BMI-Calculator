import 'dart:async';

import 'package:bmi_calculator_for_adults/consts/strings.dart';
import 'package:bmi_calculator_for_adults/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MyHomePage(title: bmiCalculator),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/icons/bmi.png',
                height: MediaQuery.sizeOf(context).width * 0.5,
              ).animate().fade(duration: 2.seconds),
            ),
            Text(
              bmiCalculator,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ).animate().fade(duration: 2.seconds),
          ],
        ),
      ),
    );
  }
}
