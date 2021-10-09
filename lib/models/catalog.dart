class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "iPhone 13 Pro",
        desc: "Apple iPhone 13th generation",
        price: 1299,
        color: "#33505a",
        image: "https://img1.ibay.com.mv/is1/full/2021/09/item_3569253_971.jpg")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final int price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
