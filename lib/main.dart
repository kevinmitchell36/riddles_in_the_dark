import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const Riddles());
}

class Riddles extends StatelessWidget {
  const Riddles({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 115, 60, 2),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 100, 100, 100),
          title: const Text('Riddles in the Dark'),
        ),
        body: const RiddlesPage(),
      ),
    );
  }
}

class RiddlesPage extends StatefulWidget {
  const RiddlesPage({super.key});

  @override
  State<RiddlesPage> createState() => _RiddlesPageState();
}

class _RiddlesPageState extends State<RiddlesPage> {
  int numRiddle = 0;
  bool answer = false;
  String buttonText = 'Reveal Answer';
  final riddles = [
    {
      'question':
          'What has roots as nobody sees, is taller than the trees, up, up it goes, and yet never grows',
      'answer': 'A mountain'
    },
    {
      'question':
          'Thirty white horses on a red hill, first then champ, then they stamp, then they stand still',
      'answer': 'Teeth'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 5,
          child: Image.network(
            'https://www.looper.com/img/gallery/gollums-entire-backstory-explained/intro-1584137078.jpg',
            fit: BoxFit.fill,
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Text('${riddles[numRiddle]['question']}'),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                answer
                    ? Text('${riddles[numRiddle]['answer']}')
                    : const Text(''),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                  ),
                  onPressed: () {
                    setState(() {
                      answer = !answer;
                      if (answer == false) {
                        numRiddle = Random().nextInt(2);
                      }
                    });
                  },
                  child: !answer
                      ? const Text('Reveal Answer',
                          style: TextStyle(color: Colors.white))
                      : const Text('Next',
                          style: TextStyle(color: Colors.black)),
                ),
              ]),
        )
      ],
    );
  }
}
