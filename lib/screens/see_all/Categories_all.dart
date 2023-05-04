import 'package:ecommerce/models/category_model.dart';
import 'package:ecommerce/screens/see_all/products_all.dart';
import 'package:flutter/material.dart';

class Categories_all extends StatelessWidget {
  const Categories_all({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<category> _categories = [
      category(title: 'Burger', imageUrl: 'assets/burger.png'),
      category(title: 'Cake', imageUrl: 'assets/cake.png'),
      category(title: 'Donut', imageUrl: 'assets/donut.png'),
      category(title: 'Noodles', imageUrl: 'assets/noodles.png'),
      category(title: 'Pizza', imageUrl: 'assets/pizza.png'),
      category(title: 'Sushi', imageUrl: 'assets/sushi.png'),
      category(title: 'Chicken', imageUrl: 'assets/chicken_whole.png'),
      category(title: 'Hot dog', imageUrl: 'assets/hot_dog.png'),
      category(title: 'Rossemarry', imageUrl: 'assets/rossemarry.png'),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'All Categories',
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
        padding:  EdgeInsets.all(12.0),
        child: Container(
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
               // maxCrossAxisExtent: 200,
               crossAxisCount: 3,
                childAspectRatio: 0.8,
                crossAxisSpacing: 20,
                mainAxisSpacing: 30,
              ),
              itemCount: _categories.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: (){
                     Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => products_all(),
                    ),
                  );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    // color: Colors.grey.shade400,
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 85,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(_categories[index].imageUrl),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(_categories[index].title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                        ),)
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
