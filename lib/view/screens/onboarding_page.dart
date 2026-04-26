import 'package:ecommerce_course/view/widgets/onboarding/custom_button.dart';
import 'package:ecommerce_course/view/widgets/onboarding/custom_dote_controller.dart';
import 'package:ecommerce_course/view/widgets/onboarding/custom_slider.dart';
import 'package:flutter/material.dart';

import '../../data/data_source/static/static.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: CustomSlider()
              ),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      CustomDoteController(),
                      const Spacer(flex: 2),
                      CustomButton()
                    ],
                  ))
            ],
          ),
        ));
  }
}
