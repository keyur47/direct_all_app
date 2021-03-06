import 'package:direct_all_app/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NumPad extends StatelessWidget {
  final double? buttonSize;
  final Color? buttonColor;
  final Color? iconColor;
  final TextEditingController? controller;
  final Function delete;
  final Function onSubmit;
  final Function clear;

  const NumPad({
    Key? key,
    this.buttonSize = 0,
    this.buttonColor = Colors.indigo,
    this.iconColor = Colors.amber,
    required this.delete,
    required this.onSubmit,
    required this.clear,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.only(left: 0, right: 0),
      child: SingleChildScrollView(
         child: Column(
          children: [
            SizedBox(height: 2.5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NumberButton(
                  number: 1,
                  size: buttonSize,
                  color: buttonColor,
                  controller: controller,
                ),
                NumberButton(
                  number: 2,
                  size: buttonSize,
                  color: buttonColor,
                  controller: controller,
                ),
                NumberButton(
                  number: 3,
                  size: buttonSize,
                  color: buttonColor,
                  controller: controller,
                ),
              ],
            ),
            SizedBox(height: 2.5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NumberButton(
                  number: 4,
                  size: buttonSize,
                  color: buttonColor,
                  controller: controller,
                ),
                NumberButton(
                  number: 5,
                  size: buttonSize,
                  color: buttonColor,
                  controller: controller,
                ),
                NumberButton(
                  number: 6,
                  size: buttonSize,
                  color: buttonColor,
                  controller: controller,
                ),
              ],
            ),
            SizedBox(height: 2.5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NumberButton(
                  number: 7,
                  size: buttonSize,
                  color: buttonColor,
                  controller: controller,
                ),
                NumberButton(
                  number: 8,
                  size: buttonSize,
                  color: buttonColor,
                  controller: controller,
                ),
                NumberButton(
                  number: 9,
                  size: buttonSize,
                  color: buttonColor,
                  controller: controller,
                ),
              ],
            ),
            SizedBox(height: 1.5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // GestureDetector(
                //     onTap: (){
                //       clear();
                //     },
                //     child: Container(
                //         height: buttonSize,
                //         width: buttonSize,
                //         child: Center(child: Text("C",style: TextStyle(),textAlign: TextAlign.center,)))),
                // Container(
                //   width: buttonSize,
                //   height: buttonSize,
                //   decoration: const BoxDecoration(
                //     shape: BoxShape.circle,
                //     color: AppColor.backgroundColor,
                //   ),
                //   child: Center(
                //     child: Text(
                //       "C",
                //       style: TextStyle(
                //         color: AppColor.appColors,
                //         fontSize: 40,
                //         fontWeight: FontWeight.w500,
                //       ),
                //     ),
                //   ),
                // ),
                IconButton(
                  focusColor: Colors.transparent,
                  onPressed: () => clear(),
                  color: Colors.transparent,
                  splashColor: Colors.transparent,
                  icon: Icon(
                    Icons.copyright,
                    color: AppColor.iconColor,
                  ),
                  iconSize: buttonSize,
                ),
                NumberButton(
                  number: 0,
                  size: buttonSize,
                  color: buttonColor,
                  controller: controller,
                ),
                IconButton(
                  onPressed: () => delete(),
                  icon: Icon(
                    Icons.history_rounded,
                    color: AppColor.iconColor,
                  ),
                  iconSize: buttonSize,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// define NumberButton widget
// its shape is round
class NumberButton extends StatelessWidget {
  final int? number;
  final double? size;
  final Color? color;
  final TextEditingController? controller;

  const NumberButton({
    Key? key,
    required this.number,
    required this.size,
    required this.color,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
          ),
        ),
        onPressed: () {
          controller?.text += number.toString();
        },
        child: Center(
          child: Text(
            number.toString(),
            style:  TextStyle(
                fontWeight: FontWeight.bold, color: AppColor.whiteColor, fontSize: 30, fontFamily: 'Customtext',),
          ),
        ),
      ),
    );
  }
}
