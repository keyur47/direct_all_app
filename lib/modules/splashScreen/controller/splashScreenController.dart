import 'dart:async';
import 'package:direct_all_app/widgets/routes.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  late Timer _timer;

  @override
  void onInit() {
    super.onInit();
    startTimeOut();
  }

  @override
  void dispose() {
    if (_timer.isActive) {
      _timer.cancel();
    }
    super.dispose();
  }

  void startTimeOut() {
    _timer = Timer.periodic(
      const Duration(seconds: 5),
      (timer) {
        Get.offAllNamed(Routes.homePageScreen);
      },
    );
  }

}
