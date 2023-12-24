import 'package:flutter/material.dart';

class OutlinedTextFormField extends StatelessWidget {
  final String label;
  final String? hint;
  final String? initialValue;
  final TextEditingController? controller;
  final bool obscureText;
  final bool readOnly;
  final void Function(String?)? onChanged;
  final void Function()? onEditingComplete;
  final void Function(String?)? onSaved;
  final int? maxLines;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const OutlinedTextFormField({
    super.key,
    required this.label,
    this.hint,
    this.initialValue,
    this.controller,
    this.onChanged,
    this.onEditingComplete,
    this.onSaved,
    this.maxLines = 1,
    this.readOnly = false,
    this.obscureText = false,
    this.validator,
    this.keyboardType,
    this.textInputAction,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: TextFormField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          label: Text(label),
          hintText: hint,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
        initialValue: initialValue,
        onChanged: onChanged,
        onEditingComplete: onEditingComplete,
        onSaved: onSaved,
        maxLines: maxLines,
        readOnly: readOnly,
        obscureText: obscureText,
        controller: controller,
        validator: validator,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
      ),
    );
  }
}
