class ListItems {
  ListItems({this.itemImage, this.itemName, this.itemPrice, this.measureType});

  final String itemImage;
  final String itemName;
  final String itemPrice;
  final String measureType;
}

List<ListItems> products = [
  ListItems(
    itemImage: 'assets/product1.jpg',
    itemName: 'Cauliflower',
    itemPrice: '1.85',
    measureType: 'kg',
  ),
  ListItems(
    itemImage: 'assets/product2.jpg',
    itemName: 'Savoy Cabbage',
    itemPrice: '1.45',
    measureType: 'kg',
  ),
  ListItems(
    itemImage: 'assets/product3.jpg',
    itemName: 'Boston Lettuce',
    itemPrice: '1.10',
    measureType: 'kg',
  ),
];
