import 'package:app/modules/auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../shared/constants/colors.dart';

class Input extends GetView<AuthController> {
  const Input(
      {super.key,
      this.onChange,
      this.focusNode,
      required this.labelText,
      this.tController,
      this.obscureText = false,
      this.suffixIcon,
      this.validator,
      this.onSubmitted,
      this.textInputType = TextInputType.text});
  final void Function(String)? onChange;
  final String labelText;
  final FocusNode? focusNode;
  final TextEditingController? tController;
  final bool obscureText;
  final void Function(String)? onSubmitted;
  final TextInputType textInputType;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // focusNode: focusNode ?? focusNode,
      textInputAction: TextInputAction.done,
      enableSuggestions: false,
      obscureText: obscureText,
      keyboardType: textInputType,

      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: line),
        ),
        suffixIcon: suffixIcon ?? suffixIcon,
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12)),
        filled: true,
        fillColor: Colors.white,
        // labelText: labelText,
        hintText: labelText,
        labelStyle: const TextStyle(),
      ),
      controller: tController ?? tController,
      validator: validator ?? validator,
      onChanged: onChange,
    );
  }
}
