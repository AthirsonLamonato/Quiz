import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Quiz extends StatelessWidget {
  final int SelectedQuestion;
  final List<Map<String, Object>> Question;
  final void Function(int) Reply;

  Quiz({
    required this.Question,
    required this.SelectedQuestion,
    required this.Reply
  });

  bool get HaveQuestionSelected {
    return SelectedQuestion < Question.length;
  }

  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = HaveQuestionSelected
        ? Question[SelectedQuestion].cast()['respostas']
        : [];

    return Center(
      child: Column(
        children: [
          Questionn(Question[SelectedQuestion]['texto'].toString()),
          ...respostas
              .map((resp) =>
              Answer(resp['texto'].toString(), () =>
                  Reply(int.parse(resp['pontuacao'].toString()))))
              .toList(),
        ],
      )
    );
  }
}