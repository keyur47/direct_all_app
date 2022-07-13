import 'package:direct_all_app/modules/customappbar/custom_appbar.dart';
import 'package:direct_all_app/theme/app_color.dart';
import 'package:direct_all_app/theme/app_string.dart';
import 'package:flutter/material.dart';

class ViewTabletHomePage extends StatelessWidget {
  const ViewTabletHomePage({Key? key}) : super(key: key);

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
      body: Column(
        children: [
        ],
      ),
    );
  }
}
