import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  final String texto;
  final void Function() onSelection;

  Botao(this.texto, this.onSelection);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(texto),
        onPressed: onSelection,
        textColor: Colors.white,
        color: Colors.blue,
      ),
    );
  }
}
