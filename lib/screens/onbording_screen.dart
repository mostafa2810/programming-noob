import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_app_ui/components/custom_outline.dart';
import 'package:movie_app_ui/constants.dart';
import 'package:movie_app_ui/screens/home_page.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Constants.kBlackColor,
      extendBody: true,
      body: SizedBox(
        width: screenWidth,
        height: screenHight,
        child: Stack(children: [
          Positioned(
            top: screenHight * 0.1,
            left: -88,
            child: Container(
              height: 166,
              width: 166,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Constants.kPinkColor,
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                child: const SizedBox(
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
                color: Constants.kGreenColor,
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
          Center(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: screenHight * 0.07,
                  ),
                  CustomOutline(
                    strokeWidth: 4,
                    radius: screenWidth * 0.8,
                    padding: const EdgeInsets.all(4),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Constants.kPinkColor,
                        Constants.kPinkColor.withOpacity(0),
                        Constants.kGreenColor.withOpacity(0.1),
                        Constants.kGreenColor,
                      ],
                      stops: const [0.2, 0.4, 0.6, 1],
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/img-onboarding.png'),
                          fit: BoxFit.cover,
                          alignment: Alignment.bottomLeft,
                        ),
                      ),
                    ),
                    width: screenWidth * 0.8,
                    height: screenWidth * 0.8,
                  ),
                  SizedBox(
                    height: screenHight * 0.09,
                  ),
                  Text(
                    'Watch movies in \n Virtual Reality',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: screenHight <= 660 ? 18 : 34,
                      fontWeight: FontWeight.w700,
                      color: Constants.kWhiteColor.withOpacity(0.8),
                    ),
                  ),
                  SizedBox(
                    height: screenHight * 0.05,
                  ),
                  Text(
                    'Download and watch offline\n wherever you are ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: screenHight <= 660 ? 12 : 16,
                      fontWeight: FontWeight.w100,
                      color: Constants.kWhiteColor.withOpacity(0.75),
                    ),
                  ),
                  SizedBox(
                    height: screenHight * 0.03,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                    child: CustomOutline(
                      strokeWidth: 3,
                      radius: 20,
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Constants.kPinkColor,
                          Constants.kGreenColor,
                        ],
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Constants.kPinkColor.withOpacity(0.5),
                              Constants.kGreenColor.withOpacity(0.5),
                            ],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Sign Up',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: screenHight <= 660 ? 11 : 15,
                              fontWeight: FontWeight.w700,
                              color: Constants.kWhiteColor,
                            ),
                          ),
                        ),
                      ),
                      width: 160,
                      height: 38,
                      padding: const EdgeInsets.all(3),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) {
                      return Container(
                        height: 7,
                        width: 7,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 4,
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: index == 0
                                ? Constants.kGreenColor
                                : index == 1
                                    ? Constants.kWhiteColor.withOpacity(0.2)
                                    : Constants.kWhiteColor.withOpacity(0.2)),
                      );
                    }),
                  ),
                  SizedBox(
                    height: screenHight * 0.03,
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
