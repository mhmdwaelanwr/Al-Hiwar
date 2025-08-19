import 'package:bookly/constants/constant_colors.dart';
import 'package:bookly/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:AssetImages.background1,
        ),
        drawer: Drawer(
          backgroundColor: kblackColor,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Icon(Icons.home),
                  Text("الرئيسية")
                ],),
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Text("Title", style: TextStyle(color: Colors.white),),],
        ),
      ),)
    ;
  }
}
