import 'package:ecommerce/screens/edit_profile_screens/settings_screens/change_password.dart';
import 'package:ecommerce/screens/edit_profile_screens/settings_screens/edit_profile.dart';
import 'package:ecommerce/screens/edit_profile_screens/settings_screens/language_choice.dart';
import 'package:ecommerce/screens/edit_profile_screens/settings_screens/notifications_SwitchTile.dart';
import 'package:flutter/material.dart';

class Settings_screen extends StatefulWidget {
  const Settings_screen({Key? key}) : super(key: key);

  @override
  State<Settings_screen> createState() => _Settings_screenState();
}

Widget _profile_builder(BuildContext context, String text) {
  return Padding(
    padding: EdgeInsets.only(top: 10.0, left: 3.0, right: 8.0, bottom: 2.0),
    child: Container(
      width: MediaQuery.of(context).size.width * 0.95,
      height: MediaQuery.of(context).size.height * 0.05,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //  crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              text,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.2,
                  color: Colors.grey),
            ),
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
    ),
  );
}

class _Settings_screenState extends State<Settings_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Settings',
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
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: 15.0, top: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 8.0, top: 8.0),
                      child: Text(
                        'Account',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => edit_profile(),
                          ),
                        );
                      },
                      child: _profile_builder(context, 'Edit Profile'),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => change_password(),
                          ),
                        );
                      },
                      child: _profile_builder(context, 'Change Password'),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: 15.0, top: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 8.0, top: 8.0),
                      child: Text(
                        'Messaging',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Notification_settings(),
                          ),
                        );
                      },
                      child: _profile_builder(context, 'Notification Settings'),
                    ),
                    _profile_builder(context, 'Email'),
                    _profile_builder(context, 'SMS & Alert'),
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: 15.0, top: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 8.0, top: 8.0),
                      child: Text(
                        'Other',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    InkWell(onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Languages_screen(),
                          ),
                        );
                      },child: _profile_builder(context, 'Change Language'),),
                    _profile_builder(context, 'Currency'),
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: 15.0, top: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 8.0, top: 8.0),
                      child: Text(
                        'Appearance',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    _profile_builder(context, 'Change Theme'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
