import 'package:flutter/material.dart';

class CardListItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: ((_, index) {
        return Container(height: 50, color: Colors.black);

      }),
    );
  }
}
