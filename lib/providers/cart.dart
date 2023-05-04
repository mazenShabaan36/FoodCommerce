import 'package:flutter/cupertino.dart';

class cartItem {
  final String id;
  final String title;
  final String imageUrl;
  final double price;
  final double count;
  cartItem(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.price,
      required this.count});
}

class cart with ChangeNotifier {
  List<cartItem> _items = [];
  //int counter = 0;

  List<cartItem> get items {
    return [..._items];
  }

  int get itemCount {
    return _items.length;
  }

  double get totalAmount {
    double total = _items.fold(
        0, (previousValue, element) => previousValue + element.price);
    return total;
  }

  void addItem(String productId, double price, String imageUrl, String title,
      double count) {
    _items.add(cartItem(
        id: productId,
        title: title,
        imageUrl: imageUrl,
        price: price,
        count: count));
    print(_items[0].price);
    notifyListeners();
  }
}
