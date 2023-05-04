import 'package:ecommerce/screens/bottom_screens/cart_screen.dart';
import 'package:ecommerce/screens/bottom_screens/homeScreen.dart';
import 'package:ecommerce/screens/bottom_screens/notificatons_screen_bottom.dart';
import 'package:ecommerce/screens/bottom_screens/profile_screen.dart';
import 'package:ecommerce/screens/edit_profile_screens/orders/invoice.dart';
import 'package:ecommerce/widgets/categories_list.dart';
import 'package:ecommerce/widgets/customAppBar.dart';
import 'package:ecommerce/widgets/customDrawer.dart';
import 'package:ecommerce/widgets/most_popular.dart';
import 'package:ecommerce/widgets/recently_viewed.dart';
import 'package:ecommerce/widgets/restaurants.dart';
import 'package:ecommerce/widgets/scratch.dart';
import 'package:ecommerce/widgets/search.dart';
import 'package:flutter/material.dart';

class Nav_screen extends StatefulWidget {
  const Nav_screen({Key? key}) : super(key: key);

  @override
  State<Nav_screen> createState() => _Nav_screenState();
}

class _Nav_screenState extends State<Nav_screen> {
  final List<Widget> _screens = [
    homeScreen(),
    MyCart(),
    ProfileScreen(),
    Notify(),
   // Invoice(),
  ];
  int _currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
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
              title: SizedBox.shrink()
              ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 35,
              ),
           title: SizedBox.shrink()
           ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline_outlined,
                size: 35,
              ),
             title: SizedBox.shrink()
             ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications_none_outlined,
                size: 35,
              ),
              title: SizedBox.shrink()
           ),
        ],
      ),
      body: _screens[_currentTab],
      /* SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(height: 40),
            customAppBar(),
            SizedBox(
              height: 5,
            ),
            search(),
            SizedBox(
              height: 10,
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
              height: 20,
            ),
            Container(
              child: categoriesList(),
              height: MediaQuery.of(context).size.height * 0.24,
            ),
            SizedBox(
              height: 10,
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
      */
    );
  }
}
