import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'bmi_result_screen.dart';

class BmiScreen extends StatefulWidget {
  @override
  _BmiScreenState createState() => _BmiScreenState();
}

bool isMale = true;
double height = 120;
int weight = 40;
int age = 20;

class _BmiScreenState extends State<BmiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF09192A),
        title: const Text(
          'BMI Calculator',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        color: Color(0xFF09192A),
        child: Column(
          children: [
            Container(
              child: Container(
                  child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 20, bottom: 40, left: 30, right: 20),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: isMale
                                  ? const Color(0xFF2F4457)
                                  : const Color(0xFFC6C8CB),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(
                                image: AssetImage('assets/male.png'),
                                height: 70,
                                width: 70,
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                'MALE',
                                style: TextStyle(
                                    fontSize: 26, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 20, bottom: 40, left: 20, right: 30),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: !isMale ? Colors.blue : Colors.grey[400],
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(
                                image: AssetImage('assets/female.png'),
                                height: 70,
                                width: 70,
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                'FEMALE',
                                style: TextStyle(
                                    fontSize: 26, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20, left: 30, right: 30),
              child: Container(
                padding: EdgeInsets.all(12),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[400],
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 35,
                    ),
                    const Text(
                      'Height',
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'CM',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Slider(
                        value: height,
                        max: 220,
                        min: 80,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        }),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Expanded(
                child: Container(
                  // color: Colors.grey[300],
                  width: double.infinity,
                  child: Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                const Text(
                                  'WEIGHT',
                                  style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '$weight',
                                  style: const TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          weight--;
                                        });
                                      },
                                      heroTag: 'weight-',
                                      mini: true,
                                      child: Icon(Icons.remove),
                                    ),
                                    FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          weight++;
                                        });
                                      },
                                      heroTag: 'weight+',
                                      mini: true,
                                      child: Icon(Icons.add),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                const Text(
                                  'AGE',
                                  style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '$age',
                                  style: const TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          age--;
                                        });
                                      },
                                      heroTag: 'age-',
                                      mini: true,
                                      child: Icon(Icons.remove),
                                    ),
                                    FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          age++;
                                        });
                                      },
                                      heroTag: 'age+',
                                      mini: true,
                                      child: Icon(Icons.add),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            MaterialButton(
              padding: EdgeInsets.only(left: 35, right: 35),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              color: Color(0xFFE2BA45),
              onPressed: () {
                Provider.of <BMIResultProvider>(context , listen: false).pmiCalc(age, weight);
              },
              child: const Text(
                'Calculate',
                style: TextStyle(fontSize: 16.0, color: Colors.black),
              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: Text(' The PMI is : ${Provider.of <BMIResultProvider>(context , listen: false).result}',style:TextStyle(fontSize: 20, color:Colors.white)),
            ),
          ],
        ),
      ),
    );
  }


}

class BMIResultProvider extends ChangeNotifier {
   double result = 0.0;

  pmiCalc(int age, int weight) {

    result = weight / pow(height / 100, 2);
    notifyListeners();
  }
}
