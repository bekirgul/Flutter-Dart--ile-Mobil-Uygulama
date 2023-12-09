import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class MemoryGamesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Image Gallery',
      debugShowCheckedModeBanner: false, // Debug yazısı olmadan
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Hafıza Oyunları'), // Başlık çubuğunda görünen metin
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center, // Sütun içindeki öğeleri dikey olarak hizalar, merkeze yerleştirir
      crossAxisAlignment: CrossAxisAlignment.center, // Sütun içindeki öğeleri yatay olarak hizalar, merkeze yerleştirir
      
        children: [
          // SUDOKU Oyunu
          Padding(
            padding: EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () {
                // 'SUDOKU' yazısına tıklama olayını yönet
                // İlgili linke git
                launch('https://www.mynet.com/sudoku#/'); // İstediğiniz linki buraya girin
              },
              child: Column(
                children: [
                  Image.network(
                    'https://img.freepik.com/free-vector/crossword-sudoku-abstract-concept-vector-illustration-stay-home-games-puzzles-keep-your-brain-shape-self-isolation-time-spending-quarantine-leasure-activity-abstract-metaphor_335657-4127.jpg?w=2000',
                    width: 150,
                    height: 150,
                  ),
                  GestureDetector(
                    onTap: () {
                      // 'SUDOKU' yazısına tıklama olayını yönet
                      // İlgili linke git
                      launch('https://www.mynet.com/sudoku#/'); // İstediğiniz linki buraya girin
                    },
                    child: const Text(
                      'SUDOKU',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // SATRANÇ Oyunu
          Padding(
            padding: EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () {
                // 'SATRANÇ' yazısına tıklama olayını yönet
                // İlgili linke git
                launch('https://www.chess.com/tr/play/computer'); // İstediğiniz linki buraya girin
              },
              child: Column(
                children: [
                  Image.network(
                    'https://i2.milimaj.com/i/milliyet/75/1200x675/64300a8886b24a1b749eda6c.jpg',
                    width: 150,
                    height: 150,
                  ),
                  GestureDetector(
                    onTap: () {
                      // 'SATRANÇ' yazısına tıklama olayını yönet
                      // İlgili linke git
                      launch('https://www.chess.com/tr/play/computer'); // İstediğiniz linki buraya girin
                    },
                    child: const Text(
                      'SATRANÇ',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // BULMACA Oyunu
          Padding(
            padding: EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () {
                // 'BULMACA' yazısına tıklama olayını yönet
                // İlgili linke git
                launch('https://m.haberturk.com/bulmaca'); // İstediğiniz linki buraya girin
              },
              child: Column(
                                children: [
                  Image.network(
                    'https://i2.milimaj.com/i/milliyet/75/869x477/624eb97e86b24726f02613af.jpg',
                    width: 150,
                    height: 150,
                  ),
                  const Text(
                    'BULMACA',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
