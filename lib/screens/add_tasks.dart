import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_golang_yt/colors/app_colors.dart';
import 'package:flutter_golang_yt/widget/button_widget.dart';
import 'package:flutter_golang_yt/widget/textfileld_widget.dart';
import 'package:get/get.dart';

class AddTask extends StatelessWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController detailController = TextEditingController();
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
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: AppColors.kWhiteColor,
                        ))
                  ],
                ),
                Column(
                  children: [
                    TextFieldWidget(
                      maxLine: 1,
                      controller: nameController,
                      text: 'Task Name',
                      borderRadius: 30,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFieldWidget(
                      maxLine: 3,
                      controller: detailController,
                      text: 'Task detail',
                      borderRadius: 15,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ButtonWidget(
                      backgroundColor: AppColors.kGreenColor.withOpacity(0.5),
                      text: 'Add',
                      textColor: AppColors.kWhiteColor,
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHight / 20,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
