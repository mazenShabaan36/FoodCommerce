import 'package:ecommerce/models/apis/restaurant_api.dart';
import 'package:ecommerce/models/apis/restaurant_model.dart';
import 'package:ecommerce/widgets/restaurant_card.dart';
import 'package:flutter/material.dart';

class restaurants_list extends StatefulWidget {
  const restaurants_list({Key? key}) : super(key: key);

  @override
  State<restaurants_list> createState() => _restaurants_listState();
}

class _restaurants_listState extends State<restaurants_list> {
  late List<restaurant> _restaurants;
  bool _isLoading = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getRestaurants();
  }

  Future<void> getRestaurants() async {
    _restaurants = await restaurantApi.getRestaurant();
    setState(() {
      _isLoading = false;
    });
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
                'Best restaurants',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'See all',
                style: TextStyle(
                    color: Colors.orange, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 240,
          width: double.infinity,
          child: _isLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemBuilder: (context, index) {
                    return restaurantCard(
                        title: _restaurants[index].title,
                        thumbnailUrl: _restaurants[index].imageUrl,
                        rating: _restaurants[index].rating,
                        priceRange: _restaurants[index].priceRange,
                        reviewCount: _restaurants[index].reviewCount);
                  },
                  itemCount: _restaurants.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.all(8),

                ),
        )
      ],
    );
  }
}
