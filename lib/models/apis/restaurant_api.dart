import 'dart:convert';
import 'package:ecommerce/models/apis/restaurant_model.dart';
import 'package:http/http.dart' as http;

class restaurantApi {
  /*
  const req = unirest("GET", "https://the-fork-the-spoon.p.rapidapi.com/food-report/list");

req.query({
	"id_restaurant": "522995",
	"locale": "en_US",
	"page": "1",
	"count": "10"
});

req.headers({
	"X-RapidAPI-Key": "f73c843594msh503bed3c79b206bp11071bjsn1190392bee05",
	"X-RapidAPI-Host": "the-fork-the-spoon.p.rapidapi.com",
	"useQueryString": true
});
  */

  static Future<List<restaurant>> getRestaurant() async {
    var uri = Uri.https(
      'the-fork-the-spoon.p.rapidapi.com',
      '/restaurants/v2/list',
      {"queryPlaceValueCityId": "348156", "pageSize": "10", "pageNumber": "1"},
    );
    final response = await http.get(uri, headers: {
      "X-RapidAPI-Key": "f73c843594msh503bed3c79b206bp11071bjsn1190392bee05",
      "X-RapidAPI-Host": "the-fork-the-spoon.p.rapidapi.com",
      "useQueryString": "true",
    });
    Map data = jsonDecode(response.body);
    List _temp = [];
    for (var i in data['data']) {
      _temp.add(i);
    }
    print(_temp);
    return restaurant.restaurantFromSnapshot(_temp);
  }
}
