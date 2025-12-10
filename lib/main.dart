import 'package:flutter/material.dart';
import './dados.dart';
import './lista_perguntas.dart';
import './resultado.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: GoogleFonts.merriweatherSans().fontFamily),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget{
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home>{
  final dados = perguntasRespostas;
  List respostas = [];
  var indicePergunta = 0;
  var totalPontos = 0;

  @override
  void initState(){
    super.initState();
    perguntasRespostas.shuffle();
  }

  void responder(String r, int ponto){
    String p = dados[indicePergunta].pergunta;
    respostas.add({'pergunta': p, 'resposta': r, 'ponto': ponto});
    totalPontos += ponto;
    indicePergunta++;
    setState(() {});
  }

  void reiniciar(){
    setState(() {
      indicePergunta = 0;
      totalPontos = 0;
      respostas = [];
      perguntasRespostas.shuffle();
    });
  }

  bool get temPergunta {
    return indicePergunta < dados.length;
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Natividade', style: TextStyle(fontSize: 30)),
        centerTitle: true,
        backgroundColor: Colors.amber,
        toolbarHeight: 80,
      ),
      backgroundColor: Color.fromRGBO(250, 230, 200, 1),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [temPergunta ? ListaPerguntas(
            indicePergunta: indicePergunta,
            perguntas: dados,
            responder: responder,
          )
          : Resultado(respostas, reiniciar, totalPontos),
        ]
      ),
    );
  }
}