import 'package:get/get.dart';

abstract class OnboardingController extends GetxController{
  next();
  onPageChanged(int val);
}

class OnboardingControllerImp extends OnboardingController{

  int currentIndex=0;

  @override
  next() {
    // TODO: implement next
    throw UnimplementedError();
  }

  @override
  onPageChanged(int val) {
     currentIndex= val;
     update();
  }

}