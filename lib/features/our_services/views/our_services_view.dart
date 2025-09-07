import 'package:bookly/constants/constant_text_style.dart';
import 'package:bookly/core/common/special_scaffold_with_backgound.dart';
import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/features/our_services/views/widgets/our_services_container.dart';
import 'package:bookly/features/our_services/views/widgets/view_to_show_details.dart';
import 'package:bookly/generated/l10n.dart';
import 'package:flutter/material.dart';

class OurServicesView extends StatelessWidget {
  const OurServicesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SpecialScaffoldWithBackground(
      backgroundImage: AssetImages.background2,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          Text(
            S.of(context).ourServicesMainTitle,
            style: TextStyles.textStyleBigWhite,
          ),
          OurServicesWidget(
            title: S.of(context).ourServicesContainerSubTitle1,
            description: S.of(context).ourServicesContainerSubTitle1,
            viewToDetails: ShowDetailsViws(
              title: S.of(context).ourServicesPart1Title,
              description: S.of(context).ourServicesPart1SubTitle,
            ),
            icon: Icons.video_camera_back,
          ),
          OurServicesWidget(
            title: S.of(context).ourServicesContainerSubTitle2,
            description: S.of(context).ourServicesContainerSubTitle2,
            viewToDetails: ShowDetailsViws(
              title: S.of(context).ourServicesPart2Title,
              description: S.of(context).ourServicesPart1SubTitle,
            ),
            icon: Icons.mic,
          ),
        ],
      ),
    );
  }
}
