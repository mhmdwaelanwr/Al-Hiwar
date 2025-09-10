import 'package:bookly/constants/constant_text_style.dart';
import 'package:flutter/widgets.dart';


class PrivacyTitleAndSubTitle extends StatelessWidget {
  const PrivacyTitleAndSubTitle({super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyles.textStyleNormalWhiteWithUnderLine,
        ),
        SizedBox(height: 10),
        Text(
         subTitle,
          style: TextStyles.textStyleNormalGreen,
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
