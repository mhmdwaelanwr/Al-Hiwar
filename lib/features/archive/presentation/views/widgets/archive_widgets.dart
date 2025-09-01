import 'package:bookly/constants/constant_app_dimentions.dart';
import 'package:bookly/constants/constant_colors.dart';
import 'package:bookly/constants/constant_text_style.dart';

import 'package:bookly/features/archive/presentation/view_models/archive_model.dart';
import 'package:bookly/features/archive/presentation/views/archive_details_view.dart';

import 'package:flutter/material.dart';

class ArciveWidget extends StatelessWidget {
  const ArciveWidget({super.key, required this.archiveItem});

  final ArchiveModel archiveItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ArchiveDetailsView(archiveItems: archiveItem);
            },
          ),
        );
      },
      child: Container(
        width: double.infinity,
        height: AppDimensions.screenHeight * 0.4,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Stack(
          children: [
            SizedBox.expand(child: archiveItem.backgroundImage),
            Positioned(
              right: 12,
              left: 12,
              bottom: 30,
              child: Container(
                margin: EdgeInsets.all(AppDimensions.mediumPadding),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: kblackColor.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(12),
                ),

                child: Text(
                  archiveItem.title,
                  style: TextStyles.textStyleNormalWhite,
                  maxLines: 3,
                  textDirection: TextDirection.rtl,
                ),
              ),
            ),

            Positioned(
              right: 12,
              bottom: 20,
              child: Text(
                "<< اقرأ المزيد",
                style: TextStyles.textStyleSmallSilver,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
