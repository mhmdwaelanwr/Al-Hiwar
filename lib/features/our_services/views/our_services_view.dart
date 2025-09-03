import 'package:bookly/constants/constant_colors.dart';
import 'package:bookly/constants/constant_text_style.dart';
import 'package:bookly/core/common/special_scaffold_with_backgound.dart';
import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/features/our_services/views/widgets/our_services_container.dart';
import 'package:bookly/features/our_services/views/widgets/view_to_show_details.dart';
import 'package:flutter/material.dart';

class OurServicesView extends StatelessWidget {
  const OurServicesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SpecialScaffoldWithBackground(
      backgroundImage: AssetImages.background2,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          Text(
            "خدماتنا",
            style: TextStyles.textStyleBigWhite,
            textDirection: TextDirection.rtl,
          ),
          OurServicesWidget(
            title: "أولا:\nقسم القناة التلفزيونية والاعلام",
            description: "إنتاج برامج, تغطيات, بث مباشر, وتقارير اقتصادية.",
            viewToDetails: ShowDetailsViws(title:" قسم القناة التلفزيونية والإعلام" ,description: "● إنتاج البرامج الاقتصادية والحوارات مع رجال الأعمال.\n● تغطيات ميدانية للمعارض، المؤتمرات، والفعاليات الاقتصادية.\n● تنفيذ لقاءات ميدانية مع شخصيات مؤثرة في عالم المال والأعمال.\n● بث برامج متنوعة اقتصادية ومجتمعية على مدار الساعة عبر قناة فضائية محترفة.\n● إنتاج وثائقيات وتقارير تسلط الضوء على قصص نجاح، مشاريع وطنية، ومبادرات استثمارية.\n● تقديم مساحات إعلامية مخصصة لشركاء النجاح في القناة ومنصاتها الرقمية.\n● إدارة تطبيق إلكتروني للبث المباشر والمحتوى حسب الطلب.",),
            icon: Icons.video_camera_back,
          ),
          OurServicesWidget(
            title: "ثانيا:\nقسم التسويق والدعايا والإعلان",
            description: "حملات دعائية, تصوير إعلاني, إدارة منصات رقمية.",
            viewToDetails: ShowDetailsViws(title:" قسم التسويق والدعايا والإعلان" ,description: "● تقديم حملات دعائية وتسويقية متكاملة (مرئية، رقمية، ميدانية).\n● تصوير احترافي للإعلانات التجارية والمحتوى التسويقي.\n● إدارة حسابات ومنصات التواصل الاجتماعي للشركات والمؤسسات بأسلوب احترافي.\n● تصميم وتنفيذ استراتيجيات تسويق رقمي فعالة ومخصصة حسب القطاع والجمهور.\n● إعداد وتنفيذ باقات شراكة سنوية مرنة حسب احتياجات العملاء.\n● تقديم استشارات تسويقية وإعلامية تساعد على تعزيز الحضور الرقمي والتأثير في السوق.\n● ربط الحملات التسويقية بالإعلام المرئي لضمان الانتشار الواسع والمصداقية",),
            icon: Icons.mic,
          ),
        ],
      ),
    );
  }
}
