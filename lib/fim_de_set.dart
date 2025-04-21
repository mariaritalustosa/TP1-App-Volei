import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FimDeSet extends StatelessWidget{
    const FimDeSet({super.key});

    @override
    Widget build(BuildContext context) {
      WidgetsFlutterBinding.ensureInitialized();
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft
        ]);
        return Scaffold(
        backgroundColor: Color.fromARGB(255, 28, 185, 212),
         body: Column(
        children: const [
          ColunasPrincipais(),
        ]
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
      child: Row(
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
