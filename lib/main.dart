import 'package:flutter/material.dart';
import 'package:flutter_app_first/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Hola Mundo',
        home: HomeScreen());
  }
}
