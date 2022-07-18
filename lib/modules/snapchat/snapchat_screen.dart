import 'package:direct_all_app/theme/app_color.dart';
import 'package:direct_all_app/theme/app_string.dart';
import 'package:direct_all_app/modules/customappbar/custom_appbar.dart';
import 'package:direct_all_app/widgets/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Snapchat extends StatefulWidget {

  @override
  _SnapchatState createState() => _SnapchatState();
}

class _SnapchatState extends State<Snapchat> {
  // Controller controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.toNamed(Routes.messages);
        return false;
      },
      child: Scaffold(
        backgroundColor: AppColor.splashScreenBackgroundColor10,
        resizeToAvoidBottomInset: false,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                customAppbar(
                  text: StringsUtils.snapchatDirects,
                  icon: Icons.snapchat,
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
                  // bottom: 0.5.h,
                  // right: 1.w,
                  // left: 1.1.w,
                  // size: 10.w,
                  directText: StringsUtils.snapchatDirects,
                ),
                // Padding(
                //   padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 2.w),
                //   child: Column(
                //     children: [
                //       usernameTextField(
                //           controller: controller.snapchatUsernameController,
                //           showCursor: false,
                //           hintText: StringsUtils.username,
                //           textInputType: TextInputType.none,
                //           onTap: () async {
                //             controller.snapchatUsernameController.clear();
                //           }),
                //     ],
                //   ),
                // ),
                // SizedBox(
                //   height: 2.5.h,
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [OpenUserNameSnapchat()],
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
