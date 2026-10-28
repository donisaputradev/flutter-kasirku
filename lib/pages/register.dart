import 'package:flutter/material.dart';

import 'profile.dart';

class RegisterPage extends StatefulWidget {
  const new({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final nameController = TextEditingController();
  final addressController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    addressController.dispose();
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
                controller: nameController,
                decoration: InputDecoration(hintText: 'Masukkan nama lengkap'),
              ),
              TextField(
                controller: addressController,
                decoration: InputDecoration(hintText: 'Masukkan alamat'),
              ),
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
                child: Text('Daftar Sekarang'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Sudah Punya Akun'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
