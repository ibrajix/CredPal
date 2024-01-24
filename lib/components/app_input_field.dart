import 'package:cred_pal/constants/app_colors.dart';
import 'package:flutter/material.dart';

//ignore: must_be_immutable
class AppInputField extends StatelessWidget {
  AppInputField(
      {super.key,
      required this.labelText,
      this.backgroundColor = AppColors.lightPurpleShade3,
      this.prefixWidget = const SizedBox.shrink(),
      this.widthPercent = 1.0,
      required this.controller});
  final String labelText;
  Color backgroundColor;
  double widthPercent;
  Widget prefixWidget;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: FractionallySizedBox(
        widthFactor: widthPercent,
        child: TextFormField(
          controller: controller,
          cursorColor: AppColors.mainBlue,
          decoration: InputDecoration(
            prefixIconConstraints: const BoxConstraints(
              minWidth: 18,
              minHeight: 28,
            ),
            fillColor: backgroundColor,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: backgroundColor),
              borderRadius: const BorderRadius.all(Radius.circular(30)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: backgroundColor),
              borderRadius: const BorderRadius.all(Radius.circular(30)),
            ),
            labelStyle: const TextStyle(
                color: AppColors.lightPurpleShade2, fontSize: 12),
            isDense: true,
            contentPadding: const EdgeInsets.all(16),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            labelText: labelText,
            prefixIcon: prefixWidget,
          ),
        ),
      ),
    );
  }
}
