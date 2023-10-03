import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'package:prakt6/database/dbhelper.dart';
import 'package:prakt6/pages/entryform.dart';
import 'package:prakt6/models/item.dart';

//pendukung program asinkron

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  DbHelper dbHelper = DbHelper();
  int count = 0;
  List<Item> itemList = [];
 
  @override
  Widget build(BuildContext context) {
    itemList ??= <Item>[];

  return Scaffold(
    appBar: AppBar(
      title: const Text('Daftar Item'),
    ),
    body: Column(children : [
      Expanded(child: createListView(),),
      Container(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            child: const Text("Tambah Item"),
            onPressed: () async {
              var newItem = Item("", 0);
              var item = await navigateToEntryForm(context, newItem);
              
            //TODO 2 Panggil Fungsi untuk Insert ke DB
              int result = await dbHelper.insert(item);
              if (result > 0) {
                updateListView();
              }
                        },
          ),
        ),
      ),
    ]),
  );
}

Future<Item> navigateToEntryForm(BuildContext context, Item item) async {
  var result = await Navigator.push<Item>(
    context,
    MaterialPageRoute(
      builder: (BuildContext context) {
        return EntryForm(item);
      }
    )
  );
  return result!;
}

ListView createListView() {
  return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.red,
              child: Icon(Icons.ad_units),
            ),
            title: Text(itemList[index].name, style: const TextStyle(color: Colors.amber),),
            subtitle: Text(itemList[index].price.toString()),
            trailing: GestureDetector(
              child: const Icon(Icons.delete),
              onTap: ()async {
              //TODO 3 Panggil Fungsi untuk Delete dari DB berdasarkan Item
            },
          ),
          onTap: () async {
            var item = await navigateToEntryForm(context, itemList[index]);
            //TODO 4 Panggil Fungsi untuk Edit data
          },
        ),
      );
    },
  );
}
 //update List item
void updateListView() {
  final Future<Database> dbFuture = dbHelper.initDb();
  dbFuture.then((database) {
    //TODO 1 Select data dari DB
    Future<List<Item>> itemListFuture = dbHelper.getItemList();
    itemListFuture.then((itemList) {
      setState(() {
        this.itemList = itemList;
        count = itemList.length;
      });
    });
  });
 }

}