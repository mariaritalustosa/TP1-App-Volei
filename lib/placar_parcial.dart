import 'package:app_volei/fim_de_set.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PlacarParcial extends StatelessWidget {
  const PlacarParcial({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft
    ]);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 28, 185, 212),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 28, 185, 212),
      body: SafeArea(
  child: Column(
    children: [
      Expanded(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: ColunasPrincipais(),
          ),
        ),
      ),
      const TempoDeJogo(fontSize: 15),
      const SizedBox(height: 8),
      const BotaoPlacarGeral(),
      const SizedBox(height: 12),
    ],
  ),
),

    );
  }
}

class ColunasPrincipais extends StatelessWidget {
  const ColunasPrincipais({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(4, (index) {
              List<String> textoColunaEsquerda = ['ACE', 'ATAQUE', 'BLOQUEIO', 'ERRO'];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Botoes(),
                    const SizedBox(width: 11),
                    Text(
                      textoColunaEsquerda[index],
                      style: const TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontFamily: 'ConcertOne',
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
        Container(
          width: 400,
          height: 150,
          margin: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 126, 52),
            border: Border.all(color: Colors.white, width: 3),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/ball.png',
                    width: 50,
                    height: 50,
                  ),
                  const SizedBox(height: 1),
                  const Text(
                    '12',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontFamily: 'ConcertOne',
                    ),
                  ),
                ],
              ),
              Container(
                width: 5,
                height: 150,
                color: Colors.white,
              ),
              const Text(
                '22',
                style: TextStyle(
                  fontFamily: 'ConcertOne',
                  fontSize: 40,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: List.generate(4, (index) {
              List<String> textoColunaDireita = ['ACE', 'ATAQUE', 'BLOQUEIO', 'ERRO'];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      textoColunaDireita[index],
                      style: const TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontFamily: 'ConcertOne',
                      ),
                    ),
                    const SizedBox(width: 11),
                    const Botoes(),
                  ],
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}

class TempoDeJogo extends StatelessWidget {
  final double fontSize;

  const TempoDeJogo({super.key, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Tempo de Jogo: 1:14:00',
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: 'ConcertOne',
        color: Colors.white,
      ),
    );
  }
}

class BotaoPlacarGeral extends StatelessWidget {
  const BotaoPlacarGeral({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FimDeSet()),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(left: 1),
        width: 200,
        height: 45,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 12, 70, 158),
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Center(
          child: Text(
            'Placar Geral',
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

class Botoes extends StatelessWidget {
  const Botoes({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        placarGanhador(context);
      },
      backgroundColor: const Color.fromARGB(255, 12, 70, 158),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      mini: true,
      child: const Icon(Icons.add),
    );
  }
}