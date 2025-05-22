import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double bmi;

  const ResultScreen({super.key, required this.bmi});

  String getResultCategory() {
    if (bmi >= 30)
      return 'Obese';
    else if (bmi >= 25)
      return 'Overweight';
    else if (bmi >= 18.5)
      return 'Normal';
    else
      return 'Underweight';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF090B22),
      appBar: AppBar(
        title: const Text('Result', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF090B22),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your BMI',
              style: const TextStyle(color: Colors.white, fontSize: 30),
            ),
            const SizedBox(height: 20),
            Text(
              bmi.toStringAsFixed(1),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              getResultCategory(),
              style: const TextStyle(color: Colors.white70, fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
