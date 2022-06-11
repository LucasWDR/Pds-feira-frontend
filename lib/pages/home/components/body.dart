

import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'home_header.dart';



/* class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double defaultSize;
  static Orientation orientation;

  void init(BuildContext context){
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }


  double getProportionateScreenHeight(double inputHeight){
    double screenHeight = SizeConfig.screenHeight;

    return(inputHeight/ 812.0) * screenHeight;
  }

  double getProportionateScreenWidth(double inputWidth){
    double screenWidth = SizeConfig.screenWidth;

    return(inputWidth/ 375.0) * screenWidth;
  }
} */


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SizeConfig sizedConfig = new SizeConfig();

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: sizedConfig.getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: sizedConfig.getProportionateScreenWidth(10)),
            //DiscountBanner(),
            SizedBox(height: sizedConfig.getProportionateScreenWidth(30)),
            //PopularProducts(),
            SizedBox(height: sizedConfig.getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
  
/*  double getProportionateScreenHeight(double inputHeight){
    double screenHeight = SizeConfig.screenHeight;

    return(inputHeight/ 812.0) * screenHeight;
  }

 double getProportionateScreenWidth(double inputWidth){
    double screenWidth = SizeConfig.screenWidth;

    return(inputWidth/ 375.0) * screenWidth;
  } */
