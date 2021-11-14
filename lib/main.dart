
import 'package:flutter/material.dart';
import 'package:pm_callllll/bmi.dart';
import 'package:provider/provider.dart';
void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
    ChangeNotifierProvider<BMIResultProvider>(
    create: (context) => BMIResultProvider(),),
      ],
      child: MaterialApp(
        home: BmiScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}