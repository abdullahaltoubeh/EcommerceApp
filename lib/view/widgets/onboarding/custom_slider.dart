import 'package:ecommerce_course/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/data_source/static/static.dart';

class CustomSlider extends GetView<OnboardingControllerImp> {
  const CustomSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return  PageView.builder(
      onPageChanged: (val){
        controller.onPageChanged(val);
      },
      itemCount:  onboardingList.length,
      itemBuilder: (context, i) => Column(
        children: [
          const SizedBox(height: 40),
          Text(
            onboardingList[i].title!,
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(height: 80),
          Image.asset(
            onboardingList[i].imageURL!,
            width: 200,
            height: 250,
            fit: BoxFit.fill,
          ),
          const SizedBox(height: 80),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              onboardingList[i].body!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  height: 2, color: Colors.grey, fontSize: 17),
            ),
          ),
        ],
      ),
    );
  }
}
