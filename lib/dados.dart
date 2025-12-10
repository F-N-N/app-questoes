import './pergunta_respostas.dart';

final List<PerguntaRespostas> perguntasRespostas = [
  PerguntaRespostas(
    pergunta: 'Qual é a capital do Cazaquistão?',
    imagem: 'cazaquistao.jpg',
    respostas: [
      {'r': 'Brasília', 'p': 0},
      {'r': 'New Yourk', 'p': 0},
      {'r': 'Itanhaém', 'p': 0},
      {'r': 'Astana', 'p': 5},
      {'r': 'Marte', 'p': 0},
    ],
  ),
  PerguntaRespostas(
    pergunta: 'O que significa o ditado "Nem tudo que reluz é ouro!"?',
    imagem: 'ouro.png',
    respostas: [
      {'r': 'A luz não é de ouro', 'p': 0},
      {'r': 'Um vagalume não é de ouro', 'p': 0},
      {'r': 'A Lua é de prata', 'p': 0},
      {'r': 'Não vai chover amanhã', 'p': 0},
      {'r': 'Não faço a menor ideia', 'p': 0},
      {'r': 'Que nem tudo que reluz é ouro', 'p': 1},
    ],
  ),
  PerguntaRespostas(
    pergunta: 'Quem foi Igor Brown Swartzman?',
    imagem: 'misterioso.jpg',
    respostas: [
      {'r': 'Um astronauta', 'p': 0},
      {'r': 'Um escritor', 'p': 0},
      {'r': 'Um músico', 'p': 0},
      {'r': 'Um professor da Fatec', 'p': 0},
      {'r': 'Um lunático', 'p': 0},
      {'r': 'Ninguém', 'p': 4},
      {'r': 'Um maquinista de trem', 'p': 0},
      {'r': 'Presidente do Azerbaijão', 'p': 0},
    ],
  ),
];
