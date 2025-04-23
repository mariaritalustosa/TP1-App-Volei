import 'package:app_volei/fim_de_set.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PlacarParcial extends StatelessWidget{
    const PlacarParcial({super.key});

    @override
    Widget build(BuildContext context) {
      WidgetsFlutterBinding.ensureInitialized();
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft
        ]);
      return Scaffold(
  backgroundColor: Color.fromARGB(255, 28, 185, 212),
  body: SafeArea(
    child: Column(
      children: const [
       Expanded(
          child: SingleChildScrollView(
            child: ColunasPrincipais(),
          ),
        ),
        TempoDeJogo(fontSize: 15),
        SizedBox(height: 8),
        BotaoPlacarGeral(),
        SizedBox(height: 12)
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 17),
      child: Column(
        children: [
          // Botões dos times acima da quadra
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  FloatingActionButton(
                    heroTag: 'TimeA',
                    onPressed: () {},
                    backgroundColor: const Color.fromARGB(255, 171, 255, 241),
                    child: const Text('A', style: TextStyle(
                      fontFamily: 'ConcertOne',
                      fontSize: 13,
                    )),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Time A',
                    style: TextStyle(
                      fontFamily: 'ConcertOne',
                      fontSize: 15,
                      color: Color.fromARGB(255, 12, 70, 158),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  FloatingActionButton(
                    heroTag: 'TimeB',
                    onPressed: () {},
                    backgroundColor: const Color.fromARGB(255, 171, 255, 241),
                    child: const Text('B', style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'ConcertOne',
                    )),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Time B',
                    style: TextStyle(
                      fontFamily: 'ConcertOne',
                      fontSize: 15,
                      color: Color.fromARGB(255, 12, 70, 158),
                    ),
                  ),
                ],
              ),
            ],
          ),
  const SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //coluna esquerda
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(4, (index) {
              //lista de palavras para a coluna esquerda
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
                      style: const TextStyle(fontSize: 25, color: Colors.white, fontFamily: 'ConcertOne'),
                    ),
                  ],
                ),
              );
            }),
          ),
          //quadra
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
                  children: [
                    Image.asset('assets/ball.png',
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
            )
          ),
          //coluna direita
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: List.generate(4, (index) {
              //lista de palavras para a coluna direita
              List<String> textoColunaDireita = ['ACE', 'ATAQUE', 'BLOQUEIO', 'ERRO'];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      textoColunaDireita[index], 
                      style: const TextStyle(fontSize: 25, color: Colors.white, fontFamily: 'ConcertOne'),
                    ),
                    const SizedBox(width: 11),
                    const Botoes(),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

class TempoDeJogo extends StatelessWidget{
  final double fontSize;

  const TempoDeJogo({super.key, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Tempo de Jogo: 1:14:00',
          style: TextStyle(
            fontSize: fontSize,
            fontFamily: 'ConcertOne',
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

class BotaoPlacarGeral extends StatelessWidget{
  const BotaoPlacarGeral({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: 
        (context) => FimDeSet()),
        );
      },
    child: Container(
      margin: EdgeInsets.only(left: 1),
      width: 200,
      height: 45,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 12, 70, 158),
        border: Border.all(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
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


class Botoes extends StatelessWidget{
  const Botoes({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: (){
      },
      backgroundColor: Color.fromARGB(255, 12, 70, 158),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      child: const Icon(Icons.add),
      );
  }
}

