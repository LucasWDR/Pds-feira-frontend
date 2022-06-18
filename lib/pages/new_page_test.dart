import 'package:flutter/material.dart';


class NewPageScreen extends StatelessWidget {
    const NewPageScreen( {
    Key key,
    this.texto,
  }) : super(key: key);

  final String texto;

  //NewPageScreen(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(texto),
      ),
    );
  }
}