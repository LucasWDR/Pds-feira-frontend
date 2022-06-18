import 'package:flutter/material.dart';
import 'package:pds_feira/constants.dart';

import '../new_page_test.dart';

class MyBottomNavBarScreen extends StatefulWidget{
  MyBottomNavBar createState()=> MyBottomNavBar();
}
class MyBottomNavBar extends State<MyBottomNavBarScreen> {

int indiceAtual = 0;
  final List<Widget> _telas = [
    NewPageScreen("Home"),
    NewPageScreen("Meus Produtos"),
    NewPageScreen("Pedidos"),
    NewPageScreen("Favoritos")
  ];

void onTabTapped(int index) {
    setState((){
       indiceAtual = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
     /*  padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding,
      ), */
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Scaffold(
      appBar: AppBar(),
      body: _telas[indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indiceAtual,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.house), 
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket),
              label: "Meus produtos"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Pedidos"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Configurações"
          ),
        ],
      selectedItemColor: Colors.deepOrange,
      unselectedItemColor: Colors.grey,
      iconSize: 30,   
      ),
     ),
    );
  }
}