import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PlacarGeral extends StatelessWidget{
    const PlacarGeral({super.key});

    @override
    Widget build(BuildContext context) {
      WidgetsFlutterBinding.ensureInitialized();
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft
        ]);
        return Scaffold(
        backgroundColor: Color.fromARGB(255, 28, 185, 212),
        body: const ColunasPrincipais(),
    );
  }
}

class ColunasPrincipais extends StatelessWidget {
  const ColunasPrincipais({super.key});
  @override
   Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //coluna esquerda
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(4, (_) => const Botoes())
            .expand((botao) => [botao, const SizedBox(height: 8)])
            .toList()
            ..removeLast(),
            ),
            //coluna direita
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(4, (_) => const Botoes())
            .expand((botao) => [botao, const SizedBox(height: 8)])
            .toList()
            ..removeLast(),
            ),
          ],
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
