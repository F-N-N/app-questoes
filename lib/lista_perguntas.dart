import 'package:flutter/material.dart';
import './pergunta_respostas.dart';
import './botoes.dart';

class ListaPerguntas extends StatelessWidget{
  final int indicePergunta;
  final List<PerguntaRespostas> perguntas;
  final void Function(String) responder;

  const ListaPerguntas({
    super.key,
    required this.indicePergunta,
    required this.perguntas,
    required this.responder,
  });

  @override
  Widget build(BuildContext context) {
    final perguntaAtual = perguntas[indicePergunta];

    return Column(
      children: [
        Text(
          perguntaAtual.pergunta,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
          ...perguntaAtual.respostas.map(
                  (textoBotao) => Botoes(resp: responder, txt: textoBotao)
        ),
      ],
    );
  }
}