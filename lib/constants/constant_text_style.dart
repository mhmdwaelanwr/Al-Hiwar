import 'package:bookly/constants/constant_app_dimentions.dart';
import 'package:bookly/constants/constant_colors.dart';
import 'package:flutter/rendering.dart';

abstract class TextStyles {
  static TextStyle textStyleTitleGreen = TextStyle(
    color: kPrimaryColor,
    fontSize: AppDimensions.fontSize(0.08),
    fontWeight: FontWeight.w700,
  );
  static TextStyle textStyleNormalGreen = TextStyle(
    color: kPrimaryColor,
    fontSize: AppDimensions.fontSize(0.05),
    fontWeight: FontWeight.w700,
  );
  static TextStyle textStyleNormalGreenWithLine = TextStyle(
    color: kPrimaryColor,
    fontSize: AppDimensions.fontSize(0.05),
    fontWeight: FontWeight.w700,
    decoration: TextDecoration.underline,
    decorationColor: kPrimaryColor,
  );

  static TextStyle textStyleBigWhite = TextStyle(
    color: kWhiteColor,
    fontSize: AppDimensions.fontSize(0.08),
    fontWeight: FontWeight.w700,
  );
  static TextStyle textStyleNormalWhite = TextStyle(
    color: kWhiteColor,
    fontSize: AppDimensions.fontSize(0.045),
    fontWeight: FontWeight.w600,
  );
  static TextStyle textStyleNormalWhiteWithUnderLine = TextStyle(
    decoration: TextDecoration.underline,
    decorationColor: kWhiteColor,
    color: kWhiteColor,
    fontSize: AppDimensions.fontSize(0.055),
    fontWeight: FontWeight.w700,
  );

  static TextStyle textStyleSmallSilver = TextStyle(
    color: ksilverColor,
    fontSize: AppDimensions.fontSize(0.05),
    fontWeight: FontWeight.w400,
  );
}
