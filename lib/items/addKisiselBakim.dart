import 'package:istegelsin/model/Food.dart';

class AddKisiselBakim {
  Future<List<Food>> addKisiselBakim() async {
    var food = <Food>[];

    var f1 = Food.adet(
        adet: 1,
        name: "Colgate Max White",
        gram: "75 ml",
        price: 22.50,
        totalPrice: 22.50,
        image: "images/colgate.jpeg");
    var f2 = Food.adet(
        adet: 1,
        name: "Colgate Rahatlama",
        gram: "75 ml",
        price: 90.50,
        totalPrice: 90.50,
        image: "images/colgateferah.jpeg");
    var f3 = Food.adet(
        adet: 1,
        name: "Sendodyne Onarım",
        gram: "75 ml",
        price: 69.90,
        totalPrice: 69.90,
        image: "images/sensodyne.jpeg");
    var f4 = Food.adet(
        adet: 1,
        name: "Nane Ferahlığı",
        gram: "250 ml",
        price: 32.50,
        totalPrice: 32.50,
        image: "images/colgateplax.jpeg");
    var f5 = Food.adet(
        adet: 1,
        name: "Listerine Cool Mint",
        gram: "500 ml",
        price: 40.0,
        totalPrice: 40.0,
        image: "images/listerine.jpeg");
    var f6 = Food.adet(
        adet: 1,
        name: "Sensodyne Diş İpi",
        gram: "30 m",
        price: 22.20,
        totalPrice: 22.20,
        image: "images/disipi.jpeg");
    var f7 = Food.adet(
        adet: 1,
        name: "Clear Men",
        gram: "600 ml",
        price: 41.80,
        totalPrice: 41.80,
        image: "images/clear.jpeg");
    var f8 = Food.adet(
        adet: 1,
        name: "Head & Shoulders",
        gram: "350 ml",
        price: 45.90,
        totalPrice: 45.90,
        image: "images/headshoulders.jpeg");
    var f9 = Food.adet(
        adet: 1,
        name: "Pantene Saç Kremi",
        gram: "200 ml",
        price: 57.90,
        totalPrice: 57.90,
        image: "images/pantane.jpeg");
    var f10 = Food.adet(
        adet: 1,
        name: "Duş Jeli",
        gram: "250 ml",
        price: 22.70,
        totalPrice: 22.70,
        image: "images/dusjeli.jpeg");
    var f11 = Food.adet(
        adet: 1,
        name: "Spor Duş Jeli",
        gram: "500ml",
        price: 36.90,
        totalPrice: 36.90,
        image: "images/spordusjeli.jpeg");
    var f12 = Food.adet(
        adet: 1,
        name: "Krem Sıvı Sabun",
        gram: "300 ml",
        price: 30.50,
        totalPrice: 30.50,
        image: "images/sivisabun.jpeg");
    var f13 = Food.adet(
        adet: 1,
        name: "Bitkisel Kalıp Sabun",
        gram: "4 x 70 g",
        price: 18.95,
        totalPrice: 18.95,
        image: "images/kalipsabun.jpeg");
    var f14 = Food.adet(
        adet: 1,
        name: "Evony Maske",
        gram: "50'li",
        price: 40,
        totalPrice: 40,
        image: "images/maske.jpeg");
    var f15 = Food.adet(
        adet: 1,
        name: "Activex Islak Mendil",
        gram: "56 yaprak",
        price: 9.45,
        totalPrice: 9.45,
        image: "images/islakmendil.jpeg");
    var f16 = Food.adet(
        adet: 1,
        name: "Antibakteriyel Jel",
        gram: "250 ml",
        price: 12.40,
        totalPrice: 12.40,
        image: "images/antibakteriyeljel.jpeg");

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
    food.add(f11);
    food.add(f12);
    food.add(f13);
    food.add(f14);
    food.add(f15);
    food.add(f16);

    return food;
  }
}
