

import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'home_header.dart';
import 'header_with_seachbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[
            HeaderWithSearchBox(size: size),
           /*  SizedBox(height: getProportionateScreenWidth(10)),
            //DiscountBanner(),
            SizedBox(height: getProportionateScreenWidth(30)),
            //PopularProducts(),
            SizedBox(height:  getProportionateScreenWidth(30)), */
          ],
        ),
      ),
    );
  }
}
