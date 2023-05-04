import 'package:ecommerce/widgets/categories_list.dart';
import 'package:ecommerce/widgets/customAppBar.dart';
import 'package:ecommerce/widgets/customDrawer.dart';
import 'package:ecommerce/widgets/most_popular.dart';
import 'package:ecommerce/widgets/recently_viewed.dart';
import 'package:ecommerce/widgets/restaurants.dart';
import 'package:ecommerce/widgets/scratch.dart';
import 'package:ecommerce/widgets/search.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int _currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      backgroundColor: Colors.white,
     /* bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.orange,
        elevation: 0,
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {
            _currentTab = value;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                size: 35,
              ),
              title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 35,
              ),

              title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline_outlined,
                size: 35,
              ),
              title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications_none_outlined,
                size: 35,
              ),
              title: SizedBox.shrink()),
        ],
      ),
      */
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).size.height*0.035),
            customAppBar(),
            SizedBox(
              height: MediaQuery.of(context).size.height *0.003125,
            ),
            search(),
            SizedBox(
              height: MediaQuery.of(context).size.height *0.00725,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: Colors.blue),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/advertis.jpg',
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width * 0.92,
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height *0.0125,
            ),
            Container(
              child: categoriesList(),
              height: MediaQuery.of(context).size.height * 0.24,
            ),
            SizedBox(
             height: MediaQuery.of(context).size.height *0.00625,
            ),
            Container(
              child: Most_popular(),
              height: MediaQuery.of(context).size.height * 0.35,
            ),
            Container(
              child: scratch(),
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Container(
              child: recently_viewed(),
              height: MediaQuery.of(context).size.height * 0.35,
            ),
            Container(
              child: restaurants_list(),
              height: MediaQuery.of(context).size.height * 0.45,
            ),
          ],
        ),
      ),
    );
  }
}
