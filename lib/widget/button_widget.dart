import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final Color textColor;
  
  const ButtonWidget(
      {Key? key,
      required this.backgroundColor,
      required this.text,
      required this.textColor, })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: double.maxFinite,
      height: screenHight / 14,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
