import 'package:bookly/constants/constant_app_dimentions.dart';
import 'package:bookly/constants/constant_colors.dart';
import 'package:bookly/constants/constant_text_style.dart';
import 'package:bookly/core/common/special_scaffold_with_backgound.dart';
import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/features/home/presentation/views/after_onboarding.dart';
import 'package:bookly/features/onboarding/presentation/view_models/onboarding_model.dart';
import 'package:bookly/generated/l10n.dart';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnbordingViews extends StatefulWidget {
  const OnbordingViews({super.key});




  @override
  State<OnbordingViews> createState() => _OnbordingViewsState();
}

class _OnbordingViewsState extends State<OnbordingViews> {
  var boardController = PageController();

  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    
   List<BoardingModel> boardingListModel = [
    BoardingModel(
      title: S.of(context).onBoardingTitle1,
     subTitle: "",
      imageData: 'assets/images/chart1.png',
    ),
    BoardingModel(
      title: S.of(context).onBoardingTitle2,
     subTitle: S.of(context).onBoardingTitle21,
      imageData: 'assets/images/chart2.png',
    ),

  ];
    AppDimensions.init(context);
    return Scaffold(
      backgroundColor: kblackColor,
      body: Stack(
        children: [
          SizedBox.expand(child: AssetImages.background0),
          Container(
            color: kblackColor.withOpacity(0.65),
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 40.0,
                top: 20.0,
                left: 20.0,
                right: 20.0,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: AssetImages.logoWnameSmall,
                  ),
                  Expanded(
                    child: PageView.builder(
                      controller: boardController,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder:
                          (context, index) => buildBoardingItem(
                            boardingModel:
                                boardingListModel[index],
                          ),
                      itemCount: boardingListModel.length,
                      onPageChanged: (pageNumber) {
                        if (pageNumber ==
                            boardingListModel.length - 1) {
                          setState(() {
                            isLastPage = true;
                          });
                        } else {
                          setState(() {
                            isLastPage = false;
                          });
                        }
                      },
                    ),
                  ),

                  Row(
                    children: [
                      SmoothPageIndicator(
                        effect: ExpandingDotsEffect(
                          radius: 40,
                          dotColor: kWhiteColor,
                          activeDotColor: kPrimaryColor,
                        ),
                        controller: boardController,
                        count: boardingListModel.length,
                      ),
                      const Spacer(),
                      FloatingActionButton.extended(
                        label: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            S.of(context).onBoardingbuttonNext,
                            style: TextStyles.textStyleNormalWhite,
                          ),
                        ),
                        backgroundColor: kPrimaryColor,
                        onPressed: () {
                          if (isLastPage) {
                            navigationAndFinish(
                              context: context,
                              widgetView: SpecialScaffoldWithBackground(
                                backgroundImage: AssetImages.background0,
                                body: AfterOnBoardingBody(),
                              ),
                            );
                          } else {
                            boardController.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.fastEaseInToSlowEaseOut,
                              //Curves.easeInOutCirc
                            );
                          }
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBoardingItem({required BoardingModel boardingModel}) => Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Expanded(
        child: Image(
          height: AppDimensions.screenHeight * 0.35,
          width: AppDimensions.screenWidth * 0.9,
          image: AssetImage(boardingModel.imageData),
        ),
      ),
      SizedBox(height: AppDimensions.screenHeight * 0.015),
      Text(
      
        boardingModel.title,
        style: TextStyles.textStyleNormalWhite,
      ),
      Text(
      
        boardingModel.subTitle,
        style: TextStyles.textStyleNormalGreen,
      ),
      SizedBox(height: 20),
    ],
  );

  void navigationAndFinish({context, widgetView}) =>
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => widgetView),
        (Route<dynamic> route) => false,
      );
}
