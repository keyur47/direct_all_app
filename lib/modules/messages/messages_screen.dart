import 'dart:io';

import 'package:direct_all_app/Utils/size_utils.dart';
import 'package:direct_all_app/main.dart';
import 'package:direct_all_app/modules/controller/all_screen_controller.dart';
import 'package:direct_all_app/theme/app_color.dart';
import 'package:direct_all_app/theme/app_string.dart';
import 'package:direct_all_app/modules/customappbar/custom_appbar.dart';
import 'package:direct_all_app/widgets/custom_textfield.dart';
import 'package:direct_all_app/widgets/numberkeyborad/number_keyborad.dart';
import 'package:direct_all_app/widgets/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  Controller controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.toNamed(Routes.telegram);
        return false;
      },
      child: Scaffold(
        backgroundColor: AppColor.splashScreenBackgroundColor10,
        resizeToAvoidBottomInset: false,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
           Container(
                child: Column(
                  children: [
                    customAppbar(
                      text: StringsUtils.smsDirects,
                      icon: Icons.message,
                      iconColor: AppColor.whiteColor,
                      iconColors: AppColor.whiteColor,
                      gradient: const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomRight,
                          colors: [
                            AppColor.splashScreenBackgroundColor,
                            AppColor.splashScreenBackgroundColor
                          ]),
                      directText: StringsUtils.smsDirects,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 2.w),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 4,
                                  offset: Offset(4, 8), // Shadow position
                                ),
                              ],
                              borderRadius: BorderRadius.circular(
                                SizeUtils.horizontalBlockSize * 10,
                              ),
                              color: AppColor.whiteColor,
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: SizeUtils.horizontalBlockSize * 4,
                              ),
                              child: FocusScope(
                                node: new FocusScopeNode(),
                                child: TextFormField(
                                  // enableInteractiveSelection: true,
                                  toolbarOptions: const ToolbarOptions(
                                    paste: false,
                                    copy: true,
                                    selectAll: true,
                                    cut: true,
                                  ),
                                  controller: controller.numberController,
                                  enabled: true,
                                  onTap: () {
                                    // _homePageController.isShowDialPad.value = false;
                                    // _homePageController.isShowCallHistory.value = true;
                                  },
                                  onChanged: (value) {
                                    value = controller.numberController.text;
                                  },
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter(RegExp(r'[0-9+]'), allow: true)
                                  ],
                                  style: TextStyle(
                                      color: AppColor.textColor,
                                      fontSize:
                                      SizeUtils.horizontalBlockSize * 5),
                                  showCursor: false,
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    suffixIcon: SizedBox(
                                      width: SizeUtils.horizontalBlockSize * 18,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            right: SizeUtils.horizontalBlockSize *
                                                4),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                          MainAxisAlignment.end,
                                          children: [
                                            GestureDetector(
                                              onTap: () async {
                                                // List<String> Number =
                                                // await SharedPrefs.getNumberList();
                                                // var number = controller.numberController.text = Number.last;
                                                // print("Number:-  $number");
                                              },
                                              child: Icon(
                                                Icons.history,
                                                size:
                                                SizeUtils.verticalBlockSize *
                                                    3,
                                                // color: AppColor.appColors,
                                              ),
                                            ),
                                            // Platform.isAndroid
                                            //     ? const SizedBox(
                                            //   width: 3,
                                            // )
                                            //     : const SizedBox(),
                                            // Platform.isAndroid
                                            //     ? GestureDetector(
                                            //     onLongPress: () {
                                            //       controller.numberController
                                            //           .clear();
                                            //     },
                                            //     onTap: () {
                                            //       controller.numberController
                                            //           .text =
                                            //           controller
                                            //               .numberController
                                            //               .text
                                            //               .substring(
                                            //               0,
                                            //               controller
                                            //                   .numberController
                                            //                   .text
                                            //                   .length -
                                            //                   1);
                                            //     },
                                            //     child:  Icon(Icons.clear ,size:  SizeUtils.verticalBlockSize * 2.7,color: AppColor.textColor,)
                                            //   // Image.asset(
                                            //   //   AppString.iconBack,
                                            //   //   height: SizeUtils
                                            //   //           .horizontalBlockSize *
                                            //   //       6,
                                            //   // ),
                                            // )
                                            //     : const SizedBox(
                                            //   height: 0,
                                            // ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    hintText: StringsUtils.phoneNumber,
                                    hintStyle: TextStyle(
                                        fontFamily: 'Customtext',
                                        color:
                                        AppColor.textColor.withOpacity(0.6),
                                        fontSize:
                                        SizeUtils.horizontalBlockSize * 4),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 1.5.h,
                          ),
                          textField(
                              focusNode: controller.textFocusNode,
                              boxBorder: Border(),
                              controller:
                                  controller.messagesNumberTextController,
                              hintText: StringsUtils.typeYourMessage,
                              textInputType: TextInputType.text,
                              maxLines: 7,
                              color: AppColor.whiteColor,
                              textStyle: TextStyle(
                                  color: AppColor.iconColor, fontSize: 15),
                              style: const TextStyle(
                                  fontSize: 16, color: AppColor.iconColor),
                              cursorColor: Colors.black),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // OpenCalls(),
                          // SizedBox(
                          //   width: 6.w,
                          // ),
                          // OpenSmsNumber(),
                          // SizedBox(
                          //   width: 4.w,
                          // ),
                        ],
                      ),
                    ),
                    // showNumericContainer.value
                    //     ? Flexible(
                    //         child: NumPad(
                    //           buttonSize: 15.w,
                    //           buttonColor: AppColor.splashScreenBackgroundColor,
                    //           iconColor: AppColor.textColor,
                    //           controller:
                    //               controller.callAndMessagesNumberController,
                    //           delete: () {
                    //             controller
                    //                     .callAndMessagesNumberController.text =
                    //                 controller
                    //                     .callAndMessagesNumberController.text
                    //                     .substring(
                    //                         0,
                    //                         controller
                    //                                 .callAndMessagesNumberController
                    //                                 .text
                    //                                 .length -
                    //                             1);
                    //           },
                    //           clear: () {
                    //             controller.callAndMessagesNumberController
                    //                 .clear();
                    //           },
                    //           onSubmit: () {
                    //             debugPrint(
                    //                 'Your code: ${controller.callAndMessagesNumberController.text}');
                    //             showDialog(
                    //               context: context,
                    //               builder: (_) => AlertDialog(
                    //                 content: Text(
                    //                   "You code is ${controller.callAndMessagesNumberController.text}",
                    //                   style: const TextStyle(fontSize: 30),
                    //                 ),
                    //               ),
                    //             );
                    //           },
                    //         ),
                    //       )
                    //     : const SizedBox(),
                  ],
                ),
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
