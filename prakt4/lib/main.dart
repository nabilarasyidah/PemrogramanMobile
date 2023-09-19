import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Konverter Suhu"),),
          body: Container(
            child: Column(
              children: [
                Container(
            margin: const EdgeInsets.all(8),
            child: TextFormField(
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              decoration: const InputDecoration(
                labelText: "Masukkan Suhu Dalam"
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: const Text("Reamur"),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Container(

                ),
                Container(

                ),
              ],
            ),
          )
              ],
            ),
          )
          
          
          ),
    );
  }
}

