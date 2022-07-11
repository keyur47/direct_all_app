import 'dart:async';
import 'package:direct_all_app/Utils/assets_path.dart';
import 'package:direct_all_app/modules/homepage/home_page.dart';
import 'package:direct_all_app/theme/app_color.dart';
import 'package:direct_all_app/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Utils/size_utils.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/splash_screen';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    startTimeOut();
  }

  @override
  void dispose() {
    if (_timer.isActive) {
      _timer.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: AppColor.splashScreenBackgroundColor,
          // decoration:  const BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage(AppString.splashScreen),
          //     fit: BoxFit.fill,
          //   ),
          // ),
          child: Center(
            child: SizedBox(
              width: SizeUtils.horizontalBlockSize * 30,
              child: Image.asset(
                AssetsPath.appLogo,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }

  void startTimeOut() {
    _timer = Timer.periodic(
      const Duration(seconds: 5),
      (timer) {
        Get.offAllNamed(HomePageScreen.routeName);
      },
    );
  }
}
