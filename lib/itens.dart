import 'package:flutter/material.dart';

class Itens extends StatelessWidget {
  final String pergunta;
  final String resposta;
  final int ponto;

  const Itens({
    super.key,
    required this.pergunta,
    required this.resposta,
    required this.ponto,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        margin: const EdgeInsets.symmetric (vertical: 8),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pergunta,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ),
              Text(
                resposta.toUpperCase(),
                style: TextStyle(
                  fontSize: 18,
                  color: ponto == 0
                    ? Colors.red: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}