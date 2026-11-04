import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kasirku/colors.dart';
import 'package:kasirku/components/components.dart';
import 'package:kasirku/pages/main.dart';

class RegisterPage extends StatefulWidget {
  const new({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isAccept = false;

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(title: Text('Daftar')),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 16,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 4,
                children: [
                  HeadingText(text: 'Selamat Datang', color: AppColors.primary),
                  RegularText(text: 'Hi, silakan daftar akun terlebih dahulu'),
                ],
              ),
              SizedBox(height: 24),
              SizedBox(
                height: 165,
                child: Image.asset(
                  'assets/images/Illustration-register.png',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 24),
              RegularFormInput(
                controller: nameController,
                hintText: 'Nama',
                validator: (value) {
                  if (value != null) {
                    if (value.isEmpty) {
                      return 'Email tidak boleh kosong!';
                    } else if (!value.contains('@')) {
                      return 'Format email tidak valid!';
                    }
                  }

                  return null;
                },
              ),
              RegularFormInput(
                controller: emailController,
                hintText: 'Email',
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value != null) {
                    if (value.isEmpty) {
                      return 'Email tidak boleh kosong!';
                    } else if (!value.contains('@')) {
                      return 'Format email tidak valid!';
                    }
                  }

                  return null;
                },
              ),
              PasswordFormInput(
                controller: passwordController,
                hintText: 'Password',
                validator: (value) {
                  if (value != null) {
                    if (value.isEmpty) {
                      return 'Password tidak boleh kosong!';
                    } else if (value.length < 6) {
                      return 'Password minimal 6 karakter!';
                    }
                  }

                  return null;
                },
              ),
              Row(
                spacing: 8,
                children: [
                  Checkbox(
                    value: isAccept,
                    onChanged: (value) {
                      setState(() {
                        isAccept = !isAccept;
                      });
                    },
                  ),
                  Expanded(
                    child: RegularText(
                      text: 'Dengan menekan daftar anda setuju dengan Srayat dan Kebijakan kami',
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() == true) {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => MainPage()),
                      (_) => false,
                    );
                  }
                },
                child: Text('Daftar'),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Sudah punya akun? ',
                  style: Theme.of(context).textTheme.bodyMedium,
                  children: [
                    TextSpan(
                      text: 'Masuk',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pop(context);
                        },
                      style: TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
