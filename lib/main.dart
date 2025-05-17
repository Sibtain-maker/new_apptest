import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Atc(),
    );
  }
}

class Atc extends StatefulWidget {
  const Atc({super.key});

  @override
  State<Atc> createState() => _AtcState();
}

class _AtcState extends State<Atc> {
  int counter = 0;

  void incrimentcounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text('The counter app'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$counter',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: incrimentcounter,
                child: Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
