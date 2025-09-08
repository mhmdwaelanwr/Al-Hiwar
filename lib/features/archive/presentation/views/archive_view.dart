import 'package:bookly/constants/constant_app_dimentions.dart';
import 'package:bookly/constants/constant_colors.dart';
import 'package:bookly/constants/constant_text_style.dart';
import 'package:bookly/core/common/special_scaffold_with_backgound.dart';
import 'package:bookly/features/archive/presentation/view_models/archive_model.dart';
import 'package:bookly/features/archive/presentation/views/widgets/archive_widgets.dart';
import 'package:bookly/generated/l10n.dart';
import 'package:flutter/material.dart';

class ArchiveView extends StatelessWidget {
  const ArchiveView({super.key});

  @override
  Widget build(BuildContext context) {
    return SpecialScaffoldWithBackground(
      backgroundImage: null,
      body: Column(
        mainAxisSize: MainAxisSize.min,


        children: [
          Text(S.of(context).archiveViewTitle, style: TextStyles.textStyleTitleGreen),
          SizedBox(height: AppDimensions.smallPadding),
          Text(
            S.of(context).archiveViewSubTitle,
            style: TextStyles.textStyleSmallSilver,
          ),
          SizedBox(height: AppDimensions.smallPadding),
          Column(
            children: List.generate(
              ArchiveModel.archiveItems.length,
              (index) => Column(
                children: [
                  ArciveWidget(
                    archiveItem: ArchiveModel.archiveItems[index],
                  ),
                  Divider(
                    color: ksilverColor,
                    thickness: 2,
                    height: 50,
                    indent: 30,
                    endIndent: 30,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
