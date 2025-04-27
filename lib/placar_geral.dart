import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PlacarGeral extends StatelessWidget {
  const PlacarGeral({super.key});

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
            icon: const Icon(Icons.show_chart),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 28, 185, 212),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Center(
            child: Text(
              'PLACAR GERAL',
              style: TextStyle(
                fontFamily: 'ConcertOne',
                fontSize: 30,
                color: Color.fromARGB(244, 12, 70, 158),
              ),
            ),
          )
        ],
      ),
  );
  }
}