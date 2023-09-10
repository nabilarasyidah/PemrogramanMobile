import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[600],
        title: const Text('MyApp'),
      ),
      body: ListView(children: <Widget>[
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("FILM TERBARU", style: TextStyle(fontSize: 15)),
              Text("TAYANG HARI INI", style: TextStyle(fontSize: 15)),
            ],
          ),
        ),
        Stack(
          children: [
            Container(
              color: Color.fromARGB(255, 24, 114, 114),
              padding: const EdgeInsets.only(top: 260.0, left: 8.0),
              height: 300.0,
              width: 400.0,
              margin:
                  const EdgeInsets.all(8),
              child: const Text(
                "FILM",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              color: Colors.white,
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              height: 245.0,
              width: 400.0,
              margin:
                  const EdgeInsets.only(left: 13.0, right: 13.0, bottom: 20.0),
              child: const Text(
                "Elemental, Film Disney Terbaru",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              height: 200.0,
              width: 400.0,
              margin:
                  const EdgeInsets.only(left: 13.0, right: 13.0, bottom: 60.0),
              child: Image.network(
                  'https://i.pinimg.com/564x/e0/8e/81/e08e81d5951ed922adbbea15f1eb7aa4.jpg',
                  fit: BoxFit.fill,),
            ),
          ],
        ),
        const SizedBox(
          height: 10.0,
          width: 10.0,
        ),
        Column(
          children: [
            Row(
              children: [
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  margin: const EdgeInsets.only(left: 10.0),
                  child: Image.network(
                    'https://i.pinimg.com/564x/2a/31/96/2a3196b3647406f0ebd8806ddea32305.jpg',
                    height: 122.0,
                    fit: BoxFit.cover
                  ),
                ),
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(right: 10),
                  width: 300,
                  height: 124.0,
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Review Film 'Elemental: Forces of Nature'",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              padding: const EdgeInsets.only(top: 15.0, left: 10.0),
              height: 40.0,
              width: double.infinity,
              margin:
                  const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              child: const Text(
                "Rilis Juni 2023",
                style: TextStyle(fontSize: 15.0,),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10.0,
          width: 10.0,
        ),
        Column(
          children: [
            Row(
              children: [
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  margin: const EdgeInsets.only(left: 10.0),
                  child: Image.network(
                    'https://i.pinimg.com/564x/29/27/f6/2927f66a64dc4ac8750ac5db616a6241.jpg',
                    height: 122.0,
                    fit: BoxFit.cover
                  ),
                ),
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(right: 10.0),
                  width: 265,
                  height: 124.0,
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Review Film Cars 2",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              padding: const EdgeInsets.only(top: 15.0, left: 10.0),
              height: 50.0,
              width: double.infinity,
              margin:
                  const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              child: const Text(
                "Review Hari Ini",
                style: TextStyle(fontSize: 15.0),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10.0,
          width: 10.0,
        ),
        
          ],
        ),
      
      ),
    );
  }
}