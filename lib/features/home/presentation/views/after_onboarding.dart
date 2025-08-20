import 'package:bookly/constants/constant_app_dimentions.dart';
import 'package:bookly/constants/constant_colors.dart';
import 'package:bookly/constants/constant_text_style.dart';
import 'package:bookly/core/common/special_appbar.dart';
import 'package:bookly/core/common/special_drawer.dart';
import 'package:bookly/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class AfterOnboarding extends StatelessWidget {
  const AfterOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SpecialDrawer(),
      body: Stack(
        children: [
          SizedBox.expand(child: AssetImages.background0),
          Container(color: Colors.black.withOpacity(0.65)),
          Padding(
            padding: EdgeInsets.only(
              top: AppDimensions.screenHeight * 0.185,
              left: AppDimensions.mediumPadding,
              right: AppDimensions.mediumPadding,
            ),
            child: SingleChildScrollView(
              child: Column(
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

                      onPressed: () {},
                      child: Text(
                        "انضم للبث المباشر الان",
                        style: TextStyles.textStyleNormalWhite,
                      ),
                    ),
                  ),
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
