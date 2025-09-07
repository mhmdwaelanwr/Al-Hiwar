import 'package:bookly/constants/constant_app_dimentions.dart';
import 'package:bookly/constants/constant_colors.dart';
import 'package:bookly/constants/constant_text_style.dart';
import 'package:bookly/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AfterOnBoardingBody extends StatelessWidget {
   AfterOnBoardingBody({super.key});



  final Uri youtubeUrl = Uri.parse(
      'https://youtube.com/channel/UClSpCa4VCnEPx9CjbAf0ZPg?si=ItuxOotx9ZNvChSY');

        Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    S.of(context).afterONBoardingTitle,
                    style: TextStyles.textStyleTitleGreen,
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(height: 24),
                  Text(
                    S.of(context).afterONBoardingSubTitle1,
                    style: TextStyles.textStyleNormalWhite,
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(height: 12),
                  Text(
                    S.of(context).afterONBoardingSubTitle2,
                    style: TextStyles.textStyleNormalWhite,
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(height: 42),
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kPrimaryColor,
                        padding: EdgeInsets.symmetric(
                          horizontal: AppDimensions.screenWidth * 0.05,
                          vertical: AppDimensions.screenHeight * 0.015,
                        ),
                      ),

                      onPressed: ()=> _launchUrl(youtubeUrl),
                      child: Text(
                        S.of(context).afterONBoardingbutton,
                        style: TextStyles.textStyleNormalWhite,
                      ),
                    ),
                  ),
                  SizedBox(height: 42),
                ],
              );
  }
}
