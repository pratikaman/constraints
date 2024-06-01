

import 'package:flutter/material.dart';

class AspectRatioWidget extends StatelessWidget {
  final String ratio;

  const AspectRatioWidget({super.key, required this.ratio});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Fraction.fromString(ratio).toDouble(),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(color: Colors.white),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Text(
              'AspectRatio - $ratio',
              style: const TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}

class Fraction {
  final int numerator;
  final int denominator;

  Fraction(this.numerator, this.denominator);

  static Fraction fromString(String fraction) {
    var parts = fraction.split('/');
    return Fraction(int.parse(parts[0]), int.parse(parts[1]));
  }

  double toDouble() {
    return numerator / denominator;
  }
}