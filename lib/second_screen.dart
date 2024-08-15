import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final double bmi;

  const SecondScreen({super.key, required this.bmi});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 32, 31, 31),
        title: const Text(
          "Final Result",style: TextStyle(
            color: Colors.purple
          ),
         )
        ),
      body: Center(
        child: Text('your BMI is: ${bmi.toStringAsFixed(3)}',
          style:const TextStyle(
            color: Colors.purple,
            fontSize: 40,
            fontWeight: FontWeight.bold
          ),
        )
        ),
    );
  }
}