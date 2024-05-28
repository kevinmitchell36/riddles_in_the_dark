
import 'package:flutter/material.dart';

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
          child: FittedBox(
            fit: BoxFit.fill,
            child: Image.network(
                'https://www.looper.com/img/gallery/gollums-entire-backstory-explained/intro-1584137078.jpg'),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Text('${riddles[0]['question']}'),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
              ),
              onPressed: () {},
              child: const Text(
                'Reveal Answer',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}
