
import 'package:flutter/material.dart';
import 'package:pds_feira/pages/login_page.dart';
import 'components/body.dart';
import '../../../constants.dart';
import 'package:pds_feira/pages/componentes/my_bottom_nav_bar.dart';
 class HomeScreen extends StatefulWidget{
   HomePage createState()=> HomePage();
 }
 @override
class HomePage extends State<HomeScreen>{
@override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavBarScreen(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.push(
          context,
           MaterialPageRoute(
           builder: (context) => LoginPage(),
            ),
          );
        },
        color: kPrimaryColor,
      ),
    );
  }
}
