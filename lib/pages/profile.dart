import 'package:flutter/material.dart';
import 'package:kasirku/pages/login.dart';

class ProfilePage extends StatelessWidget {
  const new({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Kasirku')),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 24,
            children: [
              Text(email, textAlign: TextAlign.center),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPage();
                      },
                    ),
                    (_) => false,
                  );
                },
                child: Text('Keluar Akun'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
