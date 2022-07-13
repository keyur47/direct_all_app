// import 'package:direct_all_app/Utils/size_utils.dart';
// import 'package:direct_all_app/theme/app_color.dart';
// import 'package:direct_all_app/theme/app_string.dart';
// import 'package:direct_all_app/widgets/routes.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import 'controller.dart';
//
// class customAppbar extends StatelessWidget {
//   customAppbar(
//       {required this.text,
//         required this.icon,
//         required this.iconColor,
//         required this.iconColors,
//         required this.gradient,
//         required this.directText,
//       });
//
//   String text;
//   IconData icon;
//   Color iconColor;
//   Color iconColors;
//   Gradient gradient;
//   String directText;
//
//   AppbarController controller = Get.find();
//   final GlobalKey<PopupMenuButtonState<int>> _key = GlobalKey();
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     // _key.currentState?.showButtonMenu();
//                   },
//                   child: Container(
//                     decoration: BoxDecoration(
//                         boxShadow: const [
//                           BoxShadow(
//                             color: Colors.black12,
//                             blurRadius: 3,
//                             offset: Offset(4, 6), // Shadow position
//                           ),
//                         ],
//                         borderRadius: BorderRadius.circular(10),
//                         gradient: gradient),
//                     child: Padding(
//                       padding: EdgeInsets.all(2),
//                       child: Icon(
//                         icon,
//                         size: SizeUtils.horizontalBlockSize * 11,
//                         color: iconColor,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 2,
//                 ),
//                 Text(
//                   directText,
//                   style: TextStyle(
//                       fontSize: 18,
//                       fontFamily: "Customtext",
//                       fontWeight: FontWeight.w700),
//                 ),
//                 PopupMenuButton<int>(
//                   key: _key,
//                   elevation: 20,
//                   child: Icon(Icons.arrow_drop_down),
//                   onSelected: (int value) async{
//                     controller.popupMenuItemIndex.value = value;
//                     if (controller.popupMenuItemIndex.value == 1) {
//                       Get.toNamed(Routes.homePageScreen);
//                     } else if (controller.popupMenuItemIndex.value == 2) {
//                       Get.toNamed(Routes.homePageScreen);
//                     } else if (controller.popupMenuItemIndex.value == 3) {
//                       Get.toNamed(Routes.homePageScreen);
//                     } else if (controller.popupMenuItemIndex.value == 4) {
//                       Get.toNamed(Routes.homePageScreen);
//                     } else if (controller.popupMenuItemIndex.value == 5) {
//                       Get.toNamed(Routes.homePageScreen);
//                     } else {}
//                     controller.pageIndex.value =
//                         controller.popupMenuItemIndex.value;
//                     print("Value:- $value");
//                     print("Value12:- ${controller.popupMenuItemIndex.value}");
//                     print("Value19:- ${controller.pageIndex.value}");
//                   },
//                   itemBuilder: (context) => [
//                     PopupMenuItem(
//                       padding: EdgeInsets.zero,
//                       child: Center(child: Text(StringsUtils.whatsApp,style: TextStyle(color: AppColor.splashScreenBackgroundColor,fontFamily: "Customtext"),)),
//                       value: 1,
//                     ),
//                     PopupMenuItem(
//                       padding: EdgeInsets.zero,
//                       child: Center(child: Text(StringsUtils.instagram,style: TextStyle(color: AppColor.splashScreenBackgroundColor,fontFamily: "Customtext"))),
//                       value: 2,
//                     ),
//                     PopupMenuItem(
//                       padding: EdgeInsets.zero,
//                       child: Center(child: Text(StringsUtils.telegram,style: TextStyle(color: AppColor.splashScreenBackgroundColor,fontFamily: "Customtext"))),
//                       value: 3,
//                     ),
//                     PopupMenuItem(
//                       padding: EdgeInsets.zero,
//                       child: Center(child: Text(StringsUtils.sms,style: TextStyle(color: AppColor.splashScreenBackgroundColor,fontFamily: "Customtext"))),
//                       value: 4,
//                     ),
//                     PopupMenuItem(
//                       padding: EdgeInsets.zero,
//                       child: Center(child: Text(StringsUtils.snapchat,style: TextStyle(color: AppColor.splashScreenBackgroundColor,fontFamily: "Customtext"))),
//                       value: 5,
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
