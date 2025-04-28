import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Estatisticas extends StatelessWidget {
  const Estatisticas({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft
    ]);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 28, 185, 212),
      ),
    );
  }
}