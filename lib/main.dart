import 'package:app_volei/placar_geral.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const PaginaHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PaginaHome extends StatelessWidget{
  const PaginaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 185, 212),
      floatingActionButton: FloatingActionButton(onPressed: (){

      },
      backgroundColor: Color.fromARGB(255, 12, 70, 158)),
    )
  }
}


class Cores {
  static const corAzul = Color.fromARGB(255, 12, 70, 158);
  static const amarelo = Colors.amberAccent;
}

class Styles {
  static const TextStyle nomeTimes = TextStyle(
    fontSize: 20,
    fontFamily: 'ConcertOne',
    color: Cores.amarelo,
  );

  static const TextStyle qtdJogadores = TextStyle(
    fontSize: 25,
    fontFamily: 'ConcertOne',
    color: Cores.corAzul,
  );

  static const TextStyle jogadores = TextStyle(
    fontSize: 10,
    fontFamily: 'ConcertOne',
    color: Cores.corAzul,
  );
}
