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
    );
  }
}