import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const PaginaHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PaginaHome extends StatelessWidget {
  const PaginaHome({super.key});

  final Color backgroundColor = const Color.fromARGB(255, 28, 185, 212);
  final Color boxColor = const Color.fromARGB(255, 19, 184, 184);  
  final Color buttonColor = const Color.fromARGB(255, 12, 70, 158);  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: buttonColor,
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/ball.png', width: 60),
                  const SizedBox(width: 10),
                 Container(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                 children: const [
                 Text(
                    'Volley',
                     style: TextStyle(
                     fontSize: 50,
                     fontFamily: 'ConcertOne',
                      color: Colors.white,
                      height: 0.9,
                   ),
                 ),
                    Text(
                    'do fim de semana',
                    style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'ConcertOne',
                    color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  ],
),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 60,
                    height: 180,
                    color: boxColor,
                    child: Center(
                      child: Transform.rotate(
                        angle: -pi / 2, 
                        child: const Text(
                          'TIMES ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'ConcertOne',
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
