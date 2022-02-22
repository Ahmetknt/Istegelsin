import 'package:istegelsin/model/Food.dart';

class AddEvBakim {
  Future<List<Food>> addEvBakim() async {
    var food = <Food>[];

    var f1 = Food.adet(
        adet: 1,
        name: "Dağ Esintisi",
        gram: "750 ml",
        price: 14.75,
        totalPrice: 14.75,
        image: "images/domestos.jpeg");
    var f2 = Food.adet(
        adet: 1,
        name: "Pembe Güç",
        gram: "750 ml",
        price: 14.75,
        totalPrice: 14.75,
        image: "images/pembedomestos.jpeg");
    var f3 = Food.adet(
        adet: 1,
        name: "ACE",
        gram: "750 ml",
        price: 14.55,
        totalPrice: 14.75,
        image: "images/ace.jpeg");
    var f4 = Food.adet(
        adet: 1,
        name: "Cif Krem Amonyaklı",
        gram: "750 ml",
        price: 25.80,
        totalPrice: 25.80,
        image: "images/cif.jpeg");
    var f5 = Food.adet(
        adet: 1,
        name: "Domestos Köpük",
        gram: "450 ml",
        price: 28.60,
        totalPrice: 28.60,
        image: "images/domestoskopuk.jpeg");
    var f6 = Food.adet(
        adet: 1,
        name: "Cif Sprey",
        gram: "750 ml",
        price: 22.20,
        totalPrice: 22.20,
        image: "images/cifsprey.jpeg");
    var f7 = Food.adet(
        adet: 1,
        name: "Mr Muscle Banyo",
        gram: "750 ml",
        price: 31.50,
        totalPrice: 31.50,
        image: "images/mrmuscle.jpeg");
    var f8 = Food.adet(
        adet: 1,
        name: "Lavabo Açıcı",
        gram: "2'li",
        price: 22.90,
        totalPrice: 22.90,
        image: "images/lavaboacici.jpeg");
    var f9 = Food.adet(
        adet: 1,
        name: "Temizlik Mendili",
        gram: "40 yaprak",
        price: 15.50,
        totalPrice: 15.50,
        image: "images/islaktemizlikmendili.jpeg");
    var f10 = Food.adet(
        adet: 1,
        name: "Temizlik Bezi",
        gram: "5'li",
        price: 28.70,
        totalPrice: 28.70,
        image: "images/temizlikbezi.jpeg");
    var f11 = Food.adet(
        adet: 1,
        name: "Parex Sünger",
        gram: "5!li",
        price: 26.50,
        totalPrice: 26.50,
        image: "images/sunger.jpeg");
    var f12 = Food.adet(
        adet: 1,
        name: "Omo Active Fresh",
        gram: "1.5 kg",
        price: 30.50,
        totalPrice: 30.50,
        image: "images/omo.jpeg");
    var f13 = Food.adet(
        adet: 1,
        name: "Ariel Parlak Renkler",
        gram: "5 kg",
        price: 49.99,
        totalPrice: 49.99,
        image: "images/ariel.jpeg");
    var f14 = Food.adet(
        adet: 1,
        name: "Tuvalet Kağıdı",
        gram: "4' lü",
        price: 25.80,
        totalPrice: 25.80,
        image: "images/tuvaletkagidi.jpeg");
    var f15 = Food.adet(
        adet: 1,
        name: "Activex Islak Mendil",
        gram: "56 yaprak",
        price: 9.45,
        totalPrice: 9.45,
        image: "images/islakmendil.jpeg");
    var f16 = Food.adet(
        adet: 1,
        name: "Fairy Limon",
        gram: "1350 ml",
        price: 21.40,
        totalPrice: 21.40,
        image: "images/fairy.jpeg");

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
