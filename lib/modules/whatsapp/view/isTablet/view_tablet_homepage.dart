import 'package:direct_all_app/theme/app_color.dart';
import 'package:direct_all_app/theme/app_string.dart';
import 'package:direct_all_app/modules/customappbar/custom_appbar.dart';
import 'package:flutter/material.dart';

class ViewTabletWhatsapp extends StatelessWidget {
  const ViewTabletWhatsapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.splashScreenBackgroundColor10,
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.splashScreenBackgroundColor,
        child: const Icon(Icons.arrow_upward_rounded),
        onPressed: () {
          // controller.scrollUp();
        },
      ),
      body: Stack(
        children: [
          customAppbar(
            text: StringsUtils.whatsDirects,
            icon: Icons.whatsapp,
            iconColor: AppColor.whiteColor,
            iconColors: AppColor.whiteColor,
            gradient: const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                colors: [
                  // Color(0xFF5FFC7B),
                  // Color(0xFF28D146),
                  AppColor.splashScreenBackgroundColor,
                  AppColor.splashScreenBackgroundColor,
                ]),
            // top: 0.4,
            // bottom: 0.5,
            // right: 1.1,
            // left: 1.1,
            // size: 10,
            directText: StringsUtils.whatsDirects,
          ),
        ],
      ),
    );
  }
}



