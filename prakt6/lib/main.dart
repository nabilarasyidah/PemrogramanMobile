import 'package:flutter/material.dart';
import 'package:prakt6/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Tambahkan Item',
      theme: ThemeData(
      primarySwatch: Colors.blueGrey,
      ),
      home:const Home(),
    );
  }
}

