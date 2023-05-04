import 'package:ecommerce/models/pop_model.dart';
import 'package:ecommerce/screens/detailed_screens/product_detail.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class my_WishList extends StatelessWidget {
  const my_WishList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<popular> _popu = [
      popular(
          title: 'Chicken hamburger with chicken',
          image_url: 'assets/chicken_burger.png',
          stars: 5,
          old_price: '12.00',
          new_price: '10.00'),
      popular(
          title: 'Chocolate marshmallow donut',
          image_url: 'assets/donut_marsh.png',
          stars: 1,
          old_price: '12.00',
          new_price: '10.00'),
      popular(
          title: 'Whole Roasted butter chicken with cheese',
          image_url: 'assets/chicken_whole.png',
          stars: 3,
          old_price: '12.00',
          new_price: '10.00'),
      popular(
          title: 'Candian spicy hot_dog with yellow sauce',
          image_url: 'assets/hot_dog.png',
          stars: 5,
          old_price: '12.00',
          new_price: '10.00'),
      popular(
          title: 'Rosemarry cake with chocolate added',
          image_url: 'assets/rossemarry.png',
          stars: 3,
          old_price: '12.00',
          new_price: '10.00'),
      popular(
          title: 'Sushi grilled with sea food',
          image_url: 'assets/sushi.png',
          stars: 2,
          old_price: '12.00',
          new_price: '10.00'),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'My Wishlist',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 3.0),
        child: Container(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          ProductDetail(Category_info: _popu[index]),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: MediaQuery.of(context).size.height * 0.17,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.grey.shade300),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Image.asset(
                              _popu[index].image_url,
                              width: 80,
                              height: 90,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  child: Text(
                                    _popu[index].title,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  //  mainAxisAlignment: MainAxisAlignment.start,
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  //mainAxisSize: MainAxisSize.max,
                                  // crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Container(
                                      width: 80,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: _popu[index].stars < 3
                                            ? Colors.red.shade100
                                            : _popu[index].stars < 5
                                                ? Colors.yellow.shade100
                                                : Colors.green.shade100,
                                      ),
                                      child: Center(
                                          child: Text(
                                        "${_popu[index].stars} out of 5",
                                        style: TextStyle(
                                            color: _popu[index].stars < 3
                                                ? Colors.red.shade800
                                                : _popu[index].stars < 5
                                                    ? Colors.yellow.shade800
                                                    : Colors.green.shade800,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      )),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '⭐️ ',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      '(${Random().nextInt(100)})',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      "\$${_popu[index].old_price}",
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          color: Colors.yellow.shade800,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 19),
                                    ),
                                    SizedBox(width: 12),
                                    Text(
                                      "\$${_popu[index].new_price}",
                                      style: TextStyle(
                                          fontSize: 21,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black),
                                    ),
                                    SizedBox(width: 45),
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Colors.white),
                                      child: Icon(
                                        Icons.shopping_cart_outlined,
                                        color: Colors.orange,
                                      ),
                                    )
                                  ],
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
            itemCount: _popu.length,
          ),
        ),
      ),
    );
  }
}
