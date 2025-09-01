import 'package:bookly/constants/constant_colors.dart';
import 'package:bookly/constants/constant_text_style.dart';
import 'package:bookly/core/common/special_scaffold_with_backgound.dart';
import 'package:bookly/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class ShowDetailsViws extends StatelessWidget {
  const ShowDetailsViws({super.key,required this.title,required this.description});
final String title;
final String description;
  @override
  Widget build(BuildContext context) {
    return SpecialScaffoldWithBackground(
      backgroundImage: AssetImages.background2,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: ksilverColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              title,
              style: TextStyles.textStyleNormalGreen,
            ),
          ),
          SizedBox(height: 20),
          Text(
           description,
            style: TextStyles.textStyleNormalWhite,
            textDirection: TextDirection.rtl,
          ),
        ],
      ),
    );
  }
}
