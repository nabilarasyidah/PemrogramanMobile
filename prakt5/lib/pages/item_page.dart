import 'package:flutter/material.dart';
import 'package:prakt5/models/item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
  final Item itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
              Navigator.pop(context);
          },
            child: const Text('Go back!'),
        ),
      ),
    );
  }
}