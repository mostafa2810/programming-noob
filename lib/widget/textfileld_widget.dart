import 'package:flutter/material.dart';
import 'package:flutter_golang_yt/colors/app_colors.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({Key? key, required this.maxLine, required this.controller, required this.text, required this.borderRadius}) : super(key: key);
  final int maxLine;
  final TextEditingController controller;
  final String text;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLine,
      //controller: nameController, try it with the student's
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.kWhiteColor.withOpacity(0.5),
        hintText: text,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(
            color: AppColors.kWhiteColor,
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(
            color: AppColors.kWhiteColor,
            width: 1,
          ),
        ),
      ),
    );
  }
}
