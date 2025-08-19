import 'package:flutter/widgets.dart';

class AppDimensions {
  static late double screenWidth;
  static late double screenHeight;

  /// تهيئة القيم (يتم استدعاؤها مرة واحدة في بداية التطبيق)
  static void init(BuildContext context) {
    final size = MediaQuery.of(context).size;
    screenWidth = size.width;
    screenHeight = size.height;
  }


  // 🟩 نسب padding
  static double get smallPadding => screenWidth * 0.02;
  static double get mediumPadding => screenWidth * 0.04;
  static double get largePadding => screenWidth * 0.08;

  // 🟨 حجم الأيقونات responsive
  static double iconSize() => screenWidth * 0.08;
  // static double iconSize(double factor) => screenWidth * factor;
  // مثال: AppDimensions.iconSize(0.08)
//✅ الاستخدام
// Icon(
//   Icons.home,
//   size: AppDimensions.iconSize(0.08), // 8% من عرض الشاشة
// )
  // 🟧 حجم الخطوط responsive
  static double fontSize(double factor) => screenWidth * factor;
  // مثال: AppDimensions.fontSize(0.05)
//✅ الاستخدام
// Text(
//   "Hello Yusuf",
//   style: TextStyle(
//     fontSize: AppDimensions.fontSize(0.05), // 5% من عرض الشاشة
//   ),
// )

 // 🟥 حجم الصور responsive
  static double imageWidth(double factor) => screenWidth * factor;
  static double imageHeight(double factor) => screenHeight * factor;
//الاستخدام
// Image.asset(
//   'assets/images/background0.jpg',
//   width: AppDimensions.imageWidth(0.8),   // 80% من عرض الشاشة
// )


}

