import 'package:flutter/material.dart';

import 'profile.dart';
import 'register.dart';

class LoginPage extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kasirku')),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 12,
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(hintText: 'Masukkan email'),
              ),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(hintText: 'Masukkan password'),
                obscureText: true,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ProfilePage(email: emailController.text);
                      },
                    ),
                    (_) => false,
                  );
                },
                child: Text('Masuk Sekarang'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return RegisterPage();
                      },
                    ),
                  );
                },
                child: Text('Daftar Akun'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
