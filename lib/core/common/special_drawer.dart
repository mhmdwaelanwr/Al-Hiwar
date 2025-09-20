import 'package:bookly/constants/constant_app_dimentions.dart';
import 'package:bookly/constants/constant_colors.dart';
import 'package:bookly/constants/constant_text_style.dart';
import 'package:bookly/core/common/special_scaffold_with_backgound.dart';
import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/features/archive/presentation/views/archive_view.dart';

import 'package:bookly/features/contact_us/presentation/views/contact_us_view.dart';
import 'package:bookly/features/home/presentation/views/after_onboarding.dart';

import 'package:bookly/features/our_services/views/our_services_view.dart';
import 'package:bookly/features/privcy/presentation/views/conditions_terms_view.dart';
import 'package:bookly/features/privcy/presentation/views/privacy_view.dart';

import 'package:bookly/features/whoUs/presentation/views/who_us_view.dart';
import 'package:bookly/generated/l10n.dart';
import 'package:bookly/main.dart';
import 'package:bookly/services/localization_shared_prefrance.dart';
import 'package:flutter/material.dart';

class SpecialDrawer extends StatefulWidget {
  const SpecialDrawer({super.key});

  @override
  State<SpecialDrawer> createState() => _SpecialDrawerState();
}

class _SpecialDrawerState extends State<SpecialDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: AppDimensions.screenWidth * 0.6,
      backgroundColor: kblackColor,
      child: SingleChildScrollView(
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
                  S.of(context).drawerMainTitle,
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            SizedBox(height: 8),
            DrawerItem(
              text: S.of(context).drawerMainScreen,
              leadingIcon: Icons.home,
              widgetViewToGo: SpecialScaffoldWithBackground(
                backgroundImage: AssetImages.background0,
                body: AfterOnBoardingBody(),
              ),
            ),
            SizedBox(height: 8),
            DrawerItem(
              text: S.of(context).drawerWhoUsScreen,
              leadingIcon: Icons.people,
              widgetViewToGo: WhoUsView(),
            ),
            SizedBox(height: 8),
            DrawerItem(
              text: S.of(context).drawerOurServicesScreen,
              leadingIcon: Icons.tv,
              widgetViewToGo: OurServicesView(),
            ),
            SizedBox(height: 8),
            DrawerItem(
              text: S.of(context).drawerOurDownloadScreen,
              leadingIcon: Icons.article,
              widgetViewToGo: ViewBlogsScreen(),
            ),
            SizedBox(height: 8),
            DrawerItem(
              text: S.of(context).drawerOurContactUsScreen,
              leadingIcon: Icons.call,
              widgetViewToGo: ContactUsView(),
            ),
            SizedBox(height: 8),
            DrawerItem(
              text: S.of(context).conditionsTitle,
              leadingIcon: Icons.privacy_tip_outlined,
              widgetViewToGo: PrivacyView(),
            ),
            SizedBox(height: 8),
            DrawerItem(
              text: S.of(context).conditionsTitle,
              leadingIcon: Icons.lock_outline,
              widgetViewToGo: ConditionsTermsView(),
            ),
            SizedBox(height: 8),

            ListTile(
              tileColor: kgrayColor,
              leading: Switch(
                activeTrackColor: kPrimaryColor,
                value: Bookly.localeNotifier.value.languageCode == 'ar',
                onChanged: (val) async {
                  final newLocale =
                      val ? const Locale('ar') : const Locale('en');

                  // تحديث التطبيق
                  Bookly.localeNotifier.value = newLocale;

                  // حفظ الاختيار
                  await LocaleManager.saveLocale(newLocale);
                },
              ),
              title: Text(
                S.of(context).applicationLanguages,
                style: TextStyles.textStyleNormalWhite,
                textDirection: TextDirection.rtl,
              ),
            ),
          ],
        ),
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
      contentPadding: EdgeInsets.symmetric(horizontal: 36, vertical: 8),
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
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (co) => widgetViewToGo),
        );

      },
    );
  }
}
