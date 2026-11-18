import 'package:material_ui/material_ui.dart';
import 'package:kasirku/components/regular_text.dart';

class RegularFormInput extends StatelessWidget {
  const new({
    super.key,
    required this.controller,
    this.hintText,
    this.validator,
    this.onChanged,
    this.keyboardType,
    this.icon,
    this.label = '',
    this.maxLength,
    this.maxLines,
    this.minLines,
  });

  final TextEditingController controller;
  final String? hintText;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final TextInputType? keyboardType;
  final Widget? icon;
  final String label;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 4,
      children: [
        if (label.isNotEmpty) RegularText(text: label),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(hintText: hintText, prefixIcon: icon),
          validator: validator,
          onChanged: onChanged,
          keyboardType: keyboardType,
          minLines: minLines,
          maxLines: maxLines ?? 1,
          maxLength: maxLength,
        ),
      ],
    );
  }
}
