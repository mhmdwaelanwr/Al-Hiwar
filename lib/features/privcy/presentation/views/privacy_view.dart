import 'package:bookly/core/common/special_scaffold_with_backgound.dart';
import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/features/privcy/presentation/views/widgets/title_subtitle_widget.dart';
import 'package:bookly/generated/l10n.dart';
import 'package:flutter/widgets.dart';

class PrivacyView extends StatelessWidget {
  const PrivacyView({super.key});

  @override
  Widget build(BuildContext context) {
    return SpecialScaffoldWithBackground(
      backgroundImage: AssetImages.background0,
      body: Column(
        children: [
          PrivacyTitleAndSubTitle(title:S.of(context).conditionsTitle0 ,subTitle: S.of(context).conditionsSubTitle0 ,),
          PrivacyTitleAndSubTitle(title:S.of(context).conditionsTitle1 ,subTitle: S.of(context).conditionsSubTitle1 ,),
          PrivacyTitleAndSubTitle(title:S.of(context).conditionsTitle2 ,subTitle: S.of(context).conditionsSubTitle2 ,),
          PrivacyTitleAndSubTitle(title:S.of(context).conditionsTitle3 ,subTitle: S.of(context).conditionsSubTitle3 ,),
          PrivacyTitleAndSubTitle(title:S.of(context).conditionsTitle4 ,subTitle: S.of(context).conditionsSubTitle4 ,),
          PrivacyTitleAndSubTitle(title:S.of(context).conditionsTitle5 ,subTitle: S.of(context).conditionsSubTitle5 ,),
          PrivacyTitleAndSubTitle(title:S.of(context).conditionsTitle6 ,subTitle: S.of(context).conditionsSubTitle6 ,),
          PrivacyTitleAndSubTitle(title:S.of(context).conditionsTitle7 ,subTitle: S.of(context).conditionsSubTitle7 ,),
          PrivacyTitleAndSubTitle(title:S.of(context).conditionsTitle8 ,subTitle: S.of(context).conditionsSubTitle8 ,),
          PrivacyTitleAndSubTitle(title:S.of(context).conditionsTitle9 ,subTitle: S.of(context).conditionsSubTitle9 ,),
          PrivacyTitleAndSubTitle(title:S.of(context).conditionsTitle10 ,subTitle: S.of(context).conditionsSubTitle10 ,),

        ],
      ),
    );
  }
}

