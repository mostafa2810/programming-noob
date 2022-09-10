import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({Key? key, required this.text, required this.color})
      : super(key: key);
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      //dont make it from the begin
      margin:const EdgeInsets.only(left: 20,right: 20,bottom: 10) ,
      width: double.maxFinite,
      height: screenHight / 14,
      decoration: BoxDecoration(
        color: Color(0xFFedf0f8),
        borderRadius: BorderRadius.circular(0),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: color,
          ),
        ),
      ),
    );
  }
}
