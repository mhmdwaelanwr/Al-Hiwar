import 'package:bookly/constants/constant_app_dimentions.dart';
import 'package:bookly/constants/constant_colors.dart';
import 'package:bookly/constants/constant_text_style.dart';
import 'package:bookly/core/common/special_scaffold_with_backgound.dart';
import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/features/whoUs/presentation/views/widget/more_widget.dart';
import 'package:bookly/generated/l10n.dart';
import 'package:flutter/material.dart';

class MoreWhoUsView extends StatefulWidget {
  const MoreWhoUsView({super.key});

  @override
  State<MoreWhoUsView> createState() => _MoreWhoUsViewState();
}

class _MoreWhoUsViewState extends State<MoreWhoUsView> {
  final List<bool> _selectedInList = [true, false, false, false];

  int _selectedIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
      final List<Widget> _pages = [
     Center(
      child: MoreWidget(
        title: S.of(context).moreTitle11,
        describtion:S.of(context).moreSubTitle1
            ,
      ),
    ),
     Center(
      child: MoreWidget(
        title: S.of(context).moreTitle2,
        describtion:S.of(context).moreSubTitle2
      ),
    ),
     Center(
      child: MoreWidget(
        title: S.of(context).moreSubTitle31,
        subTitle:S.of(context).moreSubTitle32 ,
        describtion:S.of(context).moreSubTitle33 
      ),
    ),
     Center(
      child: MoreWidget(
        title: S.of(context).moreSubTitle4 ,
        describtion:S.of(context).moreSubTitle41 
      ),
    ),
  ];
    return SpecialScaffoldWithBackground(
      backgroundImage: AssetImages.background1,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 16),
          Container(
            alignment: Alignment.center,
            width: AppDimensions.screenWidth * 0.85,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: ksecondColor, // لون الظل
                  blurRadius: 10, // مدى نعومة الظل
                  offset: Offset(0, 2), // مكان الظل (x, y)
                ),
              ],
              color: kgrayColor,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4),
              child: ToggleButtons(
                constraints: BoxConstraints(
                  minHeight: 40,
                  minWidth:
                      (AppDimensions.screenWidth * 0.8) /
                      4.2, // عدد الأزرار = 4
                ),
                borderRadius: BorderRadius.circular(18),
                // borderColor: ksecondColor,
                selectedBorderColor: ksecondColor,
                fillColor: ksecondColor,

                color: kWhiteColor,

                borderWidth: 2,
                splashColor: ksecondColor,

                onPressed: (indexView) async {
                  setState(() {
                    for (int i = 0; i < _selectedInList.length; i++) {
                      _selectedInList[i] =
                          i ==
                          indexView; // يخلي اللي عند index = true والباقي false
                      _selectedIndex = indexView;
                    }
                    //   _pageController=PageController(initialPage: index,);
                    _pageController.jumpToPage(_selectedIndex);
                    print(indexView);
                  });
                },
                isSelected: _selectedInList,
                children: [
                  Text(S.of(context).moreTitle1, style: TextStyles.textStyleNormalWhite),
                  Text(S.of(context).moreTitle2, style: TextStyles.textStyleNormalWhite),
                  Text(S.of(context).moreTitle3, style: TextStyles.textStyleNormalWhite),
                  Text(S.of(context).moreTitle4, style: TextStyles.textStyleNormalWhite),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            child: PageView(
              onPageChanged: (indexView) {
                _selectedIndex = indexView;
                for (int i = 0; i < _selectedInList.length; i++) {
                  _selectedInList[i] =
                      i ==
                      indexView; // يخلي اللي عند index = true والباقي false
                  _selectedIndex = indexView;
                }
                setState(() {});
              },
              controller: _pageController,
              children: _pages,
            ),
          ),
        ],
      ),
    );
  }
}
