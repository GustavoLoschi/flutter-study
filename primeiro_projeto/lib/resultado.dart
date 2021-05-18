import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  var pontuacaoTotal;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontuacaoTotal, this.quandoReiniciarQuestionario);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'Fim da pesquisa!\nPontuação total: $pontuacaoTotal',
            style: TextStyle(
              color: Colors.blue[700],
              fontSize: 28,
            ),
          ),
        ),
        FlatButton(
          onPressed: quandoReiniciarQuestionario,
          child: Text(
            'Reiniciar?',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          textColor: Colors.blue,
        )
      ],
    );
  }
}
