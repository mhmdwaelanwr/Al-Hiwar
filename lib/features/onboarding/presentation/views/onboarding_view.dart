import 'package:bookly/constants/constant_app_dimentions.dart';
import 'package:bookly/constants/constant_colors.dart';
import 'package:bookly/constants/constant_text_style.dart';
import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/features/home/presentation/views/after_onboarding.dart';
import 'package:bookly/features/onboarding/presentation/view_models/onboarding_model.dart';

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
     AppDimensions.init(context);
    return Scaffold(
      backgroundColor: kblackColor,
      body: Expanded(
        child: Stack(
          children: [
            SizedBox.expand(child: AssetImages.background0),
            Container(
              color: kblackColor.withOpacity(0.65),
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 100.0,
                  top: 50.0,
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
                                  BoardingModel.boardingListModel[index],
                            ),
                        itemCount: BoardingModel.boardingListModel.length,
                        onPageChanged: (pageNumber) {
                          if (pageNumber ==
                              BoardingModel.boardingListModel.length - 1) {
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
                          count: BoardingModel.boardingListModel.length,
                        ),
                        const Spacer(),
                        FloatingActionButton.extended(
                          label:  Text(
                            'التالي',
                            style: TextStyles.textStyleNormalWhite,
                          ),
                          backgroundColor: kPrimaryColor,
                          onPressed: () {
                            if (isLastPage) {
                              navigationAndFinish(
                                context: context,
                                widgetView: AfterOnboarding(),
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
      ),
    );
  }

  Widget buildBoardingItem({required BoardingModel boardingModel}) => Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
       SizedBox(height:  AppDimensions.screenHeight*0.025),
      Center(
        child: Expanded(
          flex: 1,
          child: Image(
            height: AppDimensions.screenWidth * 0.8,width: AppDimensions.screenHeight*0.35,
            image: AssetImage(boardingModel.imageData)),
        ),
      ),
       SizedBox(height:  AppDimensions.screenHeight*0.025),
      Expanded(
        flex: 1,
        child: Text(
          textDirection: TextDirection.rtl,
          boardingModel.title,
          style: TextStyles.textStyleNormalWhite,
        ),
      ),


    ],
  );

  void navigationAndFinish({context, widgetView}) =>
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => widgetView),
        (Route<dynamic> route) => false,
      );
}
