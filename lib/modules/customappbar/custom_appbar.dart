  import 'dart:core';

  import 'package:direct_all_app/Utils/size_utils.dart';
  import 'package:direct_all_app/theme/app_color.dart';
  import 'package:direct_all_app/theme/app_string.dart';
  import 'package:direct_all_app/modules/customappbar/appbar_controller.dart';
  import 'package:direct_all_app/widgets/routes.dart';
  import 'package:flutter/material.dart';
  import 'package:get/get.dart';
  import 'package:sizer/sizer.dart';



  class customAppbar extends StatelessWidget {
     customAppbar({required this.text,
       required this.icon,
       required this.iconColor,
       required this.iconColors,
       required this.gradient,
       required this.directText,
       // required this.left,
       // required this.right,
       // required this.bottom,
       // required this.top,
       // required this.size,
     }) ;

    String? text;
      IconData? icon;
      Color? iconColor;
      Color? iconColors;
      Gradient? gradient;
      // double? top;
      // double? bottom;
      // double? right;
      // double? left;
      // double? size;
      String? directText;
     AppbarController controller = Get.put(AppbarController());
     final GlobalKey<PopupMenuButtonState<int>> _key = GlobalKey();

    @override
    Widget build(BuildContext context) {
      return  Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.w, top: 1.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // _key.currentState?.showButtonMenu();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 3,
                                offset: Offset(4, 6), // Shadow position
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10),
                            gradient: gradient),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            icon,
                            size: 30,
                            color: iconColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: SizeUtils.horizontalBlockSize *0.5,
                    ),
                    Text(
                      "${directText}",
                      style: TextStyle(
                          fontSize: 28,
                          // fontFamily: "Customtext",
                          // color: AppColors.darkBlue,
                          fontWeight: FontWeight.w700),
                    ),
                    PopupMenuButton<int>(
                      key: _key,
                      tooltip: "",
                      elevation: 20,
                      child: const Icon(Icons.arrow_drop_down),
                      onSelected: (int value) async{
                        controller.popupMenuItemIndex.value = value;
                        if (controller.popupMenuItemIndex.value == 1) {
                          Get.toNamed(Routes.whatsappScreen);
                        } else if (controller.popupMenuItemIndex.value == 2) {
                          Get.toNamed(Routes.instagram);
                        } else if (controller.popupMenuItemIndex.value == 3) {
                          Get.toNamed(Routes.telegram);
                        } else if (controller.popupMenuItemIndex.value == 4) {
                          Get.toNamed(Routes.messages);
                        } else if (controller.popupMenuItemIndex.value == 5) {
                          Get.toNamed(Routes.snapchat);
                        } else {}
                        controller.pageIndex.value =
                            controller.popupMenuItemIndex.value;
                        print("Value:- $value");
                        print("Value12:- ${controller.popupMenuItemIndex.value}");
                        print("Value19:- ${controller.pageIndex.value}");
                      },
                      itemBuilder: (context) => [
                        const PopupMenuItem(
                          padding: EdgeInsets.zero,
                          child: Center(child: Text(StringsUtils.whatsApp,style: TextStyle(fontFamily: "Customtext"),)),
                          value: 1,
                        ),
                        const PopupMenuItem(
                          padding: EdgeInsets.zero,
                          child: Center(child: Text(StringsUtils.instagram,style: TextStyle(fontFamily: "Customtext"))),
                          value: 2,
                        ),
                        const PopupMenuItem(
                          padding: EdgeInsets.zero,
                          child: Center(child: Text(StringsUtils.telegram,style: TextStyle(fontFamily: "Customtext"))),
                          value: 3,
                        ),
                        const PopupMenuItem(
                          padding: EdgeInsets.zero,
                          child: Center(child: Text(StringsUtils.sms,style: TextStyle(fontFamily: "Customtext"))),
                          value: 4,
                        ),
                        const PopupMenuItem(
                          padding: EdgeInsets.zero,
                          child: Center(child: Text(StringsUtils.snapchat,style: TextStyle(fontFamily: "Customtext"))),
                          value: 5,
                        ),
                      ],
                    ),
                  ],
                ),
                PopupMenuButton(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                   icon: const Icon(Icons.menu),
                  tooltip: "",
                  onSelected: (int value) {
                    // if (value == 1) {
                    //   Get.toNamed(Routes.tabbar);
                    // } else if (value == 2) {
                    //   Share();
                    // } else if (value == 3) {
                    //   RateBox(context);
                    // } else if (value == 4) {
                    //   FeedbackBox(context);
                    // } else if (value == 5) {
                    // } else {
                    //   Get.to(About());
                    // }
                    // controller.pageIndex.value =
                    //     controller.popupMenuItemIndex.value;
                    // print("Value:- $value");
                    // print("Value12:- ${controller.popupMenuItemIndex.value}");
                    // print("Value19:- ${controller.pageIndex.value}");
                  },
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      child: Text(StringsUtils.history),
                      value: 1,
                    ),
                    const PopupMenuItem(
                      child: Text(StringsUtils.shareApp),
                      value: 2,
                    ),
                    const PopupMenuItem(
                      child: Text(StringsUtils.rateApp),
                      value: 3,
                    ),
                    const PopupMenuItem(
                      child: Text(StringsUtils.feedback),
                      value: 4,
                    ),
                    const PopupMenuItem(
                      child: Text(StringsUtils.termsAndPrivacy),
                      value: 5,
                    ),
                    const PopupMenuItem(

                      child: Text(StringsUtils.aboutApp),
                      value: 6,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      );
    }
  }




  // Widget customAppbar({
  //   Key? key,
  //   String? text,
  //   IconData? icon,
  //   Color? iconColor,
  //   Color? iconColors,
  //   Gradient? gradient,
  //   double? top,
  //   double? bottom,
  //   double? right,
  //   double? left,
  //   double? size,
  //   String? directText,
  // }) {
  //   return Stack(
  //     children: [
  //       Container(
  //           decoration: BoxDecoration(
  //               color: AppColor.splashScreenBackgroundColor,
  //               borderRadius:
  //                   BorderRadius.circular(SizeUtils.horizontalBlockSize * 2)),
  //           child: Row(
  //             children: [
  //               Container(
  //                 decoration: BoxDecoration(boxShadow: const [
  //                   BoxShadow(
  //                     color: Colors.black12,
  //                     blurRadius: 3,
  //                     offset: Offset(4, 6), // Shadow position
  //                   ),
  //                 ], borderRadius: BorderRadius.circular(10), gradient: gradient),
  //                 child: Padding(
  //                   padding: EdgeInsets.only(
  //                       top: top??0, bottom: bottom??0, right: right??0, left: left??0),
  //                   child: Icon(
  //                     icon,
  //                     size: size,
  //                     color: iconColor,
  //                   ),
  //                 ),
  //               ),
  //               Text(
  //                 "$directText",
  //                 style: const TextStyle(
  //                     fontSize: 18,
  //                     fontFamily: "Customtext",
  //                     // color: AppColor.darkBlue,
  //                     fontWeight: FontWeight.w700),
  //               ),
  //               PopupMenuButton<int>(
  //                 key: key,
  //                 elevation: 20,
  //                 child: Icon(Icons.arrow_drop_down),
  //                 onSelected: (int value) async{
  //                   controller.popupMenuItemIndex.value = value;
  //                   if (controller.popupMenuItemIndex.value == 1) {
  //                     Get.toNamed(Routes.whatsapp);
  //                   } else if (controller.popupMenuItemIndex.value == 2) {
  //                     Get.toNamed(Routes.instagram);
  //                   } else if (controller.popupMenuItemIndex.value == 3) {
  //                     Get.toNamed(Routes.telegram);
  //                   } else if (controller.popupMenuItemIndex.value == 4) {
  //                     Get.toNamed(Routes.messages);
  //                   } else if (controller.popupMenuItemIndex.value == 5) {
  //                     Get.toNamed(Routes.snapchat);
  //                   } else {}
  //                   controller.pageIndex.value =
  //                       controller.popupMenuItemIndex.value;
  //                   print("Value:- $value");
  //                   print("Value12:- ${controller.popupMenuItemIndex.value}");
  //                   print("Value19:- ${controller.pageIndex.value}");
  //                 },
  //                 itemBuilder: (context) => [
  //                   PopupMenuItem(
  //                     padding: EdgeInsets.zero,
  //                     child: Center(child: Text(StringsUtils.whatsApp,style: TextStyle(color: AppColors.darkBlue,fontFamily: "Customtext"),)),
  //                     value: 1,
  //                   ),
  //                   PopupMenuItem(
  //                     padding: EdgeInsets.zero,
  //                     child: Center(child: Text(StringsUtils.instagram,style: TextStyle(color: AppColors.darkBlue,fontFamily: "Customtext"))),
  //                     value: 2,
  //                   ),
  //                   PopupMenuItem(
  //                     padding: EdgeInsets.zero,
  //                     child: Center(child: Text(StringsUtils.telegram,style: TextStyle(color: AppColors.darkBlue,fontFamily: "Customtext"))),
  //                     value: 3,
  //                   ),
  //                   PopupMenuItem(
  //                     padding: EdgeInsets.zero,
  //                     child: Center(child: Text(StringsUtils.sms,style: TextStyle(color: AppColors.darkBlue,fontFamily: "Customtext"))),
  //                     value: 4,
  //                   ),
  //                   PopupMenuItem(
  //                     padding: EdgeInsets.zero,
  //                     child: Center(child: Text(StringsUtils.snapchat,style: TextStyle(color: AppColors.darkBlue,fontFamily: "Customtext"))),
  //                     value: 5,
  //                   ),
  //                 ],
  //               ),
  //             ],
  //           )),
  //     ],
  //   );
  // }
