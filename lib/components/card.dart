import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  final int number;

  const CardComponent(this.number,{super.key});

  Color? getColorFromNumber(int number){
    final int colorValue = (100 + (number % 8) * 100).clamp(100, 900); 

    return Colors.blue[colorValue];
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation:4.0,
      color: getColorFromNumber(number),
      margin: const EdgeInsets.all(8.0),
      child: Center(
        child: Text(
          "$number",
          style: const TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
        )
      ,)
    );
  }
}
