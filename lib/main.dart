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
      home: BmiCalculator(),
    );
  }
}

enum Gender { male, female }

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  Gender? selectedGender;
  double _sliderValue = 0;
  int weight = 0;
  int age = 0;

  void incrementWeight() {
    setState(() {
      weight++;
    });
  }

  void decrementWeight() {
    setState(() {
      if (weight > 0) weight--;
    });
  }

  void incrementAge() {
    setState(() {
      age++;
    });
  }

  void decrementAge() {
    setState(() {
      if (age > 0) age--;
    });
  }

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
            'BMI Calculator',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            // Gender selection row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Female container
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: selectedGender == Gender.female
                          ? Colors.pink
                          : const Color(0xFF1D1E33),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.female, size: 100, color: Colors.white),
                        SizedBox(height: 10),
                        Text(
                          'Female',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 40),
                // Male container
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: selectedGender == Gender.male
                          ? Colors.blue
                          : const Color(0xFF1D1E33),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.male, size: 100, color: Colors.white),
                        SizedBox(height: 10),
                        Text(
                          'Male',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),

            // Height slider container
            Container(
              width: 350,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFF1D1E33),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Height: ${_sliderValue.toStringAsFixed(1)} cm',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Slider(
                    min: 0,
                    max: 220,
                    value: _sliderValue,
                    divisions: 220,
                    activeColor: Colors.pink,
                    inactiveColor: Colors.grey,
                    onChanged: (value) {
                      setState(() {
                        _sliderValue = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),

            // Weight and Age row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Weight container
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFF1D1E33),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'WEIGHT',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '$weight kg',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: decrementWeight,
                            icon: const Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: incrementWeight,
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 40),

                // Age container
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFF1D1E33),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'AGE',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '$age',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: decrementAge,
                            icon: const Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: incrementAge,
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 50),

            // Calculate button (no functionality yet)
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
      ),
    );
  }
}
