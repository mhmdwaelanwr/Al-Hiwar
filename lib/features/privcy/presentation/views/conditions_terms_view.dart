
import 'package:bookly/core/common/special_scaffold_with_backgound.dart';
import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/features/privcy/presentation/views/widgets/title_subtitle_widget.dart';
import 'package:bookly/generated/l10n.dart';
import 'package:flutter/widgets.dart';

class ConditionsTermsView extends StatelessWidget {
  const ConditionsTermsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SpecialScaffoldWithBackground(
      backgroundImage: AssetImages.background0,
      body: Column(
        children: [
          PrivacyTitleAndSubTitle(title:S.of(context).privcyTitle0 ,subTitle: S.of(context).privcySubTitle0 ,),
          PrivacyTitleAndSubTitle(title:S.of(context).privcyTitle1 ,subTitle: S.of(context).privcySubTitle1 ,),
          PrivacyTitleAndSubTitle(title:S.of(context).privcyTitle2 ,subTitle: S.of(context).privcySubTitle2 ,),
          PrivacyTitleAndSubTitle(title:S.of(context).privcyTitle3 ,subTitle: S.of(context).privcySubTitle3 ,),
          PrivacyTitleAndSubTitle(title:S.of(context).privcyTitle4 ,subTitle: S.of(context).privcySubTitle4 ,),
          PrivacyTitleAndSubTitle(title:S.of(context).privcyTitle5 ,subTitle: S.of(context).privcySubTitle5 ,),
          PrivacyTitleAndSubTitle(title:S.of(context).privcyTitle6 ,subTitle: S.of(context).privcySubTitle6 ,),
          PrivacyTitleAndSubTitle(title:S.of(context).privcyTitle7 ,subTitle: S.of(context).privcySubTitle7 ,),
          PrivacyTitleAndSubTitle(title:S.of(context).privcyTitle8 ,subTitle: S.of(context).privcySubTitle8 ,),

        ],
      ),
    );
  }
}