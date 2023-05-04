import 'package:ecommerce/models/category_model.dart';
import 'package:ecommerce/screens/see_all/Categories_all.dart';
import 'package:flutter/material.dart';

class categoriesList extends StatefulWidget {
  const categoriesList({Key? key}) : super(key: key);

  @override
  State<categoriesList> createState() => _categoriesListState();
}

class _categoriesListState extends State<categoriesList> {
  final List<category> categories = [
    category(title: 'Burger', imageUrl: 'assets/burger.png'),
    category(title: 'Cake', imageUrl: 'assets/cake.png'),
    category(title: 'Donut', imageUrl: 'assets/donut.png'),
    category(title: 'Noodles', imageUrl: 'assets/noodles.png'),
    category(title: 'Pizza', imageUrl: 'assets/pizza.png'),
    category(title: 'Sushi', imageUrl: 'assets/sushi.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'Categories',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Categories_all(),
                  ),
                );
              },
              child: Text(
                'See all',
                style: TextStyle(
                    color: Colors.orange, fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  //height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.25,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black12,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(500)),
                    color: Colors.white,
                    //shape: BoxShape.circle
                  ),

                  // color: Colors.white,
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 22,
                        ),
                        Container(
                          height: 52,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.shade300,
                          ),
                          child: Card(
                            elevation: 0,
                            color: Colors.transparent,
                            child: Image.asset(
                              categories[index].imageUrl,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          categories[index].title,
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
          ),
        ),
      ],
    );
  }
}
