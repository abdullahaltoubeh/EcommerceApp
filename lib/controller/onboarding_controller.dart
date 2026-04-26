import 'package:get/get.dart';

abstract class OnboardingController extends GetxController{
  next();
  onPageChanged(int val);
}

class OnboardingControllerImp extends OnboardingController{
  @override
  next() {
    // TODO: implement next
    throw UnimplementedError();
  }

  @override
  onPageChanged(int val) {
    // TODO: implement onPageChanged
    throw UnimplementedError();
  }

}