import 'package:bimestral_kennedy/sreens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BimestralKennedy());
}

class BimestralKennedy extends StatelessWidget {
  const BimestralKennedy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BimestralKennedy",
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
