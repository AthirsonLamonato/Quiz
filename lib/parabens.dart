import 'package:flutter/material.dart';

class Congratulations extends StatelessWidget {
  final int Points;
  final void Function() Reload;

  Congratulations(this.Points, this.Reload);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(60),
      child: Column(
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text('Sua pontuação: $Points pontos',
                  style: TextStyle(fontSize: 20))),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Text(
                Points < 70
                    ? "Você não atingiu a pontuação esperada"
                    : "Parabéns!! Você atingiu a pontuação esperada",
                style: TextStyle(fontSize: 20),
              )),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: ElevatedButton(
                onPressed: Reload,
                child: Text("Refazer Questionário"),
                style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    textStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ))
        ],
      ),
    );
  }
}
