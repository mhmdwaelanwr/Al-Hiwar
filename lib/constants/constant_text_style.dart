import 'package:bookly/constants/constant_app_dimentions.dart';
import 'package:bookly/constants/constant_colors.dart';
import 'package:flutter/rendering.dart';

abstract class TextStyles {
  static TextStyle textStyleTitleGreen = TextStyle(
    color: kPrimaryColor,
    fontSize: AppDimensions.fontSize(0.055),
    fontWeight: FontWeight.w700,
  );
  static TextStyle textStyleNormalGreen = TextStyle(
    color: kPrimaryColor,
    fontSize: AppDimensions.fontSize(0.035),
    fontWeight: FontWeight.w700,
  );

  static TextStyle textStyleBigWhite = TextStyle(
    color: kWhiteColor,
    fontSize: AppDimensions.fontSize(0.065),
    fontWeight: FontWeight.w700,
  );
  static TextStyle textStyleNormalWhite = TextStyle(
    color: kWhiteColor,
    fontSize: AppDimensions.fontSize(0.04),
    fontWeight: FontWeight.w600,
  );
  static TextStyle textStyleNormalWhiteWithUnderLine = TextStyle(
    decoration: TextDecoration.underline,
     decorationColor: kWhiteColor,
    color: kWhiteColor,
    fontSize: AppDimensions.fontSize(0.042),
    fontWeight: FontWeight.w700,
  );

  static TextStyle textStyleSmallSilver = TextStyle(
    color: ksilverColor,
    fontSize: AppDimensions.fontSize(0.02),
    fontWeight: FontWeight.w400,
  );
}
