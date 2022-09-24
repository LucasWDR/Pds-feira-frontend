import 'package:flutter/material.dart';
import 'header_with_searchbox.dart';
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[
            HeaderWithSearchBox(size: size),
            //SizedBox(height: getProportionateScreenWidth(10)),
            //NewPageScreen(),
            /*  ,
            DiscountBanner(),
            SizedBox(height: getProportionateScreenWidth(30)),
            //PopularProducts(),
            SizedBox(height:  getProportionateScreenWidth(30)), */
          ],
        ),
      ),
    );
  }
}
