import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  final double bmi;

  const SecondScreen({super.key, required this.bmi});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
String result;
    if (widget.bmi < 18.5) {
      result = 'Underweight';
    } else if (widget.bmi < 24.9) {
      result = 'Normal weight';
    } else if (widget.bmi < 29.9) {
      result = 'Overweight';
    } else {
      result = 'Obesity';
    }

    String resultDiscription;
    if (widget.bmi < 18.5) {
      resultDiscription = 'Underweight: Consider gaining some weight for better health.';
    } else if (widget.bmi < 24.9) {
      resultDiscription = 'Normal weight: Congratulations! Your weight is within the healthy range.';
    } else if (widget.bmi < 29.9) {
      resultDiscription = 'Overweight: Consider managing your weight through diet and exercise.';
    } else {
      resultDiscription = 'Obese: Your BMI indicates obesity. Consult a healthcare professional for guidance.';
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 32, 31, 31),
        title: const Text(
          "Final Result",style: TextStyle(
            color: Colors.purple
          ),
         )
        ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const Text(
            'Your Result',
            style: TextStyle(
              color: Colors.purple,
              fontSize: 28
            ),
            ),
           const SizedBox(height: 25,),
            Expanded(
              child: Container(
                margin:const EdgeInsets.only(left: 40,right: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:const Color.fromARGB(255, 32, 31, 31),
                ), 
                
                alignment: Alignment.center,
                padding:const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      result,
                      style:const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 62, 176, 33)
                      ),
                      ),
                     const SizedBox(height: 80),
                     Text(widget.bmi.toStringAsFixed(3),
                      style:const TextStyle(
                        color: Colors.purple,
                        fontSize: 40,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(height: 80),
                    Text(resultDiscription)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                 child:const Text('Re-enter',style: TextStyle(color: Colors.purple),),
                 ),
            ),
          ],
        ),
      ),
    );
  }
}