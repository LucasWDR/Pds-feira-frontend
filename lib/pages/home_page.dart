import 'package:flutter/material.dart';

import 'package:pds_feira/pages/new_page_test.dart';

 class HomeScreen extends StatefulWidget{
   HomePage createState()=> HomePage();
 }

 @override
class HomePage extends State<HomeScreen>{

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

   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _telas[indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indiceAtual,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.person), 
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
              icon: Icon(Icons.favorite),
              label: "Configurações"
          ),
        ],
      selectedItemColor: Colors.deepOrange,
      unselectedItemColor: Colors.grey,
      iconSize: 30,

      ),
    );
  }  
}
///ignore: must_be_immutable