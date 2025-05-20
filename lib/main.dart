import 'package:flutter/material.dart';

void main() {
  runApp(const MYApp());
}

class MYApp extends StatefulWidget {
  const MYApp({super.key});

  @override
  State<MYApp> createState() => _MYAppState();
}

class _MYAppState extends State<MYApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BmiCalculatour(),
    );
  }
}

class BmiCalculatour extends StatefulWidget {
  const BmiCalculatour({super.key});

  @override
  State<BmiCalculatour> createState() => _BmiCalculatourState();
}

class _BmiCalculatourState extends State<BmiCalculatour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF090B22),
      appBar: AppBar(
        backgroundColor: const Color(0xFF090B22),
        leading: const Icon(
          Icons.ad_units,
          color: Colors.white,
        ),
        title: const Padding(
          padding: EdgeInsets.all(50),
          child: Text(
            'BMi Calculatour',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 150,
                  height: 150,
                  color: const Color(0xFF1D1E33),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.female, size: 100, color: Colors.white),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'female ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
              const SizedBox(
                width: 40,
              ),
              Container(
                width: 150,
                height: 150,
                color: const Color(0xFF1D1E33),
                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.male, size: 100, color: Colors.white),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        ' MALLE',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ]),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            width: 350,
            height: 150,
            color: const Color(0xFF1D1E33),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 150,
                color: const Color(0xFF1D1E33),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'WEIGHT',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '60',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              Container(
                width: 150,
                height: 150,
                color: const Color(0xFF1D1E33),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'AGE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '25',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            width: 350,
            height: 50,
            color: const Color(0xFFEB1555),
            child: const Center(
              child: Text(
                'CALCULATE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
