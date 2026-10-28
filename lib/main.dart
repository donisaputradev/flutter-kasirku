import 'package:flutter/material.dart';
import 'package:kasirku/pages/login.dart';

import 'routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      onGenerateRoute: routes,
      theme: ThemeData(
        inputDecorationTheme: InputDecorationThemeData(
          border: OutlineInputBorder(),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(),
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            padding: EdgeInsets.all(20),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(),
            padding: EdgeInsets.all(20),
          ),
        ),
      ),
      home: LoginPage(),
    );
  }
}
