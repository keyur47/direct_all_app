import 'package:direct_all_app/Utils/size_utils.dart';
import 'package:direct_all_app/theme/app_color.dart';
import 'package:flutter/material.dart';

Widget createButton({required String? text}) {
  return Container(
    decoration: BoxDecoration(
        color: AppColor.splashScreenBackgroundColor,
        borderRadius: BorderRadius.circular(SizeUtils.horizontalBlockSize * 2)),
    child: Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeUtils.horizontalBlockSize * 16,
          vertical: SizeUtils.verticalBlockSize * 1.4 ,),
      child: Text(
        "${text}",
        style: TextStyle(
            color: AppColor.whiteColor,
            fontSize: 16,
            fontWeight: FontWeight.w600),
      ),
    ),
  );
}
