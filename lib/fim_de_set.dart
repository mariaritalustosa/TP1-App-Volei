import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:app_volei/placar_parcial.dart';
import 'package:app_volei/placar_geral.dart';

class FimDeSet extends StatelessWidget{
    const FimDeSet({super.key});

    @override
    Widget build(BuildContext context) {
      WidgetsFlutterBinding.ensureInitialized();
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft
        ]);
        return Scaffold(
          appBar: AppBar(
            backgroundColor:  Color.fromARGB(255, 28, 185, 212),
            leading: IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: const Icon(Icons.arrow_back),
            color: Colors.white,
            ),
            actions: [
              IconButton(onPressed: (){},
               icon: Icon(Icons.settings),
               color: Colors.white,
               ),
            ],
          ),
          backgroundColor: Color.fromARGB(255, 28, 185, 212),
          body: Column(
          children: [
          ColunasPrincipais(),
          Spacer(),
          TempoDeJogo(
            fontSize: 17,
          ),
        ]
      ),
    );
  }
}

void placarGanhador(BuildContext context) {
  Navigator.of(context).push(
    PageRouteBuilder(
      opaque: false,
      pageBuilder: (_, __, ___) => const Placar(),
    ),
  );
}

class Placar extends StatelessWidget {
  const Placar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withValues(alpha: 0.2), 
      body: Center(
        child: Container(
          width: 550, 
          height: 400,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 179, 246, 248).withValues(alpha: 0.9),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: const Color.fromARGB(255, 255, 255, 255), width: 2),
          ),
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
               Text(
                'FIM DE SET',
                style: TextStyle(
                  fontSize: 30,
                   fontFamily: 'ConcertOne',
                  color: Color.fromARGB(255, 12, 70, 158),
                ),
              ),
              const Text(
                'Autoconvidados',
                style: TextStyle(
                  fontSize: 60,
                  fontFamily: 'ConcertOne',
                  color: Color.fromARGB(255, 12, 70, 158),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context); 
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 12, 70, 158),
                      minimumSize: Size(100, 80),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text('Terminar', style: TextStyle(
                      fontFamily: 'ConcertOne',
                      color: Colors.white,
                    ),),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PlacarGeral()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 12,70, 158),
                      minimumSize: Size(100, 80),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Novo Set',
                      style: TextStyle(color: Color.fromARGB(255, 255, 184, 31)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


