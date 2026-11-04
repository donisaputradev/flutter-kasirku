import 'package:flutter/material.dart';

class RegularFormInput extends StatelessWidget {
  const new({
    super.key,
    required this.controller,
    this.hintText,
    this.validator,
    this.onChanged,
    this.keyboardType,
  });

  final TextEditingController controller;
  final String? hintText;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(hintText: hintText),
      validator: validator,
      onChanged: onChanged,
      keyboardType: keyboardType,
    );
  }
}
