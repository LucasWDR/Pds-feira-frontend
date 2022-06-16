import 'package:flutter/material.dart';
import '../new_page_test.dart';

class MyBottomNavBarScreen extends StatefulWidget {
   MyBottomNavBar createState()=> MyBottomNavBar();
}

@override

class MyBottomNavBar extends State<MyBottomNavBarScreen>{
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
  return Column(
    children: <Widget>[
     Container(
      decoration: BoxDecoration(
       color:Colors.deepOrange,
       borderRadius: BorderRadius.only(
         bottomLeft: Radius.circular(36),
         bottomRight: Radius.circular(36),
         ),
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
    ),
    ],
  ); 
  }
}