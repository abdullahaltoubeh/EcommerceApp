import 'package:ecommerce_course/controller/onboarding_controller.dart';
import 'package:ecommerce_course/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/data_source/static/static.dart';

class CustomDoteController extends StatelessWidget {
  const CustomDoteController({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingControllerImp>(builder: (controller)=>Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
            onboardingList.length,
                (index) => AnimatedContainer(
              margin: const EdgeInsets.only(right: 5),
              duration: const Duration(milliseconds: 900),
              width: controller.currentIndex==index ? 20: 6,
              height: 6,
              decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius:
                  BorderRadius.circular(10)),
            ))
      ],
    ));
  }
}
