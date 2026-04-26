import 'package:ecommerce_course/core/constant/color.dart';
import 'package:flutter/material.dart';

import '../../../data/data_source/static/static.dart';

class CustomDoteController extends StatelessWidget {
  const CustomDoteController({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
            onboardingList.length,
                (index) => AnimatedContainer(
              margin: const EdgeInsets.only(right: 5),
              duration: const Duration(milliseconds: 900),
              width: 6,
              height: 6,
              decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius:
                  BorderRadius.circular(10)),
            ))
      ],
    );
  }
}
