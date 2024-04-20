import 'package:flutter/material.dart';
import 'package:kitchenwise/constants.dart';
import 'package:kitchenwise/u.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.isPassword = false,
    this.controller,
    this.autocorrect = false,
    this.autofillHints = const [],
    this.keyboardType = TextInputType.text,
  });
  final String? hintText;
  final bool isPassword;
  final TextEditingController? controller;
  final bool autocorrect;
  final Iterable<String> autofillHints;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      autofillHints: autofillHints,
      textAlignVertical: TextAlignVertical.center,
      autocorrect: autocorrect,
      obscureText: isPassword,
      obscuringCharacter: '*',
      style: AppFonts.quicksand(color: Colors.black), 
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(AppConstants.textInputBoxRadius),
          ),
          borderSide: BorderSide(color: Colors.black26),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(AppConstants.textInputBoxRadius),
          ),
          borderSide: BorderSide(color: Colors.black26),
        ),
        hintText: hintText,
        hintStyle: AppFonts.quicksand(color: Colors.grey),
        constraints:
            const BoxConstraints(maxHeight: AppConstants.textInputBoxHeight),
      ),
    );
  }
}
