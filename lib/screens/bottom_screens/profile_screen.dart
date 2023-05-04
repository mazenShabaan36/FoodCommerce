import 'package:ecommerce/screens/edit_profile_screens/My_wishList.dart';
import 'package:ecommerce/screens/edit_profile_screens/settings_screens/edit_profile.dart';
import 'package:ecommerce/screens/edit_profile_screens/myWallet.dart';
import 'package:ecommerce/screens/edit_profile_screens/orders/my_orders.dart';
import 'package:ecommerce/screens/edit_profile_screens/settings_screens/language_choice.dart';
import 'package:ecommerce/screens/edit_profile_screens/settings_screens/settings.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

Widget _profile_builder(BuildContext context, String text, Icon icon) {
  return Padding(
    padding: EdgeInsets.only(top: 10.0, left: 8.0, right: 8.0, bottom: 9.0),
    child: Container(
      width: MediaQuery.of(context).size.width * 0.95,
      height: MediaQuery.of(context).size.height * 0.08,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.shade300,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //  crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: icon,
            ),
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w700, letterSpacing: 1.2),
          ),
          /* SizedBox(
              width: 128,
            ),
            */
          Container(
            child: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.grey.shade700,
              size: 30,
            ),
          )
        ],
      ),
    ),
  );
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'My Profile',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding:
                  EdgeInsets.only(left: 10, top: 18.0, right: 10, bottom: 10),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.19,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: LinearGradient(
                        colors: [Colors.orange, Colors.yellow.shade500],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset('assets/james.jpg', height: 100),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.02777,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 45.0),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Jonathan Doe',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height *0.00625,),
                            Text(
                              'jonathan@yahoo.com',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: ListView(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => edit_profile(),
                        ),
                      );
                    },
                    child: _profile_builder(
                        context,
                        'Edit Profile',
                        Icon(Icons.edit_outlined,
                            color: Colors.orange, size: 36)),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Settings_screen(),
                        ),
                      );
                    },
                    child: _profile_builder(context, 'Settings',
                        Icon(Icons.settings, color: Colors.orange, size: 36)),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => MyOrders(),
                        ),
                      );
                    },
                    child: _profile_builder(
                        context,
                        'My Orders',
                        Icon(Icons.shopping_bag_outlined,
                            color: Colors.orange, size: 36)),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => my_WishList(),
                        ),
                      );
                    },
                    child: _profile_builder(
                        context,
                        'My Wishlist',
                        Icon(Icons.favorite_border_outlined,
                            color: Colors.orange, size: 36)),
                  ),
                  InkWell(
                    onTap:  (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => MyWallet(),
                        ),
                      );
                    },
                    child: _profile_builder(
                        context,
                        'My Wallet',
                        Icon(Icons.wallet_travel_outlined,
                            color: Colors.orange, size: 36)),
                  ),
                  InkWell(
                    onTap: (){
                       Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Languages_screen(),
                        ),
                      );
                    },
                    child: _profile_builder(
                        context,
                        'Change Language',
                        Icon(Icons.language_outlined,
                            color: Colors.orange, size: 36)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
