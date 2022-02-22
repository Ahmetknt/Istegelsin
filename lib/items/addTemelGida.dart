import '../model/Food.dart';

class AddTemelGida {
  Future<List<Food>> addTemelGida() async {
    var food = <Food>[];
    var f1 = Food.adet(
        adet: 1,
        name: "Ankara Makarna",
        gram: "500 gr",
        price: 7.35,
        totalPrice: 7.35,
        image: "images/ankaramakarna.jpeg");
    var f2 = Food.adet(
        adet: 1,
        name: "Çubuk Makarna",
        gram: "500 gr",
        price: 7.56,
        totalPrice: 7.56,
        image: "images/cubukmakarna.jpeg");
    var f3 = Food.adet(
        adet: 1,
        name: "Yayla Yerli Pirinç",
        gram: "2 Kg",
        price: 46.45,
        totalPrice: 46.45,
        image: "images/yaylapirinc.jpeg");
    var f4 = Food.adet(
        adet: 1,
        name: "Duru Pilavlık Bulgur",
        gram: "1 Kg",
        price: 18.40,
        totalPrice: 18.40,
        image: "images/bulgur.jpeg");
    var f5 = Food.adet(
        adet: 1,
        name: "Yerli Nohut",
        gram: "1 Kg",
        price: 24.50,
        totalPrice: 24.50,
        image: "images/nohut.jpeg");
    var f6 = Food.adet(
        adet: 1,
        name: "Kırmızı Mercimek",
        gram: "1 Kg",
        price: 24.65,
        totalPrice: 24.65,
        image: "images/kirmizimercimek.jpeg");
    var f7 = Food.adet(
        adet: 1,
        name: "Yeşil Mercimek",
        gram: "1 Kg",
        price: 35.50,
        totalPrice: 35.50,
        image: "images/yesilmercimek.jpeg");
    var f8 = Food.adet(
        adet: 1,
        name: "Dermason Fasulye",
        gram: "1 Kg",
        price: 31.75,
        totalPrice: 31.75,
        image: "images/fasulye.jpeg");
    var f9 = Food.adet(
        adet: 1,
        name: "Biber Salçası",
        gram: "550 gr",
        price: 18.36,
        totalPrice: 18.36,
        image: "images/bibersalcasi.jpeg");
    var f10 = Food.adet(
        adet: 1,
        name: "Domates Salçası",
        gram: "830 gr",
        price: 16.45,
        totalPrice: 16.45,
        image: "images/domatessalcasi.jpeg");
    var f11 = Food.adet(
        adet: 1,
        name: "Ketçap",
        gram: "460 gr",
        price: 21.70,
        totalPrice: 21.70,
        image: "images/ketcap.jpeg");
    var f12 = Food.adet(
        adet: 1,
        name: "Söke Un",
        gram: "1 Kg",
        price: 17.0,
        totalPrice: 17.0,
        image: "images/un.jpeg");
    var f13 = Food.adet(
        adet: 1,
        name: "Sunar Mısır Yağı",
        gram: "2 L",
        price: 65.40,
        totalPrice: 65.40,
        image: "images/mısıryagi.jpeg");
    var f14 = Food.adet(
        adet: 1,
        name: "Yudum Zeytinyağı",
        gram: "1 L",
        price: 85.60,
        totalPrice: 85.60,
        image: "images/zeytinyagi.jpeg");
    var f15 = Food.adet(
        adet: 1,
        name: "Toz Şeker",
        gram: "1 kg",
        price: 13.50,
        totalPrice: 13.50,
        image: "images/tozseker.jpeg");
    var f16 = Food.adet(
        adet: 1,
        name: "Billur Tuz",
        gram: "750 gr",
        price: 9.55,
        totalPrice: 9.55,
        image: "images/billurtuz.jpeg");

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
