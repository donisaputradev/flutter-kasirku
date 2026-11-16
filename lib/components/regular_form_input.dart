import 'package:flutter/material.dart';

class RegularFormInput extends StatelessWidget {
  const new({
    super.key,
    required this.controller,
    this.hintText,
    this.validator,
    this.onChanged,
    this.keyboardType,
    this.icon,
  });

  final TextEditingController controller;
  final String? hintText;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final TextInputType? keyboardType;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(hintText: hintText, prefixIcon: icon),
      validator: validator,
      onChanged: onChanged,
      keyboardType: keyboardType,
    );
  }
}
