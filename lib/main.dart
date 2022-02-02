import 'package:flutter/material.dart';
import 'radio_button.dart';
import 'chip_button.dart';

void main() {
  runApp(const MyApp());
}
//void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Learning',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home:  const CustomChipButton(label: 'John')
    );
  }
}
