import 'package:flutter/material.dart';
import 'package:istegelsin/count.dart';
import 'package:istegelsin/items/SepetList.dart';
import 'package:istegelsin/view/Anasayfa.dart';
import 'package:istegelsin/view/Register.dart';

class Sepet extends StatefulWidget {
  late int adet;
  late String name;
  late double price;
  late double totalPrice;
  late String image;

  Sepet(
      {required this.adet,
      required this.name,
      required this.price,
      required this.totalPrice,
      required this.image});
  Sepet.empty();

  @override
  _SepetState createState() => _SepetState();
}

class _SepetState extends State<Sepet> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sepet"),
      ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: (MediaQuery.of(context).size.height) - 135,
            child: ListView.builder(
                itemCount: Count.count,
                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Dismissible(
                    key: UniqueKey(),
                    direction: DismissDirection.endToStart,
                    onDismissed: (DismissDirection direction) {
                      setState(() {
                        SepetList.sepet.removeAt(index);
                        Count.count -= 1;
                      });
                    },
                    background: Container(
                      color: Colors.red,
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                    ),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 100,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    SepetList.sepet[index].name,
                                    style: TextStyle(
                                      fontSize: 23,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    children: [
                                      FloatingActionButton.small(
                                        onPressed: () {
                                          setState(() {
                                            if (SepetList.sepet[index].adet >
                                                0) {
                                              SepetList.sepet[index].adet -= 1;
                                              SepetList.sepet[index]
                                                  .totalPrice = (SepetList
                                                              .sepet[index]
                                                              .price *
                                                          SepetList.sepet[index]
                                                              .adet *
                                                          100)
                                                      .floorToDouble() /
                                                  100;
                                            }
                                          });
                                        },
                                        child: Icon(Icons.remove),
                                        tooltip: "Çıkar",
                                        backgroundColor: Colors.deepOrange,
                                        foregroundColor: Colors.white,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          "${SepetList.sepet[index].adet}",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.deepOrange,
                                            elevation: 10,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15)),
                                            )),
                                      ),
                                      FloatingActionButton.small(
                                        onPressed: () {
                                          setState(() {
                                            SepetList.sepet[index].adet += 1;
                                            SepetList.sepet[index].totalPrice =
                                                (SepetList.sepet[index].price *
                                                            SepetList
                                                                .sepet[index]
                                                                .adet *
                                                            100)
                                                        .floorToDouble() /
                                                    100;
                                          });
                                        },
                                        child: Icon(Icons.add),
                                        tooltip: "Ekle",
                                        backgroundColor: Colors.deepOrange,
                                        foregroundColor: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "${SepetList.sepet[index].totalPrice}\u{20BA}",
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.deepOrange,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Spacer(),
                              Container(
                                color: Colors.blueGrey,
                                height: 100,
                                width: 2,
                              ),
                              Image.asset(SepetList.sepet[index].image)
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Toplam Tutar : ${totalPrice()}\u{20BA}",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        )),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      if (totalPrice() != 0.0) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor: Colors.blueGrey,
                                elevation: 15,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                title: Text(
                                  "Siparişiniz Alındı",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 27),
                                ),
                                content: Text(
                                  "Bizi tercih ettiğiniz için teşekkür ederiz.Siparişiniz belirttiğiniz ${Register.registerCustomerList[0].acikAdres}  açık adresinize 3 iş gününde teslim edilecektir.",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                actions: [
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Anasayfa()));
                                    },
                                    child: Text("Kapat"),
                                    style: ElevatedButton.styleFrom(
                                        elevation: 10,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                        ),
                                        primary: Colors.red),
                                  )
                                ],
                              );
                            });
                        //SepetList.sepet.removeRange(0, Count.count);
                      } else {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor: Colors.blueGrey,
                                elevation: 15,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                title: Center(
                                    child: Text(
                                  "Sepet Boş",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                )),
                                content: Text(
                                  "Lütfen sepete ürün ekleyin.",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                                actions: [
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("Kapat"),
                                    style: ElevatedButton.styleFrom(
                                        elevation: 10,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                        ),
                                        primary: Colors.red),
                                  )
                                ],
                              );
                            });
                      }
                    },
                    child: Text(
                      "Siparişi Onayla",
                      style: TextStyle(fontSize: 15),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        )),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  double totalPrice() {
    double totalPrice = 0;
    for (int i = 0; i < Count.count; i++) {
      totalPrice += SepetList.sepet[i].totalPrice;
    }
    totalPrice = (totalPrice * 100).floorToDouble() / 100;
    return totalPrice;
  }
}
