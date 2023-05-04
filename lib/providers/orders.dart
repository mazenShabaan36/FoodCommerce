import 'package:ecommerce/providers/cart.dart';
import 'package:flutter/cupertino.dart';

class order {
  final String OrderId;
  final String OrderDate;
  final String trackNumber;
  final String quantity;
  final String total;
  final String typeOf;
  final List<cartItem> items;
  //final String cartId;

  order({
    required this.OrderId,
    required this.OrderDate,
    required this.trackNumber,
    required this.quantity,
    required this.total,
    required this.typeOf,
    required this.items,
    //required this.cartId,
    // required this.cartItem,
  });
}

class orders with ChangeNotifier {
  Map<String, order> _order = {
    /* "0": order(
      OrderId: "ORD#647388",
      OrderDate: "20-02-2023",
      trackNumber: "TRN#748854",
      quantity: "3 items",
      total: "\$177.0",
      typeOf: "Packing",
      //cartId:
    )
    */
  };
  Map<String, order> get elements {
    return {..._order};
  }

  int get itemCount {
    return _order.length;
  }

  /*double get totalAmount {
    double total = _items[0].total;
    return total;
  }
  */
  void addOrder(String id, String date, String trackNumber, String quantity,
      String total, String type,List<cartItem> itemsCart) {
    _order["${_order.length}"]=
    order(
            OrderId: id,
            OrderDate: date,
            trackNumber: trackNumber,
            quantity: quantity,
            total: total,
            typeOf: type,
            items:itemsCart);
    print(_order[0]);
    notifyListeners();
  }
}
