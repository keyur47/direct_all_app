import 'package:direct_all_app/theme/app_color.dart';
import 'package:direct_all_app/theme/app_string.dart';
import 'package:direct_all_app/modules/customappbar/custom_appbar.dart';
import 'package:direct_all_app/widgets/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Telegram extends StatefulWidget {

  @override
  _TelegramState createState() => _TelegramState();
}

class _TelegramState extends State<Telegram> {
  // Controller controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.toNamed(Routes.instagram);
        return false;
      },
      child: Scaffold(
        backgroundColor: AppColor.splashScreenBackgroundColor10,
        resizeToAvoidBottomInset: false,
        body: Stack(
            alignment: Alignment.bottomCenter,
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customAppbar(
                  text: StringsUtils.telegramDirects,
                  icon: Icons.telegram,
                  iconColor: Colors.white,
                  iconColors: Colors.white,
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomRight,
                      colors: [
                        AppColor.splashScreenBackgroundColor,
                        AppColor.splashScreenBackgroundColor,
                      ]),
                  // top: 0.4.h,
                  // bottom: 0.4.h,
                  // right: 0.9.w,
                  // left: 0.9.w,
                  // size: 10.w,
                  directText: StringsUtils.telegramDirects,
                ),
                // Padding(
                //   padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 2.w),
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       usernameTextField(
                //           controller: controller.telegramUsernameController,
                //           showCursor: false,
                //           hintText: StringsUtils.username,
                //           textInputType: TextInputType.none,
                //           onTap: () async {
                //             controller.telegramUsernameController.clear();
                //           }),
                //     ],
                //   ),
                // ),
                // SizedBox(
                //   height: 2.5.h,
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     OpenUserNameTelegram(),
                //   ],
                // ),
              ],
            ),
            // Container(
            //   child:  BannerAds(),
            // ),
          ],
        ),
      ),
    );
  }
}
