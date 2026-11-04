import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kasirku/colors.dart';
import 'package:kasirku/components/components.dart';
import 'package:kasirku/extentions/theme_extention.dart';
import 'package:kasirku/pages/main.dart';
import 'package:kasirku/pages/register.dart';

class LoginPage extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
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
    return Form(
      key: _formKey,
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              spacing: 16,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 4,
                  children: [
                    HeadingText(
                      text: 'Selamat Datang',
                      color: AppColors.primary,
                    ),
                    RegularText(text: 'Hi, silakan masuk untuk melanjutkan'),
                  ],
                ),
                SizedBox(height: 24),
                SizedBox(
                  height: 165,
                  child: Image.asset(
                    'assets/images/illustration-login.png',
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 24),
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text('Lupa password?'),
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
                  child: Text('Masuk'),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Belum punya akun? ',
                    style: context.theme.textTheme.bodyMedium,
                    children: [
                      TextSpan(
                        text: 'Daftar',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => RegisterPage()),
                            );
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
      ),
    );
  }
}
