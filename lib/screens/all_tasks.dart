import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_golang_yt/colors/app_colors.dart';
import 'package:flutter_golang_yt/widget/button_widget.dart';
import 'package:flutter_golang_yt/widget/task_widget.dart';

class AllTasks extends StatelessWidget {
  const AllTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List myData = [
      'Try Smarter',
      'Finish your Task',
    ];
    final leftEditWidget = Container(
      alignment: Alignment.centerRight,
      margin: const EdgeInsets.only(bottom: 10),
      color: const Color(0xFF2e3253).withOpacity(0.5),
      child: const Icon(
        Icons.edit,
        color: AppColors.kWhiteColor,
      ),
    );
    final rightEditWidget = Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(bottom: 10),
      color: Colors.redAccent,
      child: const Icon(
        Icons.delete_forever_sharp,
        color: AppColors.kWhiteColor,
      ),
    );

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
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20, top: 60),
                alignment: Alignment.topLeft,
                child: Icon(
                  Icons.arrow_back,
                  color: AppColors.kWhiteColor,
                ),
                width: double.maxFinite,
                height: screenHight / 3.2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/welcome.png'),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.home,
                      color: AppColors.secondaryColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Icon(
                        Icons.add,
                        color: AppColors.kWhiteColor,
                        size: 20,
                      ),
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.5),
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.calendar_month_sharp,
                      color: AppColors.kWhiteColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '2',
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColors.kWhiteColor,
                      ),
                    )
                  ],
                ),
              ),
              Flexible(
                child: ListView.builder(
                    itemCount: myData.length,
                    itemBuilder: (context, index) {
                      return Dismissible(
                        background: leftEditWidget,
                        secondaryBackground: rightEditWidget,
                        onDismissed: (direction) {
                          print('after dismiss');
                        },
                        confirmDismiss: (direction) async {
                          // print('confirming');
                          if (direction == DismissDirection.startToEnd) {
                            showModalBottomSheet(
                                backgroundColor: Colors.transparent,
                                barrierColor: Colors.transparent,
                                context: context,
                                builder: (_) {
                                  return Container(
                                    height: 430,

                                    decoration:  BoxDecoration(
                                      color:const Color(0xFF2e3253).withOpacity(0.4),
                                      borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        topLeft: Radius.circular(20),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          ButtonWidget(
                                              backgroundColor:
                                                  AppColors.mainColor,
                                              text: 'View',
                                              textColor: AppColors.kWhiteColor),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          ButtonWidget(
                                              backgroundColor:
                                                  AppColors.mainColor,
                                              text: 'Edit',
                                              textColor: AppColors.kWhiteColor),
                                        ],
                                      ),
                                    ),

                                    //  Text('test',style:TextStyle(color: Colors.white)),
                                  );
                                });
                            return false;
                          } else {
                            return Future.delayed(Duration(seconds: 1),
                                () => direction == DismissDirection.endToStart);
                          }
                        },
                        key: ObjectKey(index),
                        child: Container(
                          child: TaskWidget(
                            color: Colors.blueGrey,
                            text: myData[index],
                          ),
                        ),
                      );
                    }),
              )
            ],
          )
        ],
      ),
    );
  }
}
