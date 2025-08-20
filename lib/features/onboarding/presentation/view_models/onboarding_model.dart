class BoardingModel {
  final String title;
 final String subTitle;
  final String imageData;

  BoardingModel({
    required this.title,
required this.subTitle,   required this.imageData,
  });

  static List<BoardingModel> boardingListModel = [
    BoardingModel(
      title: "منصةً الاقتصادِ التي تُحلّقُ بفكر المستثمرين نُنتجُ إعلامًا اقتصاديًّا حيَّا يرصدُ تحرّكات الأسواق لحظةً بلحظة.\nويُبرِزُ قصصَ النجاح والمبادراتِ الاستثماريةَ الواعدة في الخليج  والوطن العربي.",
     subTitle: "",
      imageData: 'assets/images/chart1.png',
    ),
    BoardingModel(
      title: "حلول تسويقية ذكية تُحوِّلُ وجودكم الرقمي  إلى قوة اقتصادية نَصممُ حزمًا متكاملةً تُعزِّزُ هيمنةَ علامتكم التجارية في السوق الخليجية، وتربط بين قوتكم الإعلامية على شاشتنا  وانتشاركم الرقمي عبر المنصات.",
     subTitle: "ابدأ رحلتك نحو الهيمنة السوقية",
      imageData: 'assets/images/chart2.png',
    ),

  ];
}
