import 'package:ecommerce/models/pop_model.dart';
import 'package:ecommerce/screens/see_all/gridViewProduct.dart';
import 'package:ecommerce/screens/see_all/products_all.dart';
import 'package:flutter/material.dart';

class Most_popular extends StatefulWidget {
  const Most_popular({Key? key}) : super(key: key);

  @override
  State<Most_popular> createState() => _Most_popularState();
}

class _Most_popularState extends State<Most_popular> {
  final List<popular> popu = [
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
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Most popular',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => gridView_products(),
                    ),
                  );
                },
                child: Text(
                  'See all',
                  style: TextStyle(
                      color: Colors.orange, fontWeight: FontWeight.w600),
                ),
              ),
            ]),
        SizedBox(
          height: 205,
          width: double.infinity,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: MediaQuery.of(context).size.height * 0.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      color: Colors.grey.shade200),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 3,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    popu[index].isFavourite =
                                        !popu[index].isFavourite;
                                  });
                                },
                                child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        shape: BoxShape.rectangle),
                                    child: Icon(
                                      !popu[index].isFavourite
                                          ? Icons.favorite_border_outlined
                                          : Icons.favorite_sharp,
                                      color: !popu[index].isFavourite
                                          ? Colors.black
                                          : Colors.red,
                                      size: 30,
                                    )),
                              ),
                              ),
                        ),
                        Container(
                          height: 60,
                          child: Card(
                            elevation: 0,
                            color: Colors.transparent,
                            child: Image.asset(
                              popu[index].image_url,
                              fit: BoxFit.fill,
                              height: 150,
                              width: 100,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "    ${popu[index].title}",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            _buildRatingsStars(popu[index].stars),
                            Text(popu[index].stars.toString())
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "\$${popu[index].old_price}",
                                style: TextStyle(
                                    color: Colors.yellow.shade700,
                                    decoration: TextDecoration.lineThrough,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              ),
                              SizedBox(
                                width: 54,
                              ),
                              Text(
                                "\$${popu[index].new_price}",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 14),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
            itemCount: popu.length,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
          ),
        ),
      ],
    );
  }
}
