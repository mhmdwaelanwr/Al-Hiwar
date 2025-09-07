
import 'package:bookly/constants/constant_app_dimentions.dart';
import 'package:bookly/constants/constant_colors.dart';
import 'package:bookly/constants/constant_text_style.dart';
import 'package:flutter/material.dart';

class MoreWidget extends StatelessWidget {
  const MoreWidget({
    super.key,
    required this.title,
    this.subTitle,
    required this.describtion,
  });
  final String title;
  final String? subTitle;
  final String describtion;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      height: AppDimensions.screenHeight * 0.6,
      width: AppDimensions.screenWidth * 0.9,
      decoration: BoxDecoration(
        color: kblackColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            Text(
              title,
              style: TextStyles.textStyleNormalWhiteWithUnderLine,
            ),
            SizedBox(height: 8),
            Text(
              subTitle ?? "",
              style: TextStyles.textStyleNormalWhite,
              
            ),

            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                describtion,

                style: TextStyles.textStyleNormalGreen,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
