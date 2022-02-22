import 'package:istegelsin/model/Category.dart';

class AddCategory {
  static List<Category> addCategory() {
    var category = <Category>[];

    var c1 = Category(
        id: 1, name: "Atıştırmalık", image: "images/atistirmalik.jpeg");
    var c2 =
        Category(id: 2, name: "Kahvaltılık", image: "images/kahvaltilik.jpeg");
    var c3 =
        Category(id: 3, name: "Temel Gıda", image: "images/temelgida.jpeg");
    var c4 = Category(id: 4, name: "Ev Bakım", image: "images/evbakim.jpeg");
    var c5 =
        Category(id: 5, name: "Meyve & Sebze", image: "images/meyvesebze.jpeg");
    var c6 = Category(
        id: 6, name: "Kişisel Bakım", image: "images/kisiselbakim.jpeg");

    category.add(c1);
    category.add(c2);
    category.add(c3);
    category.add(c4);
    category.add(c5);
    category.add(c6);

    return category;
  }
}
