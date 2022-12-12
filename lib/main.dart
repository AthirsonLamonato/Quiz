import 'package:flutter/material.dart';

import './parabens.dart';
import './questionario.dart';

main() {
  runApp(AppQuiz());
}

class AppQuizState extends State<AppQuiz> {
  var SelectedQuestion = 0;
  var TotalScore = 0;

  final Questions = const [
    {
      'texto': 'Dentro de qual elemento HTML colocamos o JavaScript?',
      'respostas': [
        {'texto': '<js>', 'pontuacao': 0},
        {'texto': '<script>', 'pontuacao': 10},
        {'texto': '<javascript>', 'pontuacao': 0},
        {'texto': '<scripting>', 'pontuacao': 0},
      ]
    },
    {
      'texto': 'O que significa HTML?',
      'respostas': [
        {'texto': 'Home Tool Markup Language', 'pontuacao': 0},
        {'texto': 'Hyper Text Markup Language', 'pontuacao': 10},
        {'texto': 'Hyperlinks and Text Markup Language', 'pontuacao': 0}
      ]
    },
    {
      'texto': 'Onde é o lugar correto para inserir um JavaScript?',
      'respostas': [
        {'texto': '<head>', 'pontuacao': 10},
        {'texto': '<body>', 'pontuacao': 0},
        {'texto': '<h5>', 'pontuacao': 0},
        {'texto': '<title>', 'pontuacao': 0}
      ]
    },
    {
      'texto': 'O arquivo JavaScript externo deve conter a tag <script>.',
      'respostas': [
        {'texto': 'Verdadeiro', 'pontuacao': 0},
        {'texto': 'Falso', 'pontuacao': 10}
      ]
    },
    {
      'texto': 'Como se escreve "Hello World" em uma caixa de alerta?',
      'respostas': [
        {'texto': 'msgBox("Hello World")', 'pontuacao': 0},
        {'texto': 'alertBox("Hello World")', 'pontuacao': 0},
        {'texto': 'msg("Hello World")', 'pontuacao': 0},
        {'texto': 'alert("Hello World")', 'pontuacao': 10}
      ]
    },
    {
      'texto': 'Qual a sintaxe correta para a criação de uma função ?',
      'respostas': [
        {'texto': '"function" myFunction()', 'pontuacao': 0},
        {'texto': 'function:myFunction()', 'pontuacao': 0},
        {'texto': 'function myFunction()', 'pontuacao': 10},
        {'texto': 'function = myFunction()', 'pontuacao': 0}
      ]
    },
    {
      'texto': 'Como escrever uma instrução IF em JavaScript?',
      'respostas': [
        {'texto': 'if i == 5 then', 'pontuacao': 0},
        {'texto': 'if i = 5 then', 'pontuacao': 0},
        {'texto': 'if i = 5', 'pontuacao': 0},
        {'texto': 'if (i == 5)', 'pontuacao': 10}
      ]
    },
    {
      'texto':
          'Como escrever uma instrução IF para executar algum código SE "i" não for igual a 5?',
      'respostas': [
        {'texto': 'if(i <> 5)', 'pontuacao': 0},
        {'texto': 'if i <> 5', 'pontuacao': 0},
        {'texto': 'if i =! 5 then', 'pontuacao': 0},
        {'texto': 'if(i != 5)', 'pontuacao': 10}
      ]
    },
    {
      'texto': 'Como um Loop For é iniciado ?',
      'respostas': [
        {'texto': 'for i = 1 to 5', 'pontuacao': 0},
        {'texto': 'for (i = 0; i <= 5)', 'pontuacao': 0},
        {'texto': 'for (i = 0; i <= 5; i++)', 'pontuacao': 10},
        {'texto': 'for (i <= 5; i++)', 'pontuacao': 0}
      ]
    },
    {
      'texto': 'Qual é a maneira correta de escrever um array em JavaScript?',
      'respostas': [
        {'texto': 'var colors = ["red", "green", "blue"]', 'pontuacao': 10},
        {
          'texto': 'var colors = (1:"red", 2:"green", 3:"blue")',
          'pontuacao': 0
        },
        {'texto': 'var colors = "red", "green", "blue"', 'pontuacao': 0},
        {
          'texto': 'var colors = 1 = ("red"), 2 = ("green"), 3 = ("blue")',
          'pontuacao': 0
        }
      ]
    }
  ];

  void Reload() {
    setState(() {
      SelectedQuestion = 0;
      TotalScore = 0;
    });
  }

  void Reply(int Score) {
    if (HaveQuestionSelected) {
      setState(() {
        SelectedQuestion++;
        TotalScore += Score;
      });
    }
  }

  bool get HaveQuestionSelected {
    return SelectedQuestion < Questions.length;
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("Quiz de Programação"), backgroundColor: Colors.green),
          body: HaveQuestionSelected
              ? Quiz(
                  Question: Questions,
                  SelectedQuestion: SelectedQuestion,
                  Reply: Reply)
              : Congratulations(TotalScore, Reload)),
    );
  }
}

class AppQuiz extends StatefulWidget {
  AppQuizState createState() {
    return AppQuizState();
  }
}
