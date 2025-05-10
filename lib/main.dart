import 'package:bmi_calculator_for_adults/views/splash_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // runApp(const MyApp());
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      theme: ThemeData(
        brightness: Brightness.dark,
        textTheme: const TextTheme(
            bodyLarge: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 25,
            ),
            bodyMedium: TextStyle(
              // fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
            bodySmall: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 12,
            ),
            titleMedium: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            )),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            textStyle: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
