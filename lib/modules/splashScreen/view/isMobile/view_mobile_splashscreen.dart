import 'package:direct_all_app/Utils/assets_path.dart';
import 'package:direct_all_app/Utils/size_utils.dart';
import 'package:direct_all_app/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loading_indicator/loading_indicator.dart';

class ViewMobileSplashScreen extends StatelessWidget {
   ViewMobileSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width:  MediaQuery.of(context).size.width * 0.3,
                    // width:  SizeUtils.horizontalBlockSize * 22,
                    child: SvgPicture.asset(
                      AssetsPath.appLogo,
                      fit: BoxFit.contain,
                      color: AppColor.logoColor,
                    ),
                  ),
                  // Padding(
                  //   padding:  EdgeInsets.only(bottom: SizeUtils.horizontalBlockSize * 2,right: SizeUtils.horizontalBlockSize * 1),
                  //   child: SizedBox(
                  //     width:  SizeUtils.horizontalBlockSize * 5,
                  //     child: const Text("D",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 28,fontFamily: "Customfont",color: AppColor.logoColor),),
                  //   ),
                  // ),
                ],
              ),
              // SizedBox(height: SizeUtils.verticalBlockSize * 1,),
              // const Text("Direct\nWhatsApp",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24,fontFamily: "Customtext",color: AppColor.logoColor)),
            ],
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(bottom: SizeUtils.horizontalBlockSize * 5),
          child:  SizedBox(
            height: SizeUtils.verticalBlockSize * 5,
            child:  const LoadingIndicator(
              colors: AppColor.kDefaultRainbowColors,
              indicatorType: Indicator.ballPulse,
              backgroundColor: Colors.transparent,
              pathBackgroundColor: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
