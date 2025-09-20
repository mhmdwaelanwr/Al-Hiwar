import 'package:bookly/constants/constant_app_dimentions.dart';
import 'package:bookly/constants/constant_colors.dart';
import 'package:bookly/constants/constant_text_style.dart';
import 'package:bookly/features/archive/presentation/view_models/archive_model.dart';
import 'package:bookly/features/archive/presentation/views/archive_details_view.dart';
import 'package:bookly/main.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ArciveWidget extends StatefulWidget {
   ArciveWidget({super.key, required this.archiveItem});

  final ArchiveModel archiveItem;

  @override
  State<ArciveWidget> createState() => _ArciveWidgetState();
}

class _ArciveWidgetState extends State<ArciveWidget> {

  @override
  Widget build(BuildContext context) {
  bool ar= Bookly.localeNotifier.value.languageCode=='ar'?true:false;
    return GestureDetector(
      onTap: () {
        setState(() {
          
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ArchiveDetailsView(archiveItems: widget.archiveItem,);
            },
          ),
        );
        });
      },
      child: Container(
        width: double.infinity,
        height: AppDimensions.screenHeight * 0.4,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Stack(
          children: [
            SizedBox.expand(
              child: Image.network(
                widget.archiveItem.imageUrl,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
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
                 ar? widget.archiveItem.titleAr : widget.archiveItem.titleEn,
                  style: TextStyles.textStyleNormalWhite,
                  maxLines: 3,
                  textDirection:ar? TextDirection.rtl:TextDirection.ltr,
                ),
              ),
            ),

            Positioned(

              bottom: 20,
              child: Text(
              ar? "<< اقرأ المزيد":"Read More >>",
                style: TextStyles.textStyleSmallSilver,
                textDirection: ar? TextDirection.rtl:TextDirection.ltr,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
