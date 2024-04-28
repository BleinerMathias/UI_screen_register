import 'package:flutter/material.dart';
import 'package:screen_register/registerScreen/register_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercício Montagem GUI',
      home: RegisterScreen(),
    );
  }
}
