import 'package:bookly/constants/constant_app_dimentions.dart';
import 'package:bookly/constants/constant_colors.dart';
import 'package:bookly/constants/constant_text_style.dart';
import 'package:bookly/core/common/special_appbar.dart';
import 'package:bookly/core/common/special_drawer.dart';
import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/features/whoUs/presentation/views/more.dart';
import 'package:bookly/generated/l10n.dart';
import 'package:flutter/material.dart';

class WhoUsView extends StatelessWidget {
  const WhoUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SpecialDrawer(),
      body: Stack(
        children: [
          SizedBox.expand(child: AssetImages.background1),
          Container(color: Colors.black.withOpacity(0.85)),

          Padding(
            padding: EdgeInsets.only(
              top: AppDimensions.screenHeight * 0.185,
              left: AppDimensions.mediumPadding,
              right: AppDimensions.mediumPadding,
              bottom: AppDimensions.mediumPadding,
            ),
            child: SingleChildScrollView(
              child: Column(
              
                children: [
                  Text(
                    S.of(context).whoUsTitle1,
                    style: TextStyles.textStyleBigWhite,
                   
                  ),
                  Text(
                     S.of(context).whoUsTitle2,
                    style: TextStyles.textStyleTitleGreen,
                    
                  ),
                  AssetImages.logoWnameVeryBig,
                  SizedBox(height: 24),
                  Text(
                     S.of(context).whoUsWhiteSubTitle1,
                    style: TextStyles.textStyleNormalWhite,
                   
                  ),
                  SizedBox(height: 24),
                  Text(
                     S.of(context).whoUsGreenSubTitle1,
                    style: TextStyles.textStyleNormalGreen,
                    
                  ),
                  SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Text(
                       S.of(context).whoUsGreenSubTitle2,
                      style: TextStyles.textStyleNormalGreen,
                    
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                     S.of(context).whoUsGreenSubTitle3,
                    style: TextStyles.textStyleNormalGreen,
                    
                  ),
                  SizedBox(height: 28),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Text(
                       S.of(context).whoUsGreenSubTitle4,
                      style: TextStyles.textStyleNormalGreen,

                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                     S.of(context).whoUsGreenSubTitle5,
                    style: TextStyles.textStyleNormalWhiteWithUnderLine,

                    strutStyle: StrutStyle(height: 1.5, leading: 0.5),
                  ),
                  SizedBox(height: 32),

                  Text(
                     S.of(context).whoUsGreenSubTitle6,
                    style: TextStyles.textStyleNormalGreen,

                    strutStyle: StrutStyle(height: 1.5, leading: 0.5),
                  ),

                  SizedBox(height: 32),
                  Text(
                     S.of(context).whoUsGreenSubTitle7,
                    style: TextStyles.textStyleNormalGreen,

                    strutStyle: StrutStyle(height: 1.5, leading: 0.5),
                  ),

                  SizedBox(height: 32),
                  Text(
                     S.of(context).whoUsGreenSubTitle8,
                    style: TextStyles.textStyleNormalWhiteWithUnderLine,

                    strutStyle: StrutStyle(height: 1.5, leading: 0.5),
                  ),
                  SizedBox(height: 32),
                  Text(
                     S.of(context).whoUsGreenSubTitle9,
                    style: TextStyles.textStyleNormalGreen,

                    strutStyle: StrutStyle(height: 1.5, leading: 0.5),
                  ),

                  SizedBox(height: 12),
                  Text(
                     S.of(context).whoUsGreenSubTitle10,
                    style: TextStyles.textStyleNormalGreen,
                    strutStyle: StrutStyle(height: 1.5, leading: 0.5),
                  ),
                  SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text(
 S.of(context).whoUsGreenSubTitle11,
                      style: TextStyles.textStyleNormalGreen,
                      strutStyle: StrutStyle(height: 1.5, leading: 0.5),
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    S.of(context).whoUsGreenSubTitle12,
                    style: TextStyles.textStyleNormalGreen,
                    strutStyle: StrutStyle(height: 1.5, leading: 0.5),
                  ),
                  SizedBox(height: 24),
                  Text(
                   S.of(context).whoUsGreenSubTitle13,
                    style: TextStyles.textStyleNormalWhiteWithUnderLine,
                    strutStyle: StrutStyle(height: 1.5, leading: 0.5),
                  ),
                  SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text(
S.of(context).whoUsGreenSubTitle14,
                      style: TextStyles.textStyleNormalGreen,
              
                      strutStyle: StrutStyle(height: 1.5, leading: 0.5),
                    ),
                  ),
                  SizedBox(height: 24),
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kPrimaryColor,
                        padding: EdgeInsets.symmetric(
                          horizontal: AppDimensions.screenWidth * 0.15,
                          vertical: AppDimensions.screenHeight * 0.015,
                        ),
                      ),

                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MoreWhoUsView(),
                          ),
                        );
                      },
                      child: Text(
                         S.of(context).whoUsGreenButton,
                        style: TextStyles.textStyleNormalWhite,
                      ),
                    ),
                  ),
                  SizedBox(height: 32),
                ],
              ),
            ),
          ),
          SpecialAppBar(),
        ],
      ),
    );
  }
}
