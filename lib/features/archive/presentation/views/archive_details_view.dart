import 'package:bookly/constants/constant_app_dimentions.dart';
import 'package:bookly/constants/constant_text_style.dart';
import 'package:bookly/core/common/special_scaffold_with_backgound.dart';

import 'package:flutter/material.dart';

class ArchiveDetailsView extends StatelessWidget {
  const ArchiveDetailsView({
    super.key,
    required this.archiveItems
  });

  final archiveItems;
  @override
  Widget build(BuildContext context) {
    return SpecialScaffoldWithBackground(
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: AppDimensions.screenHeight * 0.35,
            child: archiveItems.backgroundImage,
          ),
          Text(
            archiveItems.title,
            style: TextStyles.textStyleNormalGreen,
            textDirection: TextDirection.rtl,
          ),
          SizedBox(height: AppDimensions.mediumPadding),
          Text(
            archiveItems.details1,
            style: TextStyles.textStyleNormalWhite,
            textDirection: TextDirection.rtl,
          ),
          SizedBox(height: AppDimensions.mediumPadding),
          Text(
            archiveItems.details2,
            style: TextStyles.textStyleNormalWhite,
            textDirection: TextDirection.rtl,
          ),
          SizedBox(height: AppDimensions.mediumPadding),
          Text(
            archiveItems.details3,
            style: TextStyles.textStyleNormalWhite,
            textDirection: TextDirection.rtl,
          ),
          SizedBox(height: AppDimensions.mediumPadding),
        ],
      ),
      backgroundImage: null,
    );
  }
}
