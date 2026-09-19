import 'package:bookly/constants/constant_app_dimentions.dart';
import 'package:bookly/constants/constant_colors.dart';
import 'package:bookly/constants/constant_text_style.dart';
import 'package:bookly/core/common/special_scaffold_with_backgound.dart';
import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/features/archive/presentation/view_models/archive_model.dart';
import 'package:bookly/features/archive/presentation/views/widgets/archive_widgets.dart';

import 'package:bookly/main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ViewBlogsScreen extends StatefulWidget {
  ViewBlogsScreen({super.key});

  @override
  State<ViewBlogsScreen> createState() => _ViewBlogsScreenState();
}

class _ViewBlogsScreenState extends State<ViewBlogsScreen> {
  @override
  Widget build(BuildContext context) {
    bool ar = Bookly.localeNotifier.value.languageCode == 'ar' ? true : false;
    return SpecialScaffoldWithBackground(
      backgroundImage: AssetImages.background01,
      body: StreamBuilder(
        stream:
            FirebaseFirestore.instance
                .collection('blogs')
                .orderBy('createdAt', descending: true)
                .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(
              child: Column(
                children: [
                  Text(
                    ar ? "المدونات" : "Blogs",
                    style: TextStyles.textStyleTitleGreen,
                  ),
                  Text(
                    ar ? "لا توجد مدونات حالياً" : "No blogs available right now",
                    style: TextStyles.textStyleNormalWhite,
                    textDirection: ar ? TextDirection.rtl : TextDirection.ltr,
                  ),
                  SizedBox(height: AppDimensions.largePadding),
                  Text(
                    ar
                        ? "اضف مدونة جديدة من خلال الضغط على زر الإضافة"
                        : "Add a new blog using the add button",
                    style: TextStyles.textStyleSmallSilver,
                    textDirection: ar ? TextDirection.rtl : TextDirection.ltr,
                  ),
                  SizedBox(height: AppDimensions.largePadding),
                ],
              ),
            );
          }

          final blogs =
              snapshot.data!.docs
                  .map((doc) => ArchiveModel.fromDocument(doc.data()))
                  .toList();

          return Column(
            mainAxisSize: MainAxisSize.min,

            children: [
              Text(
                ar ? "المدونات" : "Blogs",
                style: TextStyles.textStyleTitleGreen,
              ),

              SizedBox(height: AppDimensions.smallPadding),
              Text(
                ar ? "تصفح المدونات الحالية" : "Browse Current Blogs",
                style: TextStyles.textStyleSmallSilver,
              ),
              SizedBox(height: AppDimensions.smallPadding),
              Column(
                children: List.generate(
                  blogs.length,
                  (index) => Column(
                    children: [
                      ArciveWidget(archiveItem: blogs[index], ),
                      Divider(
                        color: ksilverColor,
                        thickness: 2,
                        height: 50,
                        indent: 30,
                        endIndent: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
