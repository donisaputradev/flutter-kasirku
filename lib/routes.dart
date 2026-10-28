import 'package:flutter/material.dart';
import 'package:kasirku/pages/login.dart';
import 'package:kasirku/pages/profile.dart';
import 'package:kasirku/pages/register.dart';

Route<dynamic>? routes(RouteSettings settings) {
  final args = settings.arguments as Map?;
  switch (settings.name) {
    case '/login':
      return MaterialPageRoute(
        builder: (_) {
          return LoginPage();
        },
      );
    case '/register':
      return MaterialPageRoute(
        builder: (_) {
          return RegisterPage();
        },
      );
    case '/profile':
      return MaterialPageRoute(
        builder: (_) {
          return ProfilePage(email: args?['email']);
        },
      );
    default:
      return MaterialPageRoute(
        builder: (_) {
          return Scaffold(body: Center(child: Text('Halaman tidak ditemukan')));
        },
      );
  }
}
