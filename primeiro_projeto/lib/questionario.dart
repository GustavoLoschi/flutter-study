import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  void Function(int) funcao;
  final List<Map<String, Object>> perguntas;
  final int indicePergunta;

  Questionario(
      {@required this.funcao,
      @required this.perguntas,
      @required this.indicePergunta});

  bool get temPerguntaSelecionada {
    return indicePergunta < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas =
        temPerguntaSelecionada ? perguntas[indicePergunta]['respostas'] : null;
    return Column(
      children: <Widget>[
        Questao(perguntas[indicePergunta]['pergunta']),
        ...respostas
            .map((resp) => Botao(
                  resp['texto'],
                  () => funcao(resp['ponto']),
                ))
            .toList(),
      ],
    );
  }
}
