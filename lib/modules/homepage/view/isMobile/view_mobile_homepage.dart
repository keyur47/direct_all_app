


import 'package:direct_all_app/Utils/assets_path.dart';
import 'package:direct_all_app/Utils/responsive.dart';
import 'package:direct_all_app/Utils/size_utils.dart';
import 'package:direct_all_app/modules/homepage/welcome_message/welcome_message.dart';
import 'package:direct_all_app/theme/app_color.dart';
import 'package:direct_all_app/theme/app_string.dart';
import 'package:direct_all_app/widgets/categories_box.dart';
import 'package:direct_all_app/widgets/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewMobileHomePage extends StatelessWidget {
  const ViewMobileHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.splashScreenBackgroundColor10,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.splashScreenBackgroundColor,
        child: const Icon(Icons.arrow_upward_rounded),
        onPressed: () {
          // controller.scrollUp();
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(68.0),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
              color: AppColor.splashScreenBackgroundColor,
                borderRadius: BorderRadius.circular(SizeUtils.horizontalBlockSize * 2)
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.whatsapp),
              ),
            )
          ],
        ),
      ),
    );
  }
}
