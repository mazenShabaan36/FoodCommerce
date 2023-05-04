import 'package:ecommerce/models/message_model.dart';
import 'package:ecommerce/screens/drawer_screens/NoInternet.dart';
import 'package:ecommerce/screens/drawer_screens/NotFound.dart';
import 'package:ecommerce/screens/drawer_screens/chat_screen.dart';
import 'package:ecommerce/screens/drawer_screens/faq_screen.dart';
import 'package:ecommerce/screens/bottom_screens/homeScreen.dart';
import 'package:ecommerce/screens/drawer_screens/legalPolicies.dart';
import 'package:ecommerce/screens/drawer_screens/login_signup_screen.dart';
import 'package:ecommerce/screens/drawer_screens/support.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  Widget ListTileHandler(
    BuildContext context,
    Icon icon,
    String txt,
  ) {
    return ListTile(
      leading: icon,
      title: Text(
        txt,
        style: TextStyle(
            fontSize: 17, fontWeight: FontWeight.w500, color: Colors.grey),
      ),
      // onTap: onTap(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        body: Container(
          // height: MediaQuery.of(context).size.height * 0.8,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.orange, Colors.yellow.shade500],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight),
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            "assets/food_rush.jpg",
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width * 0.30,
                            height: MediaQuery.of(context).size.height * 0.12,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Food Court',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                              //   textAlign: TextAlign.start,
                            ),
                            Text(
                              'World of tasty food!',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ListTileHandler(
                context,
                Icon(Icons.home_outlined),
                'Home', /* () {
               /*  Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => homeScreen(),
                  ),
                );
                */
              }
              */
              ),
              SizedBox(
                height: 6,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => support()));
                },
                child: ListTileHandler(
                  context,
                  Icon(Icons.help_outline_sharp),
                  'Support & help', /*() {
                  /*    Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => support(),
                    ),
                  );
                  */
                    }
                    */
                ),
              ),
              SizedBox(
                height: 6,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => legal_Policies()));
                },
                child: ListTileHandler(
                  context,
                  Icon(Icons.library_books),
                  'Legal Policies', /* () {}*/
                ),
              ),
              SizedBox(
                height: 6,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ChatScreen(users: usersC)));
                },
                child: ListTileHandler(
                  context,
                  Icon(Icons.message),
                  'My chats', /*() {}*/
                ),
              ),
              SizedBox(
                height: 6,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => NotFound()));
                },
                child: ListTileHandler(
                  context,
                  Icon(Icons.warning_amber_outlined),
                  '404 Page Not Found', /*() {}*/
                ),
              ),
              SizedBox(
                height: 6,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => NoInternet()));
                },
                child: ListTileHandler(
                  context,
                  Icon(Icons.wifi),
                  'No Internet', /*() {}*/
                ),
              ),
              SizedBox(
                height: 6,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => faqScreen()));
                },
                child: ListTileHandler(
                  context,
                  Icon(Icons.help_outline_sharp),
                  'FAQ', /*() {}*/
                ),
              ),
              SizedBox(
                height: 6,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => log_in()));
                },
                child: ListTileHandler(
                  context,
                  Icon(Icons.login),
                  'Login', /*() {}*/
                ),
              ),
            ],
          ), //,
        ),
      ),
    );
  }
}
