import 'package:bookly/constants/constant_app_dimentions.dart';
import 'package:bookly/constants/constant_colors.dart';
import 'package:bookly/features/splash/presentation/views/splash_view_with_photo.dart';
import 'package:bookly/generated/l10n.dart';
import 'package:bookly/services/localization_shared_prefrance.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized(); // 👈 مهم جدًا
   final savedLocale = await LocaleManager.getSavedLocale();
  runApp(
    DevicePreview(
      enabled: false,

      builder: (context) =>  Bookly(savedLocale: savedLocale), // Wrap your app
    ),
  );
}

class Bookly extends StatelessWidget {
  static ValueNotifier<Locale> localeNotifier = ValueNotifier(
    const Locale('en'),
  );
  static bool lanuages = true;

   Bookly({super.key,required Locale savedLocale}){
     localeNotifier.value = savedLocale;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);
    return ValueListenableBuilder<Locale>(
      valueListenable: localeNotifier,
      builder: (c, v, child) {
        return
        MaterialApp(
           locale: v,
          supportedLocales: const [
            Locale('en'),
            Locale('ar'),
          ],
          // use the locale which is set in the device preview
          // wrap your app
          builder: (context, child) {
            // تثبيت textScaleFactor على 1.0
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: DevicePreview.appBuilder(context, child),
            );
          },

          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          // supportedLocales: S.delegate.supportedLocales,
          debugShowCheckedModeBanner: false,
          title: 'AL Hawar',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: kPrimaryColor,
          ),
          home: SplashScreen(),
        );
      },
    );
  }
}
