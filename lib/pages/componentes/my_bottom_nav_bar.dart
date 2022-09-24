import 'package:flutter/material.dart';
import 'package:sua_feira_front/constants.dart';

class MyBottomNavBarScreen extends StatefulWidget{
  const MyBottomNavBarScreen({Key? key}) : super(key: key);

  @override
  MyBottomNavBar createState()=> MyBottomNavBar();
}
class MyBottomNavBar extends State<MyBottomNavBarScreen> {

  int indiceAtual = 0;
  /*  final List<Widget> _telas = [
    NewPageScreen(texto:"Home"[1]),
    NewPageScreen(texto:"Meus Produtos"[2]),
    NewPageScreen(texto: "Pedidos"[3]),
    NewPageScreen(texto:"Favoritos"[4])
  ]; */

  void onTabTapped(int index) {
    setState((){
      indiceAtual = index;
    });
  }

  final labs = [
    const Center(child: Text('Home1')),
    const  Center(child: Text('Home2')),
    const Center(child: Text('Home3')),
    const Center(child: Text('Home4')),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      /* padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding,
      ), */
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Scaffold(
        appBar: AppBar(),
        body: labs[indiceAtual],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: indiceAtual,
          onTap: onTabTapped,
          items: const [
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