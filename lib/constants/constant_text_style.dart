import 'package:bookly/constants/constant_app_dimentions.dart';
import 'package:bookly/constants/constant_colors.dart';
import 'package:flutter/rendering.dart';

abstract class TextStyles {
   static  TextStyle textStyleTitleGreen = TextStyle(
    color: kPrimaryColor,
    fontSize: AppDimensions.fontSize(0.075),
    fontWeight: FontWeight.w700,
  );
  
  static  TextStyle textStyleNormalWhite = TextStyle(
    color: kWhiteColor,
    fontSize:AppDimensions.fontSize(0.05),
    fontWeight: FontWeight.w600,
  );

  static  TextStyle textStyleSmallSilver = TextStyle(
    color: ksilverColor,
    fontSize: AppDimensions.fontSize(0.04),
    fontWeight: FontWeight.w400,
  );

}
