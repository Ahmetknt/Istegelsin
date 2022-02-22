import 'package:istegelsin/model/Food.dart';

class AddKahvaltilik {
  Future<List<Food>> addKahvaltilik() async {
    var food = <Food>[];

    var f1 = Food.adet(
        adet: 1,
        name: "Büyük Boy Yumurta",
        gram: "30'lu",
        price: 33.50,
        totalPrice: 33.50,
        image: "images/yumurta.jpeg");
    var f2 = Food.adet(
        adet: 1,
        name: "Şahin Sucuk",
        gram: "180 gr",
        price: 60.40,
        totalPrice: 60.40,
        image: "images/sahinsucuk.jpeg");
    var f3 = Food.adet(
        adet: 1,
        name: "Pastırma",
        gram: "130 gr",
        price: 60.00,
        totalPrice: 60.00,
        image: "images/pastırma.jpeg");
    var f4 = Food.adet(
        adet: 1,
        name: "Zeytin",
        gram: "400 gr",
        price: 25.80,
        totalPrice: 25.80,
        image: "images/zeytin.jpeg");
    var f5 = Food.adet(
        adet: 1,
        name: "Balparmak",
        gram: "150 gr",
        price: 7.47,
        totalPrice: 7.47,
        image: "images/balparmak.png");
    var f6 = Food.adet(
        adet: 1,
        name: "Tahin Pekmez",
        gram: "150 gr",
        price: 10.89,
        totalPrice: 10.89,
        image: "images/tahinpekmez.jpeg");
    var f7 = Food.adet(
        adet: 1,
        name: "Nutella",
        gram: "250 gr",
        price: 14.45,
        totalPrice: 14.45,
        image: "images/nutella.jpeg");
    var f8 = Food.adet(
        adet: 1,
        name: "Vişne Reçeli",
        gram: "180 gr",
        price: 36.00,
        totalPrice: 36.00,
        image: "images/visnereceli.png");
    var f9 = Food.adet(
        adet: 1,
        name: "Coco Pops",
        gram: "450 gr",
        price: 15.50,
        totalPrice: 15.50,
        image: "images/cocopops.jpeg");
    var f10 = Food.adet(
        adet: 1,
        name: "Çizik Yeşil Zeytin",
        gram: "400 gr",
        price: 18.20,
        totalPrice: 18.20,
        image: "images/cizikyesil.jpeg");

    food.add(f1);
    food.add(f2);
    food.add(f3);
    food.add(f4);
    food.add(f5);
    food.add(f6);
    food.add(f7);
    food.add(f8);
    food.add(f9);
    food.add(f10);
    return food;
  }
}
