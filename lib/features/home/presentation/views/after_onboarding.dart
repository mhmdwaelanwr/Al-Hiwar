import 'package:bookly/core/common/special_appbar.dart';
import 'package:bookly/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class AfterOnboarding extends StatelessWidget {
  const AfterOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: Stack(
        
        children: [
          SizedBox.expand(child: AssetImages.background0),
          Container(
            color: Colors.black.withOpacity(0.65),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
SpecialAppBar(),
              
            ],)
        ],
      ),
    );
  }
}

