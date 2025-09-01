import 'package:bookly/constants/constant_app_dimentions.dart';
import 'package:bookly/constants/constant_colors.dart';
import 'package:bookly/features/onboarding/presentation/views/onboarding_view.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AL Hawar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: kPrimaryColor,
      ),
       builder: (context, child) {
        AppDimensions.init(context);
        // تثبيت textScaleFactor على 1.0
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: child!,
        );
      },
      home: OnbordingViews(),
    );
  }
}
