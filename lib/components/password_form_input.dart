import 'package:flutter/material.dart';

class PasswordFormInput extends StatefulWidget {
  const new({
    super.key,
    required this.controller,
    this.hintText,
    this.onChanged,
    this.validator,
  });

  final TextEditingController controller;
  final String? hintText;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;

  @override
  State<PasswordFormInput> createState() => _PasswordFormInputState();
}

class _PasswordFormInputState extends State<PasswordFormInput> {
  bool obsecure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: widget.hintText,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              obsecure = !obsecure;
            });
          },
          icon: Icon(obsecure ? Icons.visibility : Icons.visibility_off),
        ),
      ),
      obscureText: obsecure,
      validator: widget.validator,
      onChanged: widget.onChanged,
      keyboardType: TextInputType.visiblePassword,
    );
  }
}
