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
      backgroundColor: Color.fromARGB(255, 12, 70, 158),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      child: const Icon(Icons.add),
      ),
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const[
            Titulo(),
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ContainerTimes(),
                SizedBox(width: 10),
                Expanded(child: ListaTimes()),
              ],
            ),
            SizedBox(width: 30),
            FinalWidget(),
          ],
        ),
      )),
    );
  }
}

class Titulo extends StatelessWidget{
  const Titulo({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/ball.png', width: 60),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const[
            Text(
              'Volley',
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'ConcertOne',
                color: Colors.white,
              ),
            ),
            Text(
              'do fim de semana',
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'ConcertOne',
                color: Colors.white,
              ),
            )
          ],
        )
      ],
    );
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
