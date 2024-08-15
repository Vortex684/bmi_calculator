import 'package:flutter/material.dart';
import 'package:bmi_calc/second_screen.dart';

class BmiIndex extends StatefulWidget {
  const BmiIndex({super.key});

  @override
  State<BmiIndex> createState() => _BmiIndexState();
}

class _BmiIndexState extends State<BmiIndex> {
  
  TextEditingController heightcontroller = TextEditingController();
  TextEditingController weightcontroller = TextEditingController();


  void calculate(){
    final double weight=double.parse(weightcontroller.text);
    final double height=double.parse(heightcontroller.text);
    final double bmi = weight/height;
     Navigator.push( context,
       MaterialPageRoute(
         builder: (context) => 
         SecondScreen(bmi: bmi)
      )
     );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 32, 31, 31),
        centerTitle: true,
        title: const Text(
          "BMI CALCULATOR",
          style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: weightcontroller,
              decoration: InputDecoration(
                hintText: 'your weight in kg',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: heightcontroller,
              decoration: InputDecoration(
                  hintText: 'your height in m',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
              keyboardType: TextInputType.number,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style:const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.purple)
            ),
            onPressed: () {
              calculate();
            },
            child: const Text('Result',
            style:TextStyle(
            color: Colors.black
            )
             ),
          ),
        ],
      ),
    );
  }
}