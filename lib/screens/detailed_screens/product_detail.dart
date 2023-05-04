import 'dart:math';

import 'package:ecommerce/models/category_model.dart';
import 'package:ecommerce/models/ingerdients_model.dart';
import 'package:ecommerce/models/pop_model.dart';
import 'package:ecommerce/providers/cart.dart';
import 'package:ecommerce/screens/detailed_screens/customer_reviews.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetail extends StatefulWidget {
  final popular Category_info;
  ProductDetail({required this.Category_info});
  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  bool _isFavourite = true;
  List<ingerdient> ingerdients = [
    ingerdient(title: 'Bread', photo: 'assets/bread.png'),
    ingerdient(title: 'Tomato', photo: 'assets/tomato.png'),
    ingerdient(title: 'Milk', photo: 'assets/milk.png'),
    ingerdient(title: 'Salt', photo: 'assets/salt.png'),
    ingerdient(title: 'Rice', photo: 'assets/rice.png')
  ];
  List<cartItem> _cart_items = [];
  double count = 1;
  double newCost = 0;
  @override
  Widget build(BuildContext context) {
    double price = double.parse(widget.Category_info.new_price);
    final myDataProvider = Provider.of<cart>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Product Details',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.orange,
      ),
      body: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => customer_reviews(),
            ),
          );
        },
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                color: Colors.grey.shade300,
                child: Center(
                  child: CircleAvatar(
                    radius: 91,
                    backgroundColor: Colors.orange.shade300,
                    child: Image.asset(
                      widget.Category_info.image_url,
                      height: 100,
                      width: 200,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.59,
                child: ListView(
                  children: [
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  child: Text(
                                    widget.Category_info.title,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text('⭐️ '),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  widget.Category_info.stars.toString(),
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  '(${Random().nextInt(100)})',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  height: 35,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey.shade200,
                                  ),
                                  child: Center(
                                    child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _isFavourite = !_isFavourite;
                                        });
                                      },
                                      icon: _isFavourite
                                          ? Icon(Icons.favorite_border_outlined)
                                          : Icon(
                                              Icons.favorite,
                                              color: Colors.red,
                                            ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Container(
                              width: 120,
                              height: 29,
                              decoration: BoxDecoration(
                                  color: Colors.red.shade100,
                                  borderRadius: BorderRadius.circular(18)),
                              child: Center(
                                child: Text(
                                  'Non veg',
                                  style: TextStyle(
                                      color: Colors.red.shade800,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Ingerdients',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.18,
                                  child: ListView.builder(
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 40,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Colors.grey.shade300),
                                          child: Column(
                                            children: <Widget>[
                                              Image.asset(
                                                ingerdients[index].photo,
                                                height: 90,
                                                width: 90,
                                              ),
                                              Text(
                                                ingerdients[index].title,
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                    itemCount: 5,
                                    scrollDirection: Axis.horizontal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Price',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      "\$${widget.Category_info.old_price}",
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          color: Colors.yellow.shade800,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 19),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      count == 1
                                          ? "\$${widget.Category_info.new_price}"
                                          : "\$${newCost}",
                                      style: TextStyle(
                                          //decoration: TextDecoration.lineThrough,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 21),
                                    ),
                                    SizedBox(
                                      width: 76,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade200,
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                      child: Center(
                                        child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                count += 1;
                                                newCost = count * price;
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
                                      '$count',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade200,
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                      child: Center(
                                        child: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              count -= 1;
                                              newCost = count * price;
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
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 17.0),
                            child: Text(
                              'Description',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(height: 13),
                          Padding(
                            padding: EdgeInsets.only(left: 17.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Text(
                                'It is a long established fact that the reader will be distracted by the readable content of a page when looking at its layout ',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      //  width: MediaQuery.of(context).size.width * 0.1,
                      child: ElevatedButton(
                        onPressed: () {
                          myDataProvider.addItem(
                              widget.Category_info.title,
                              newCost,
                              widget.Category_info.image_url,
                              widget.Category_info.title,
                              count);

                          print(cart().items);
                        },
                        child: Text(
                          'Add to Cart',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
