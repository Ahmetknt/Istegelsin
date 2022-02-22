class Food {
  late int adet;
  late String name;
  late String gram;
  late double price;
  late double totalPrice;
  late String image;

  Food(
      {required this.name,
      required this.gram,
      required this.price,
      required this.image});
  Food.adet(
      {required this.adet,
      required this.name,
      required this.gram,
      required this.price,
      required this.totalPrice,
      required this.image});
}
