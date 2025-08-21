import 'package:bookly/constants/constant_app_dimentions.dart';
import 'package:bookly/constants/constant_colors.dart';
import 'package:bookly/constants/constant_text_style.dart';
import 'package:bookly/core/common/special_appbar.dart';
import 'package:bookly/core/common/special_drawer.dart';
import 'package:bookly/core/common/special_scaffold_with_backgound.dart';
import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/features/whoUs/presentation/views/more.dart';
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
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "من نحن!",
                    style: TextStyles.textStyleBigWhite,
                    textDirection: TextDirection.rtl,
                  ),
                  Text(
                    "منصة تُحرك الاستثمار وتصنع الحضور",
                    style: TextStyles.textStyleTitleGreen,
                    textDirection: TextDirection.rtl,
                  ),
                  AssetImages.logoWnameVeryBig,
                  SizedBox(height: 24),
                  Text(
                    "صنّاع الحضور الاستثماري في الخليج والعالم العربي",
                    style: TextStyles.textStyleNormalWhite,
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(height: 24),
                  Text(
                    "شركة الحوار الاقتصادي — منصة سعودية رائدة في الإعلام المتخصص، التسويق الاستراتيجي، والإنتاج الفني. نعمل عبر:",
                    style: TextStyles.textStyleNormalGreen,
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Text(
                      "-   قناة فضائية تبث عبر نايل سات على مدار الساعة.\n-   تطبيق إلكتروني للبث الحي + مكتبة مرئية حسب الطلب.\n-   منصات تواصل اجتماعي متكاملة.\n-   إنتاج محتوى مرئي احترافي.\n-   موقعنا الإلكتروني: بوابتك الشاملة للاقتصاد الرقمي 🌐",
                      style: TextStyles.textStyleNormalGreen,
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    "نقدّم عبر منصتنا الإلكترونية جميع خدمات التطبيق وأكثر في بيئة موحدة تتميز بـ:",
                    style: TextStyles.textStyleNormalGreen,
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(height: 28),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Text(
                      "-   مكتبة اقتصادية شاملة: وثائقيات، تقارير، وحلقات كاملة حسب الطلب (VOD)\n-   بث مباشر عالي الجودة للقنوات والفعاليات دون حاجة لتنزيل تطبيق.\n-   منصة تفاعلية للتواصل المباشر مع خبراء الاقتصاد ورجال الأعمال.\n-   حلول تسويقية مخصصة قابلة للطلب الفوري عبر واجهة موحدة.\n-   موقعنا ليس نسخة عن التطبيق.. بل هو المركز العصبي لخدماتنا الرقمية",

                      style: TextStyles.textStyleNormalGreen,
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'لماذا تم اختيار اسم "الحوار الاقتصادي" للشركة ؟',
                    style: TextStyles.textStyleNormalWhiteWithUnderLine,
                    textDirection: TextDirection.rtl,
                    strutStyle: StrutStyle(height: 1.5, leading: 0.5),
                  ),
                  SizedBox(height: 32),

                  Text(
                    "معاً نُشكل منصة:",
                    style: TextStyles.textStyleNormalGreen,
                    textDirection: TextDirection.rtl,
                    strutStyle: StrutStyle(height: 1.5, leading: 0.5),
                  ),

                  SizedBox(height: 32),
                  Text(
                    "✓ تربط صُنّاع القرار بالجمهور عبر محتوى ذكي.\n✓ تحوّل المحتوى إلى محرّك استثماري يدعم رؤية السعودية 2030.\n✓ تُسلّط الضوء على التحولات التنموية في الخليج والعالم العربي.",
                    style: TextStyles.textStyleNormalGreen,
                    textDirection: TextDirection.rtl,
                    strutStyle: StrutStyle(height: 1.5, leading: 0.5),
                  ),

                  SizedBox(height: 32),
                  Text(
                    "التأسيس",
                    style: TextStyles.textStyleNormalWhiteWithUnderLine,
                    textDirection: TextDirection.rtl,
                    strutStyle: StrutStyle(height: 1.5, leading: 0.5),
                  ),
                  SizedBox(height: 32),
                  Text(
                    '"انطلقنا من حاجة ماسّة"',
                    style: TextStyles.textStyleNormalGreen,
                    textDirection: TextDirection.rtl,
                    strutStyle: StrutStyle(height: 1.5, leading: 0.5),
                  ),

                  SizedBox(height: 12),
                  Text(
                    'وُلدت شركتنا "شركة الحوار الاقتصادي " استجابةً لفراغ في السوق الإعلامي:',
                    style: TextStyles.textStyleNormalGreen,
                    textDirection: TextDirection.rtl,
                    strutStyle: StrutStyle(height: 1.5, leading: 0.5),
                  ),
                  SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text(
                      "-  غياب منصة متخصصة تواكب الأحداث الاقتصادية بلحظة بلحظة.\n-  حاجة المستثمرين لشريك إعلامي يفهم تحولات الاقتصاد الخليجي.\n-  ضرورة ربط الرؤى الوطنية (مثل رؤية 2030) بالجمهور عبر خطاب اقتصادي واضح.",
                      style: TextStyles.textStyleNormalGreen,
                      textDirection: TextDirection.rtl,
                      strutStyle: StrutStyle(height: 1.5, leading: 0.5),
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    '"لم نكن ننقل الخبر فحسب.. بل كنا جزءًا من صناعته"',
                    style: TextStyles.textStyleNormalGreen,
                    textDirection: TextDirection.rtl,
                    strutStyle: StrutStyle(height: 1.5, leading: 0.5),
                  ),
                  SizedBox(height: 24),
                  Text(
                    '"لماذا نكون شريككم الإعلامي الأول؟',
                    style: TextStyles.textStyleNormalWhiteWithUnderLine,
                    textDirection: TextDirection.rtl,
                    strutStyle: StrutStyle(height: 1.5, leading: 0.5),
                  ),
                  SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text(
                      '-  خبرةً رياديةً في الإعلام الاقتصادي الحي والمُواكب لتحولات السوق.\n-  قناة فضائية + منصات رقمية متطورة تصل بكم إلى شريحة واسعة من المستثمرين والخبراء في الخليج والعالم العربي.\n-  حلولاً تسويقية وإعلامية متكاملة تُعزز حضور العلامات التجارية وتحقق الانتشار الخليجي.\n-  تغطيات احترافية للمؤتمرات، المعارض، ومبادرات القطاعين العام والخاص.\n-  محتوى مُحسَّن لمحركات البحث (SEO) لتعزيز الظهور الرقمي محلياً وخليجياً."',
                      style: TextStyles.textStyleNormalGreen,
                      textDirection: TextDirection.rtl,
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
                        "المزيد",
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
