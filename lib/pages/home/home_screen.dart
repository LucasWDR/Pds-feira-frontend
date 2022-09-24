
import 'package:flutter/material.dart';
import 'package:sua_feira_front/pages/loginPage/login_page.dart';
import 'componentes/body.dart';
import '../../../constants.dart';
import 'package:sua_feira_front/pages/componentes/my_bottom_nav_bar.dart';
//import 'package:pds_feira/pages/new_page_test.dart';
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
      bottomNavigationBar: const MyBottomNavBarScreen(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
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
