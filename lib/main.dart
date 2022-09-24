import 'package:flutter/material.dart';
import 'package:sua_feira_front/pages/loginPage/login_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sua Feira',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const LoginPage(),
    );
  }
}