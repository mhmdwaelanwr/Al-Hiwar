
import 'package:bookly/constants/constant_app_dimentions.dart';
import 'package:bookly/core/common/special_appbar.dart';
import 'package:bookly/core/common/special_drawer.dart';
import 'package:flutter/material.dart';


class SpecialScaffoldWithBackground extends StatelessWidget {
  const SpecialScaffoldWithBackground({super.key, required this.body, required this.backgroundImage});

final Widget body;
final Widget backgroundImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SpecialDrawer(),
      body: Stack(
        children: [
          SizedBox.expand(child: backgroundImage),
          Container(color: Colors.black.withOpacity(0.65)),
          Padding(
            padding: EdgeInsets.only(
              top: AppDimensions.screenHeight * 0.185,
              left: AppDimensions.mediumPadding,
              right: AppDimensions.mediumPadding,
            ),
            child: SingleChildScrollView(
              child: body,
            ),
          ),
          SpecialAppBar(),
        ],
      ),
    );
  }
}