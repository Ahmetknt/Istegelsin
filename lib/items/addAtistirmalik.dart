import '../model/Food.dart';

class AddAtistirmalik {
  Future<List<Food>> addAtistirmalik() async {
    var food = <Food>[];
    var f1 = Food.adet(
        adet: 1,
        name: "Damak Antep Fıstıklı",
        gram: "60 gr",
        price: 12.34,
        totalPrice: 12.34,
        image: "images/damak.jpeg");
    var f2 = Food.adet(
        adet: 1,
        name: "Ülker Sütlü",
        gram: "60 gr",
        price: 6.97,
        totalPrice: 6.97,
        image: "images/ülkerçikolata.jpeg");
    var f3 = Food.adet(
        adet: 1,
        name: "Çikolatalı Gofret",
        gram: "36 gr",
        price: 2.29,
        totalPrice: 2.29,
        image: "images/ülkergofret.jpeg");
    var f4 = Food.adet(
        adet: 1,
        name: "Dido Çikolata",
        gram: "35 gr",
        price: 2.90,
        totalPrice: 2.90,
        image: "images/dido.jpeg");
    var f5 = Food.adet(
        adet: 1,
        name: "Lays Klasik",
        gram: "150 gr",
        price: 7.47,
        totalPrice: 7.47,
        image: "images/laysklasik.jpeg");
    var f6 = Food.adet(
        adet: 1,
        name: "Ruffles Ketçaplı",
        gram: "150 gr",
        price: 10.89,
        totalPrice: 10.89,
        image: "images/ruffles.jpeg");
    var f7 = Food.adet(
        adet: 1,
        name: "Ayçekirdeği",
        gram: "250 gr",
        price: 14.45,
        totalPrice: 14.45,
        image: "images/tadımçekirdek.jpeg");
    var f8 = Food.adet(
        adet: 1,
        name: "Tadım Antep Fıstığı",
        gram: "180 gr",
        price: 36.00,
        totalPrice: 36.00,
        image: "images/tadımantepfıstığı.jpeg");
    var f9 = Food.adet(
        adet: 1,
        name: "Dankek 8 Kek",
        gram: "55 gr",
        price: 2.80,
        totalPrice: 2.80,
        image: "images/dankek.jpeg");
    var f10 = Food.adet(
        adet: 1,
        name: "Olala Sufle Kek",
        gram: "70 gr",
        price: 5.75,
        totalPrice: 5.75,
        image: "images/olala.jpeg");

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
    print(food);
    return food;
  }
}
