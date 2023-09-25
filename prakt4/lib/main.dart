import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final double _inputUser = 0;
  double _kelvin = 0;
  double _reamor = 0;

  String resReamor = '0';
  String resKelvin = '0';

  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }
  


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Konverter Suhu"),),
          body: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(8),
                  child: TextFormField(
                    //controller: myController,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: const InputDecoration(
                      labelText: "Masukkan Suhu Dalam Celcius"
                    ),
                  ),
                ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.amber, width: 4),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 150,
                  height: 180,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: const Text("Suhu dalam Kelvin"),
                      ),
                      const SizedBox(height: 18),
                      Container(
                        child: Text(resKelvin, style: const TextStyle(fontSize: 30),),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.amber, width: 4),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  width: 150,
                  height: 180,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: const Text("Suhu dalam Reamur"),
                      ),
                      const SizedBox(height: 18),
                      Container(
                        child: Text(
                          resReamor, style: const TextStyle(fontSize: 30),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(6, 30, 6, 10),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(3))
            ),
            child: TextButton(
                    child: const Text(
                      "Konversi Suhu",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      String getInput = myController.text;
                      if (getInput.isNotEmpty) {
                        double celcius = double.parse(getInput);
                        // celcius to kelvin
                        _kelvin = celcius + 273;

                        // celcius to reamor
                        _reamor = 4 / 5 * celcius;

                        setState(() {
                          resReamor = _reamor.toStringAsFixed(1);
                          resKelvin = _kelvin.toStringAsFixed(1);
                          // to delete the input
                          myController.text = "";
                        });
                      } else {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text("Input is empty"),
                                content:
                                    const Text("Please enter a temperatire value"),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text("OK"))
                                ],
                              );
                            });
                      }
                    },
                  ),
                

                ),
              ],
            ),
          )
              
            ),
          );
          
          
          
    
  }
}

