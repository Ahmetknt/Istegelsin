import 'package:flutter/material.dart';
import 'package:istegelsin/items/addCategory.dart';
import 'package:istegelsin/view/EvBakim.dart';
import 'package:istegelsin/view/Kahvaltiliklar.dart';
import 'package:istegelsin/view/KisiselBakim.dart';
import 'package:istegelsin/view/MeyveSebze.dart';
import 'package:istegelsin/view/TemelGida.dart';

import 'Atistirmaliklar.dart';

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  var category = AddCategory.addCategory();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(child: Text("Anasayfa")),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.5),
        itemCount: category.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (category[index].id == 1) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Atistirmaliklar()));
              }
              if (category[index].id == 2) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Kahvaltiliklar()));
              }
              if (category[index].id == 3) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TemelGida()));
              }
              if (category[index].id == 4) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EvBakim()));
              }
              if (category[index].id == 5) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MeyveSebze()));
              }
              if (category[index].id == 6) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => KisiselBakim()));
              }
            },
            child: Card(
                child: Column(
              children: [
                Image.asset(category[index].image),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Text(
                    category[index].name,
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey),
                  ),
                )
              ],
            )),
          );
        },
      ),
    );
  }
}
