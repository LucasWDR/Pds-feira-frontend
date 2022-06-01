import 'package:flutter/material.dart';

import 'package:pds_feira/pages/new_page_test.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

 @override
class HomePage extends StatelessWidget {

  int _indiceAtual = 0;
  final List<Widget> _telas = [
    NewPageScreen("Minha conta"),
    NewPageScreen("Meus pedidos"),
    NewPageScreen("Favoritos")
  ];
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.person), 
              label: "Minha conta"
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
      ),
    );
  }
}