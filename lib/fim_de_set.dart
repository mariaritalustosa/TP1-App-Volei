import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:app_volei/placar_parcial.dart';

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


