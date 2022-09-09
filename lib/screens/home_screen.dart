import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_golang_yt/colors/app_colors.dart';
import 'package:flutter_golang_yt/widget/button_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.kBlackColor.withOpacity(0.4),
      body: Stack(
        children: [
          Positioned(
            top: screenHight * 0.1,
            left: -88,
            child: Container(
              height: 166,
              width: 166,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.kPinkColor,
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                child: Container(
                  height: 166,
                  width: 166,
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHight * 0.3,
            right: -100,
            child: Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.kGreenColor,
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                child: Container(
                  height: 200,
                  width: 200,
                ),
              ),
            ),
          ),
         
          Container(
            width: double.maxFinite,
            height: double.maxFinite,
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                      text: 'Hello',
                      style: const TextStyle(
                        color: AppColors.kWhiteColor,
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: '\nstart your beautiful day',
                          style: TextStyle(
                            color: AppColors.kWhiteColor.withOpacity(0.8),
                            fontSize: 14,
                          ),
                        ),
                      ]),
                ),
             SizedBox(height: screenHight/2.5,),
                ButtonWidget(
                  backgroundColor: AppColors.kGreenColor.withOpacity(0.6),
                  text: 'Add Task',
                  textColor: AppColors.kWhiteColor,
                ),
               const SizedBox(
                  height: 20,
                ),
                const ButtonWidget(
                  backgroundColor: AppColors.kGreyColor,
                  text: 'View All',
                  textColor: AppColors.kWhiteColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
