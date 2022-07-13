import 'package:direct_all_app/Utils/responsive.dart';
import 'package:direct_all_app/modules/splashScreen/view/isDesktop/view_desktop_splashscreen.dart';
import 'package:direct_all_app/modules/splashScreen/view/isMobile/view_mobile_splashscreen.dart';
import 'package:direct_all_app/modules/splashScreen/view/isTablet/view_tablet_splashscreen.dart';
import 'package:direct_all_app/theme/app_color.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  AppColor.splashScreenBackgroundColor,
      body: Responsive.isMobile(context)
          ?  ViewMobileSplashScreen()
          : Responsive.isTablet(context)
              ? const ViewTabletSplashScreen()
              : Responsive.isTablet(context)
                  ? const ViewDesktopSplashScreen()
                  : const ViewDesktopSplashScreen(),
    ) ;
  }

}
