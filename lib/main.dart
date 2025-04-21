import 'package:app_volei/placar_parcial.dart';
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
            JogosCasados(),

            SizedBox(height: 20),
            BotaoIniciar()
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
        Image.asset('assets/ball.png', width: 50),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const[
            Text(
              'Volley',
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'ConcertOne',
                color: Colors.white,
                height: 0.9,
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

class ContainerTimes extends StatelessWidget{
  const ContainerTimes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2),
      width: 60,
      height: 150,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 29, 206, 212),
        border: Border.all(
          color: Color.fromARGB(255, 119, 226, 230),
        ),
      ),
      child: const Center(
        child: RotatedBox(quarterTurns: -1,
        child: Text(
          'TIMES',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 50,
            fontFamily: 'ConcertOne',
          ),
        ),),
      ),

    );
  }
}

class ListaTimes extends StatelessWidget{
  const ListaTimes({super.key});

  final List<Map<String, String>> times = const[
    {'nome': 'SICRANOS', 'jogadores': '3'},
    {'nome': 'AUTOCONVIDADOS', 'jogadores': '3'},
    {'nome': 'ZIRALDOS', 'jogadores': '4'},
    {'nome': 'SPARRINGS', 'jogadores': '5'},
    ];

    @override
  Widget build(BuildContext context) {
     return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: times.map((time) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                time['nome']!,
                style: Styles.nomeTimes,
              ),
              const SizedBox(width: 5),
              Text(
                time['jogadores']!,
                style: Styles.qtdJogadores,
              ),
              const SizedBox(width: 5),
              const RotatedBox(
                quarterTurns: 3,
                child: Text(
                  'Jogadores',
                  style: Styles.jogadores,
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}

class JogosCasados extends StatelessWidget {
  const JogosCasados({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'Jogos Casados',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontFamily: 'ConcertOne',
          ),
        ),
      ],
    );
  }
}

class BotaoIniciar extends StatelessWidget{
  const BotaoIniciar ({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: 
        (context) => PlacarParcial()),
        );
      },
    child: Container(
      margin: EdgeInsets.only(left: 2),
      width: 250,
      height: 60,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 12, 70, 158),
        border: Border.all(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Center(
        child: Text(
          'Iniciar',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontFamily: 'ConcertOne',
          ),
        ),
        ),
    ),
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
