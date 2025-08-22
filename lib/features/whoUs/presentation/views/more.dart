import 'package:bookly/constants/constant_colors.dart';
import 'package:bookly/constants/constant_text_style.dart';
import 'package:bookly/core/common/special_scaffold_with_backgound.dart';
import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/features/whoUs/presentation/views/widget/more_widget.dart';
import 'package:flutter/material.dart';

class MoreWhoUsView extends StatefulWidget {
  const MoreWhoUsView({super.key});

  @override
  State<MoreWhoUsView> createState() => _MoreWhoUsViewState();
}

class _MoreWhoUsViewState extends State<MoreWhoUsView> {
  final List<bool> _selectedInList = [true, false, false, false];
  final List<Widget> _pages = [
    const Center(
      child: MoreWidget(
        title: "أهدافنا الاستراتيجية:",
        describtion:
            "-  ترسيخ مصداقية القناة كمَرجِعٍ رئيسي  للمحتوى الاقتصادي في الخليج والعالم   العربي.\n-  نسج تحالفات استراتيجية مع قادة الأعمال والمؤسسات الاقتصادية الرائدة.\n-  اختراق الأسواق العربية عبر حُلول إعلامية مُبتكرة تُواكب التحول الرقمي.\n-  تمكين رؤية السعودية 2030 إعلاميًّا عبر تسليط الضوء على مشاريعها المحورية.\n-  صقل كوادر إعلامية متميزة قادرة على قيادة الحوار الاقتصادي.\n-  ريادة التكنولوجيا الإعلامية باستخدام الذكاء الاصطناعي لتحليل الاتجاهات الاقتصادية.",
      ),
    ),
    const Center(
      child: MoreWidget(
        title: "رؤيتنا",
        describtion:
            "أن تكون شركة الحوار الاقتصادي المنصة الإعلامية الأولى في الخليج العربي والعالم العربي المتخصصة في دعم الاستثمار، وتسليط الضوء على قصص النجاح الاقتصادية،  \nوالمساهمة في بناء بيئة إعلامية واعية تواكب التحولات التنموية وتدعم أهداف رؤى الدول الطموحة، وعلى رأسها رؤية السعودية 2030.",
      ),
    ),
    const Center(
      child: MoreWidget(
        title: "رسالتنا",
        subTitle: '"نُنتج إعلامًا":',
        describtion:
            "-  واقعيًّا: يقرأ تحركات الأسواق بدقة.\n-  تحويليًّا: يحوّل الاستثمارات إلى قصص نجاح.\n-  شاملاً: يصل لكل مستثمر عبر القناة، التطبيق، ومنصات التواصل.\n-  استراتيجيًّا: يصنع شراكات تدعم الاقتصاد الخليجي والعربي.",
      ),
    ),
    const Center(
      child: MoreWidget(
        title: "قيمنا",
        describtion:
            "•  الاحترافية: تقديم محتوى عالي الجودة   بمهنية إعلامية.\n•  الشفافية: نقل الحقائق والقصص الاقتصادية كما هي، بلا تزييف أو تهويل.\n•  الشراكة: العمل جنبًا إلى جنب مع القطاعين العام والخاص من أجل بناء اقتصاد إعلامي قوي.\n•  الابتكار: تطوير حلول إعلامية وتسويقية تواكب العصر والتقنيات الحديثة.\n•  المصداقية: بناء علاقة ثقة طويلة الأمد مع الجمهور والشركاء.",
      ),
    ),
  ];
  int _selectedIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return SpecialScaffoldWithBackground(
      backgroundImage: AssetImages.background1,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 16),
          Container(
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
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
              child: ToggleButtons(
                borderRadius: BorderRadius.circular(18),
                // borderColor: ksecondColor,
                selectedBorderColor: ksecondColor,
                fillColor: ksecondColor,

                color: kWhiteColor,

                borderWidth: 2,
                splashColor: ksecondColor,

                constraints: const BoxConstraints(minHeight: 40, minWidth: 80),
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
                  Text("اهدافنا", style: TextStyles.textStyleNormalWhite),
                  Text("رؤيتنا", style: TextStyles.textStyleNormalWhite),
                  Text("رسالتنا", style: TextStyles.textStyleNormalWhite),
                  Text("قيمنا", style: TextStyles.textStyleNormalWhite),
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
