import 'package:flutter/material.dart';
import 'package:istegelsin/items/SepetList.dart';
import 'package:istegelsin/items/addKisiselBakim.dart';
import 'package:istegelsin/model/Food.dart';

import '../count.dart';
import 'Detay.dart';
import 'Sepet.dart';

class KisiselBakim extends StatefulWidget {
  @override
  _KisiselBakimState createState() => _KisiselBakimState();
}

class _KisiselBakimState extends State<KisiselBakim> {
  AddKisiselBakim food = AddKisiselBakim();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Kişisel Bakım"),
        ),
        body: FutureBuilder<List<Food>>(
          future: food.addKisiselBakim(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var foods = snapshot.data;
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 1 / 1.65),
                itemCount: foods!.length,
                itemBuilder: (context, index) {
                  var food = foods![index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Detay(food: food)));
                    },
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                          side: BorderSide(width: 1, color: Colors.blueGrey)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Image.asset(food.image),
                          ),
                          Text(
                            "\u{20BA}${food.price}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blueAccent,
                                fontSize: 16),
                          ),
                          Text(food.name,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18)),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            food.gram,
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                          Spacer(),
                          ElevatedButton(
                            onPressed: () {
                              Count.count += 1;
                              var s1 = Food.adet(
                                  adet: food.adet,
                                  name: food.name,
                                  gram: food.gram,
                                  price: food.price,
                                  totalPrice: food.totalPrice,
                                  image: food.image);
                              SepetList.sepet.add(s1);
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      backgroundColor: Colors.blueGrey,
                                      elevation: 15,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      title: Text(
                                        "İşlem Başarılı",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Colors.white),
                                      ),
                                      content: Text(
                                        "${food.name} Sepete Eklendi",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white),
                                      ),
                                      actions: [
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text("İptal"),
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.red),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) => Sepet(
                                                          adet: food.adet,
                                                          name: food.name,
                                                          price: food.price,
                                                          totalPrice:
                                                              food.totalPrice,
                                                          image: food.image,
                                                        )));
                                          },
                                          child: Text("Sepete Git"),
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.black45),
                                        ),
                                      ],
                                    );
                                  });
                            },
                            child: Container(
                              width: 105,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.shopping_cart),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("Sepete Ekle")
                                ],
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.deepOrange),
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            } else {
              return Center();
            }
          },
        ));
  }
}
