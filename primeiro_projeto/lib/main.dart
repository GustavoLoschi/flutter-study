import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final _perguntas = const [
    {
      'pergunta': 'Qual sua cor favorita?',
      'respostas': [
        {'texto': 'Vermelho', 'ponto': 10},
        {'texto': 'Verde', 'ponto': 4},
        {'texto': 'Azul', 'ponto': 7},
        {'texto': 'Branco', 'ponto': 8},
      ],
    },
    {
      'pergunta': 'Qual seu animal favorito?',
      'respostas': [
        {'texto': 'Cachorro', 'ponto': 10},
        {'texto': 'Gato', 'ponto': 8},
        {'texto': 'Papagaio', 'ponto': 7},
        {'texto': 'Coelho', 'ponto': 5},
      ],
    },
    {
      'pergunta': 'Qual seu estado de nascimento?',
      'respostas': [
        {'texto': 'MG', 'ponto': 10},
        {'texto': 'SP', 'ponto': 2},
        {'texto': 'RJ', 'ponto': 1},
        {'texto': 'ES', 'ponto': 6},
      ],
    }
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                funcao: _responder,
                indicePergunta: _perguntaSelecionada,
              )
            : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
