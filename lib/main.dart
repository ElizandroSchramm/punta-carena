import 'package:flutter/material.dart';
import 'package:punta_carena/screens/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Punta Carena',
      theme: ThemeData(
        primaryColor: Colors.blueGrey
      ),
      home: Login(),
    );
  }
}

