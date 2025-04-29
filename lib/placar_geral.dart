import 'package:app_volei/estatisticas.dart';
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
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder:
              (context) => Estatisticas()),
              );
            },
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
          ),
          Container(
            width: 460,
            height: 250,
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 126, 52),
              border: Border.all(color: Colors.white, width: 4),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(4, (_) => Padding(padding:
                  EdgeInsets.symmetric(vertical: 5),
                  child: Icon(Icons.bar_chart_rounded, color: Colors.white, size: 15,),)),
                )
              ],
            ),
            SizedBox(width: 10),
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 179, 246, 248),
                      child: Text(
                        'A', 
                        style: TextStyle(
                          fontFamily: 'ConcertOne',
                          fontSize: 20,
                          color: Color.fromARGB(255, 12, 70, 158),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    ...[
                      {'time': 'Ziraldos', 'pontos': 25},
                      {'time': 'Ziraldos', 'pontos': 25},
                      {'time': 'Ziraldos', 'pontos': 10},
                      {'time': 'Sparrings', 'pontos': 25},
                    ].map((Map<String, dynamic> times) => Padding(
                    padding: 
                    EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Text(
                          times['time'],
                          style: TextStyle(
                            fontFamily: 'ConcertOne',
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        ),
                        Text(
                          '${times['pontos']}',
                          style: TextStyle(
                            fontFamily: 'ConcertOne',
                            fontSize: 25,
                            color: times['pontos'] == 25 ? Color.fromARGB(255, 12, 70, 158) : Colors.amber,
                          ),
                        ),
                      ],
                    ),
                    )),
                  ],
                ),
                ),
                Container(
                  width: 5,
                  height: double.infinity,
                  color: Colors.white,
                ),
                Expanded(child: 
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 179, 246, 248),
                      child: Text(
                        'B',
                        style: TextStyle(
                          fontFamily: 'ConcertOne',
                          fontSize: 20,
                          color: Color.fromARGB(255, 12, 70, 158),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    ...[
                      {'time': 'Sparrings', 'pontos': 10},
                      {'time': 'Sicranos', 'pontos': 10},
                      {'time': 'Autoconvidados', 'pontos': 25},
                      {'time': 'Autoconvidados', 'pontos': 10},
                    ].map((Map<String, dynamic> times) => Padding(
                    padding: 
                    EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Text(
                          times['time'],
                          style: TextStyle(
                            fontFamily: 'ConcertOne',
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        ),
                        Text(
                          '${times['pontos']}',
                          style: TextStyle(
                            fontFamily: 'ConcertOne',
                            fontSize: 25,
                            color: times['pontos'] == 25 ? Color.fromARGB(255, 12, 70, 158) : Colors.amber,
                          ),
                        ),
                      ],
                    ),
                    )),
                  ],
                ),
                ),
                Padding(padding: 
                EdgeInsets.only(left: 10),
                child: Column(),
                )
                  ],
                ),),
              ],
            ),
          );
  }
}