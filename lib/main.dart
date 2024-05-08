import 'package:bmi_calculator/views/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
          )
        ),
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
