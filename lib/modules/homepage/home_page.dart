import 'package:direct_all_app/Utils/responsive.dart';
import 'package:direct_all_app/modules/homepage/view/isDesktop/view_desktop_homepage.dart';
import 'package:direct_all_app/modules/homepage/view/isMobile/view_mobile_homepage.dart';
import 'package:direct_all_app/modules/homepage/view/isTablet/view_tablet_homepage.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {

  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Responsive.isMobile(context)
          ? const ViewMobileHomePage()
          : Responsive.isTablet(context)
              ? const ViewTabletHomePage()
              : Responsive.isDesktop(context)
                  ? const ViewDesktopHomePage()
                  : const ViewDesktopHomePage();

  }
}





