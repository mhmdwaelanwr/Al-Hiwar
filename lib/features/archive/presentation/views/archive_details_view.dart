import 'package:bookly/constants/constant_app_dimentions.dart';
import 'package:bookly/constants/constant_text_style.dart';
import 'package:bookly/core/common/special_scaffold_with_back_arrow.dart';
import 'package:bookly/features/archive/presentation/view_models/archive_model.dart';
import 'package:bookly/main.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ArchiveDetailsView extends StatelessWidget {
   ArchiveDetailsView({super.key, required this.archiveItems});

  final ArchiveModel archiveItems;
  @override
  Widget build(BuildContext context) {
 bool ar= Bookly.localeNotifier.value.languageCode=='ar'?true:false; ;
    return SpecialScaffoldWithBackgroundWithBackArrow(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        
          SizedBox(
            width: double.infinity,
            height: AppDimensions.screenHeight * 0.35,
            child: Image.network(archiveItems.imageUrl, fit: BoxFit.cover),
          ),
          Text(
         ar?   archiveItems.titleAr: archiveItems.titleEn,
            style: TextStyles.textStyleTitleGreen,
            textDirection:ar? TextDirection.rtl:TextDirection.ltr,
          ),
          SizedBox(height: AppDimensions.smallPadding),
          Text(
            "${archiveItems.createdAt.toDate().day} / ${archiveItems.createdAt.toDate().month} / ${archiveItems.createdAt.toDate().year }",
            style: TextStyles.textStyleSmallSilver,
            textDirection:ar? TextDirection.rtl:TextDirection.ltr,
          ),
          SizedBox(height: AppDimensions.smallPadding),
          Text(
            "${archiveItems.createdAt.toDate().minute} : ${archiveItems.createdAt.toDate().hour}",
            style: TextStyles.textStyleSmallSilver,
            textDirection: ar? TextDirection.rtl:TextDirection.ltr,
          ),
          SizedBox(height: AppDimensions.mediumPadding),
          Text(
          ar?  archiveItems.details1Ar: archiveItems.details1En,
            style: TextStyles.textStyleNormalWhite,
            textDirection: ar? TextDirection.rtl:TextDirection.ltr,
          ),
          SizedBox(height: AppDimensions.mediumPadding),
          Text(
           ar? archiveItems.details2Ar: archiveItems.details2En,
            style: TextStyles.textStyleNormalWhite,
            textDirection: ar? TextDirection.rtl:TextDirection.ltr,
          ),
          SizedBox(height: AppDimensions.mediumPadding),
          Text(
           ar? archiveItems.details3Ar: archiveItems.details3En,
            style: TextStyles.textStyleNormalWhite,
            textDirection:ar? TextDirection.rtl:TextDirection.ltr,
          ),
          SizedBox(height: AppDimensions.mediumPadding),
        ],
      ),
      backgroundImage: null,
    );
  }
}
