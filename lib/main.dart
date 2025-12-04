import 'package:flutter/material.dart';
import 'package:questoes/botoes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Natividade', style: TextStyle(fontSize: 30)),
        centerTitle: true,
        backgroundColor: Colors.amber,
        toolbarHeight: 80,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Text(
              perguntas[indicePergunta],
              style: TextStyle(fontSize: 30)
            ),
            Botoes(resp: responder),
            Botoes(resp: responder),
            Botoes(resp: responder),
          ],
        ),
      ),
    );
  }
}

class Home extends StatefulWidget{
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home>{
  final perguntas = [
    'Qual a sua cor favorita?',
    'Qual o seu animal favorito?',
    'Qual o seu time favorito?',
  ];

  var indicePergunta = 0;

  void responder(){
    if (indicePergunta < perguntas.length - 1){
      indicePergunta++;
    } else {
      indicePergunta = 0;
    }
    setState(() {});
  }
  
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}