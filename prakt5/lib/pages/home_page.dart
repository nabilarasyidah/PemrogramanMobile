import 'package:flutter/material.dart';
import 'package:prakt5/models/item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(image: ('assets/image/1.jpeg'), name: 'Kopi Kenangan Mantan', price: 25000, desc: 'Kopi susu dengan gula aren asli'),
    Item(image: ('assets/image/2.jpeg'), name: 'Matcha Latte', price: 21000, desc: 'Fresh milk dan high quality matcha powder'),
    Item(image: ('assets/image/3.jpeg'), name: 'Americano', price: 15000, desc: 'Espresso dan air mineral')
  ];

   HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kopi Kenangan'),
        backgroundColor: Color.fromARGB(174, 145, 11, 11),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: (){
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(child: Image.asset(
                        item.image,
                        height: 100,
                        width: 100,
                      )),
                      Expanded(child: Text(item.name, style: TextStyle(fontWeight: FontWeight.bold),)),
                      Expanded(child: Text(
                        item.price.toString(),
                        textAlign: TextAlign.end,
                      ),
                      )
                    ],
                  ),
                ),
              )
            );
          },
        ),
      ),
      
      );
    
  }
}
