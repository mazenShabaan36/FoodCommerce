import 'package:ecommerce/models/pop_model.dart';
import 'package:ecommerce/screens/detailed_screens/product_detail.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class gridView_products extends StatefulWidget {
  const gridView_products({Key? key}) : super(key: key);

  @override
  _gridView_productsState createState() => _gridView_productsState();
}

class _gridView_productsState extends State<gridView_products> {
  Text _buildRatingsStars(int rating) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += "⭐️ ";
    }
    for (int i = 0; i < 5 - rating; i++) {
      stars += "★ ";
    }
    stars.trim();
    return Text(stars);
  }

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
            'Grid view Products',
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
          child: GridView.builder(
            gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 10,
                mainAxisExtent: 232,
                mainAxisSpacing: 10),
            itemBuilder: (context, index) {
              return GestureDetector(
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
                   // width: MediaQuery.of(context).size.width * 0.75,
                    height: MediaQuery.of(context).size.height * 0.42,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.grey.shade300),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                             SizedBox(
                          height: 3,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _popu[index].isFavourite =
                                        !_popu[index].isFavourite;
                                  });
                                },
                                child: Container(
                                    height: 25,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.rectangle),
                                    child: Icon(
                                      !_popu[index].isFavourite
                                          ? Icons.favorite_border_outlined
                                          : Icons.favorite_sharp,
                                      color: !_popu[index].isFavourite
                                          ? Colors.black
                                          : Colors.red,
                                      size: 25,
                                    ),
                                    ),
                              ),
                              ),
                        ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.transparent,
                            ),
                            child: Image.asset(
                              _popu[index].image_url,
                              width: 80,
                              height: 80,
                            ),
                          ),
                         
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                             
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width ,
                                    //  height: 20,
                                  child: Text(
                                    _popu[index].title,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  //  mainAxisAlignment: MainAxisAlignment.start,
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  //mainAxisSize: MainAxisSize.max,
                                  // crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    _buildRatingsStars(_popu[index].stars),
                                    Text(
                                      '(${Random().nextInt(100)})',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 11,
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
                                          fontSize: 15),
                                    ),
                                    SizedBox(width: 30),
                                    Text(
                                      "\$${_popu[index].new_price}",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black),
                                    ),
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
