import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String texto;
  final void Function() onSelected;

  Answer(this.texto, this.onSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        child: Text(texto),
        onPressed: onSelected,
        style: ElevatedButton.styleFrom(
            primary: Colors.green,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
            )
        ),
      ),
    );
  }
}
