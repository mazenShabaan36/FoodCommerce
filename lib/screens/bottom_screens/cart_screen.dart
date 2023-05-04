import 'dart:math';

import 'package:ecommerce/providers/cart.dart';
import 'package:ecommerce/providers/orders.dart';
import 'package:ecommerce/screens/detailed_screens/payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class MyCart extends StatefulWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  double total_price = 0;

  @override
  Widget build(BuildContext context) {
    final mycartProvider = Provider.of<orders>(context);
    final myListProvider = Provider.of<cart>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'My Cart',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.orange,
      ),
      body: Consumer2<cart, orders>(
        builder: (context, cart, order, child) {
          final item = cart.items;
          return Container(
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.65,
                  child: Padding(
                    padding: EdgeInsets.only(left: 3.0),
                    child: Container(
                      color: Colors.white,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              /*  Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    ProductDetail(Category_info: _popu[index]),
                              ),
                            );
                            */
                            },
                            child: Padding(
                              padding: EdgeInsets.all(10.5),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.50,
                                height:
                                    MediaQuery.of(context).size.height * 0.195,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.grey.shade300),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white,
                                        ),
                                        child: Image.asset(
                                          item[index].imageUrl,
                                          width: 80,
                                          height: 90,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.6,
                                              child: Text(
                                                item[index].title,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10.0),
                                              child: Container(
                                                width: 100,
                                                height: 29,
                                                decoration: BoxDecoration(
                                                    color: Colors.red.shade100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            18)),
                                                child: Center(
                                                  child: Text(
                                                    'Non veg',
                                                    style: TextStyle(
                                                        color:
                                                            Colors.red.shade800,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 8.0),
                                              child: Row(
                                                children: <Widget>[
                                                  Text(
                                                    "\$${item[index].price}",
                                                    style: TextStyle(
                                                        fontSize: 21,
                                                        fontWeight:
                                                            FontWeight.w800,
                                                        color: Colors.black),
                                                  ),
                                                  SizedBox(width: 45),
                                                  Container(
                                                    width: 40,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          Colors.grey.shade200,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              18),
                                                    ),
                                                    child: Center(
                                                      child: IconButton(
                                                          onPressed: () {
                                                            setState(() {
                                                              // item[index].count += 1;
                                                              //  item[index].price = count * price;
                                                              // print(count);
                                                              // print(price);
                                                            });
                                                          },
                                                          icon: Icon(
                                                            Icons.add,
                                                            color: Colors.green,
                                                          )),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 3,
                                                  ),
                                                  Text(
                                                    '${item[index].count}',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  Container(
                                                    width: 38,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          Colors.grey.shade200,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              18),
                                                    ),
                                                    child: Center(
                                                      child: IconButton(
                                                        onPressed: () {
                                                          setState(() {
                                                            //  count -= 1;
                                                            // newCost =
                                                            //   count * price;
                                                          });
                                                        },
                                                        icon: Icon(
                                                          Icons.remove,
                                                          color: Colors.red,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        itemCount: cart.itemCount,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Cart Total',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "\$ ${cart.totalAmount}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {
                            //  print(cart.items);

                            mycartProvider.addOrder(
                              "Ord#" + "${Random().nextInt(9000) + 100000}",
                              DateFormat('dd-MM-yyyy')
                                  .format(DateTime.now())
                                  .toString(),
                              "TRN#${Random().nextInt(9000) + 100000}",
                              "${cart.itemCount} items",
                              "\$${cart.totalAmount}",
                              "Delivered",
                            myListProvider.items);
                            // cart.items);
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Stepper_screen(),
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              'Checkout',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  letterSpacing: 1.2),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
