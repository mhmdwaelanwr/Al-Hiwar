class BoardingModel {
  final String title;

  final String imageData;

  BoardingModel({
    required this.title,

    required this.imageData,
  });

  static List<BoardingModel> boardingListModel = [
    BoardingModel(
      title: " استمتع بتنقل سهل بإستخدام المواصلات العامة!واستمتع بتنقل سهل بإستخدام المواصلات العامة!و",
     
      imageData: 'assets/images/chart1.png',
    ),
    BoardingModel(
      title: "حلول تسويقية متكامة تعزز الحضور الرقمي و تربط العلامات التجارية بالاعلام المرئي.",
     
      imageData: 'assets/images/chart2.png',
    ),

  ];
}
