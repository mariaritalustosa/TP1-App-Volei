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

class PaginaHome extends StatelessWidget {
  const PaginaHome({super.key});

  final Color backgroundColor = const Color.fromARGB(255, 28, 185, 212);
  final Color boxColor = const Color.fromARGB(255, 62, 214, 214);
  final Color buttonColor = const Color.fromARGB(255, 12, 70, 158);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: buttonColor,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/ball.png', width: 60),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.only(right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: const [
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
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 150),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 70,
                            height: 220,
                            decoration: BoxDecoration(
                              color: boxColor,
                              border: Border.all(
                                color: const Color.fromARGB(255, 78, 226, 231),
                                width: 3,
                              ),
                            ),
                            child: Center(
                              child: RotatedBox(
                                quarterTurns: -1,
                                child: Text(
                                  'TIMES',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 50,
                                    fontFamily: 'ConcertOne',
                                    letterSpacing: 2,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            'SICRANOS',
                            style: Styles.nomeTimes,
                          ),
                          SizedBox(width: 5),
                          Text(
                            '3',
                            style: Styles.qtdJogadores,
                          ),
                          SizedBox(height: 5),
                          RotatedBox(
                            quarterTurns: 3,
                            child: Text(
                              'Jogadores',
                              style: Styles.jogadores,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            'AUTOCONVIDADOS',
                            style: Styles.nomeTimes,
                          ),
                          SizedBox(width: 5),
                          Text(
                            '3',
                            style: Styles.qtdJogadores,
                          ),
                          SizedBox(width: 10),
                          RotatedBox(
                            quarterTurns: 3,
                            child: Text(
                              'Jogadores',
                              style: Styles.jogadores,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            'ZIRALDOS',
                            style: Styles.nomeTimes,
                          ),
                          SizedBox(width: 5),
                          Text(
                            '4',
                            style: Styles.qtdJogadores,
                          ),
                          SizedBox(width: 10),
                          RotatedBox(
                            quarterTurns: 3,
                            child: Text(
                              'Jogadores',
                              style: Styles.jogadores,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            'SPARRINGS',
                            style: Styles.nomeTimes,
                          ),
                          SizedBox(width: 5),
                          Text(
                            '5',
                            style: Styles.qtdJogadores,
                          ),
                          SizedBox(height: 5),
                          RotatedBox(
                            quarterTurns: 3,
                            child: Text(
                              'Jogadores',
                              style: Styles.jogadores,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
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
    fontSize: 30,
    fontFamily: 'ConcertOne',
    color: Cores.amarelo,
  );

  static const TextStyle qtdJogadores = TextStyle(
    fontSize: 45,
    fontFamily: 'ConcertOne',
    color: Cores.corAzul,
  );

  static const TextStyle jogadores = TextStyle(
    fontSize: 10,
    fontFamily: 'ConcertOne',
    color: Cores.corAzul,
  );
}
