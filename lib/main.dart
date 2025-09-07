import 'package:bookly/constants/constant_app_dimentions.dart';
import 'package:bookly/constants/constant_colors.dart';
import 'package:bookly/features/splash/presentation/views/splash_view_with_photo.dart';
import 'package:bookly/generated/l10n.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    
    builder: (context) => const Bookly(), // Wrap your app
   ));
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
        AppDimensions.init(context);
    return MaterialApp(
            // use the locale which is set in the device preview
            // wrap your app
            builder: (context, child) {
              // تثبيت textScaleFactor على 1.0
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: DevicePreview.appBuilder(context, child),
              );
            },
            locale: const Locale('en'), 
        localizationsDelegates: [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      title: 'AL Hawar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      home:SplashScreen(),
    );
  }
}
