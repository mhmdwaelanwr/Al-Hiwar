import 'package:bookly/constants/constant_app_dimentions.dart';
import 'package:flutter/material.dart';

class AssetImages {
  static final Widget facebookImage = Image.asset('assets/images/f.png');
  static final Widget background0 = Image.asset(
    'assets/images/background0.jpg',
    fit: BoxFit.cover,
  );
  static final Widget background1 = Image.asset(
    'assets/images/background1.jpg',
  );
  static final Widget background2 = Image.asset(
    'assets/images/background2.jpg',
  );
  static final Widget background3 = Image.asset(
    'assets/images/background3.jpg',
  );
  static final Widget background01 = Image.asset(
    'assets/images/background01.jpg',
  );
  static final Widget background02 = Image.asset(
    'assets/images/background02.jpg',
  );
  static final Widget background03 = Image.asset(
    'assets/images/background03.jpg',
  );
  static final Widget homeIcon = Image.asset('assets/images/homeIcon.png');
  static final Widget aboutUsIcon = Image.asset(
    'assets/images/AboutUsIcon.png',
  );
  static final Widget tvIcon = Image.asset("assets/images/tvIcon.png");
  static final Widget whatsapp = Image.asset(
    'assets/images/whatsapp.png',
    height: AppDimensions.iconSize(),
    width: AppDimensions.iconSize(),
  );
  static final Widget logoWnameSmall = Image.asset(
    'assets/images/logoWnameSmall.png',
  );
  static final Widget logoWnameBig = Image.asset(
    'assets/images/logoWnameBig.png',
    width: AppDimensions.imageWidth(0.4),
    height: AppDimensions.imageHeight(0.2),
  );
}
