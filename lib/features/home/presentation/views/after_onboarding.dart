import 'package:bookly/constants/constant_app_dimentions.dart';
import 'package:bookly/constants/constant_colors.dart';
import 'package:bookly/constants/constant_text_style.dart';
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
                    "شركاؤك الإعلاميون في عالم الاستثمار والاقتصاد:",
                    style: TextStyles.textStyleTitleGreen,
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(height: 24),
                  Text(
                    "محتوى اقتصادي مؤثّر، وتسويق احترافي يعزّز حضورك الاستثماري ، وقناة رقمية رائدة تُسلّط الضوء على قصص النجاح، وتبني حضورك الاستثماري في الخليج العربي",
                    style: TextStyles.textStyleNormalWhite,
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(height: 12),
                  Text(
                    "في شركة الحوار الاقتصادي نحمل رسالتك الاستثمارية إلى الجمهور من خلال قناة فضائية، منصّات رقمية، وتغطيات اعلامية وتسويقية متكاملة. سواء كنت تبحث عن تسويق احترافي، ظهور إعلامي قوي، أو شراكات استراتيجية، نضع بين يديك الأدوات التي تصنع التأثير وتدفع أعمالك نحو الحضور والانتشار الخليج.",
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
                        "انضم للبث المباشر الان",
                        style: TextStyles.textStyleNormalWhite,
                      ),
                    ),
                  ),
                  SizedBox(height: 42),
                ],
              );
  }
}
