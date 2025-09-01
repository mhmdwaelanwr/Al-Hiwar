import 'package:bookly/constants/constant_app_dimentions.dart';
import 'package:bookly/constants/constant_colors.dart';
import 'package:bookly/constants/constant_text_style.dart';
import 'package:bookly/core/common/special_scaffold_with_backgound.dart';
import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/features/contact_us/presentation/views/contact_us_view.dart';
import 'package:bookly/features/home/presentation/views/after_onboarding.dart';

import 'package:bookly/features/our_services/views/our_services_view.dart';

import 'package:bookly/features/whoUs/presentation/views/who_us_view.dart';
import 'package:flutter/material.dart';

class SpecialDrawer extends StatelessWidget {
  const SpecialDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kblackColor,
      child: Column(
        children: [
          Container(
            color: kgrayColor,
            height: MediaQuery.of(context).size.height * 0.2,
            width: double.infinity,
            child: Center(
              child:
              // AssetImages.logoWnameBig,
              Text(
                "الحوار الاقتصادي",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
          SizedBox(height: 10),
          DrawerItem(
            text: "الرئيسية",
            leadingIcon: Icons.home,
            widgetViewToGo: SpecialScaffoldWithBackground(
                                backgroundImage:AssetImages.background0 ,body:AfterOnBoardingBody() ,
                              ),
               
          ),
          SizedBox(height: 10),
          DrawerItem(
            text: "من نحن",
            leadingIcon: Icons.people,
          widgetViewToGo: WhoUsView(),
          ),
          SizedBox(height: 10),
          DrawerItem(
            text: "خدماتنا",
            leadingIcon: Icons.tv,
           widgetViewToGo: OurServicesView(),
          ),
          SizedBox(height: 10),
          DrawerItem(
            text: "المدونة",
            leadingIcon: Icons.article,
           widgetViewToGo: WhoUsView(),
          ),
          SizedBox(height: 10),
          DrawerItem(
            text: "تواصل معنا",
            leadingIcon: Icons.call,
          widgetViewToGo: ContactUsView(),
          ),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.text,
    required this.widgetViewToGo,
    this.leadingIcon,
  });
  final String text;
  final Widget widgetViewToGo;
  final IconData? leadingIcon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 36, vertical: 5),
      tileColor: kgrayColor,
      leading: Icon(
        leadingIcon,
        color: kPrimaryColor,
        size: AppDimensions.iconSize(),
      ),
      title: Text(
        text,
        style: TextStyles.textStyleNormalWhite,
        textDirection: TextDirection.rtl,
      ),
      onTap:  () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (co) => widgetViewToGo),
                ),
    );
  }
}
