import 'package:istegelsin/model/Food.dart';

class AddMeyveSebze {
  Future<List<Food>> addMeyveSebze() async {
    var food = <Food>[];

    var f1 = Food.adet(
        adet: 1,
        name: "İthal Muz",
        gram: "600 gr",
        price: 24.58,
        totalPrice: 24.58,
        image: "images/muz.jpeg");
    var f2 = Food.adet(
        adet: 1,
        name: "Kırkağaç Kavunu",
        gram: "2-3 kg",
        price: 7.56,
        totalPrice: 7.56,
        image: "images/kavun.jpeg");
    var f3 = Food.adet(
        adet: 1,
        name: "Mandalina",
        gram: "1 Kg",
        price: 16.75,
        totalPrice: 16.75,
        image: "images/mandalina.jpeg");
    var f4 = Food.adet(
        adet: 1,
        name: "Portakal",
        gram: "1 Kg",
        price: 11.15,
        totalPrice: 11.15,
        image: "images/portakal.jpeg");
    var f5 = Food.adet(
        adet: 1,
        name: "Üzüm",
        gram: "500 gr",
        price: 6.31,
        totalPrice: 6.31,
        image: "images/uzum.jpeg");
    var f6 = Food.adet(
        adet: 1,
        name: "Golden Elma",
        gram: "1 Kg",
        price: 10.30,
        totalPrice: 10.30,
        image: "images/goldenelma.jpeg");
    var f7 = Food.adet(
        adet: 1,
        name: "Kırmızı Elma",
        gram: "1 Kg",
        price: 10.30,
        totalPrice: 10.30,
        image: "images/kirmizielma.jpeg");
    var f8 = Food.adet(
        adet: 1,
        name: "Ananas",
        gram: "1 adet",
        price: 31.75,
        totalPrice: 31.75,
        image: "images/ananas.jpeg");
    var f9 = Food.adet(
        adet: 1,
        name: "Limon",
        gram: "1 kg",
        price: 8.85,
        totalPrice: 8.85,
        image: "images/limon.jpeg");
    var f10 = Food.adet(
        adet: 1,
        name: "Domates",
        gram: "1 kg",
        price: 22.56,
        totalPrice: 22.56,
        image: "images/domates.jpeg");
    var f11 = Food.adet(
        adet: 1,
        name: "Salkım Domates",
        gram: "600 gr",
        price: 18.66,
        totalPrice: 18.66,
        image: "images/salkimdomates.jpeg");
    var f12 = Food.adet(
        adet: 1,
        name: "Sivri Biber",
        gram: "250 gr",
        price: 7.20,
        totalPrice: 7.20,
        image: "images/sivribiber.png");
    var f13 = Food.adet(
        adet: 1,
        name: "Kapya Biber",
        gram: "500 gr",
        price: 14.0,
        totalPrice: 14.0,
        image: "images/kapyabiber.jpeg");
    var f14 = Food.adet(
        adet: 1,
        name: "Kuru Soğan",
        gram: "2 kg",
        price: 11.18,
        totalPrice: 11.18,
        image: "images/soğan.jpeg");
    var f15 = Food.adet(
        adet: 1,
        name: "Sarımsak",
        gram: "250 gr",
        price: 6.50,
        totalPrice: 6.50,
        image: "images/sarimsak.jpeg");
    var f16 = Food.adet(
        adet: 1,
        name: "Patlıcan",
        gram: "1 kg",
        price: 26.09,
        totalPrice: 26.09,
        image: "images/patlican.jpeg");

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
