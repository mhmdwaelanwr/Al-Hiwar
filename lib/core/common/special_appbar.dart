import 'package:bookly/constants/constant_app_dimentions.dart';
import 'package:bookly/constants/constant_colors.dart';
import 'package:bookly/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class SpecialAppBar extends StatelessWidget {
  const SpecialAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppDimensions.screenHeight * 0.185,
      width: double.infinity,
      color: kgrayColor.withOpacity(0.75),
      child: Padding(
        padding: EdgeInsets.only(
          left: AppDimensions.screenWidth * 0.05,

          top: AppDimensions.screenHeight * 0.08,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(
                Icons.menu,
                color: kWhiteColor,
                size: AppDimensions.iconSize(),
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),

          //  AssetImages.whatsapp,
            Spacer(),
            AssetImages.logoWnameBig,
            SizedBox(width: AppDimensions.screenWidth * 0.05),
          ],
        ),
      ),
    );
  }
}
