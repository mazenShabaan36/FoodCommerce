import 'dart:ui';

import 'package:flutter/material.dart';

class Notification_settings extends StatefulWidget {
  const Notification_settings({Key? key}) : super(key: key);

  @override
  State<Notification_settings> createState() => _Notification_settingsState();
}

class _Notification_settingsState extends State<Notification_settings> {
  bool _orders = false;
  bool _prod = false;
  bool _offer = false;
  bool _email = false;
  bool _sms = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        elevation: 0.0,
        title: Center(
          child: Text(
            "Notification Settings",
            style: TextStyle(color: Colors.white, letterSpacing: 1.2),
          ),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              child: Center(
                child: Text(
                  'Manage Various Notification Seetings',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height *0.595,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.0),
                  topRight: Radius.circular(35.0),
                ),
              ),
              child: ListView(
                children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SwitchListTile(
                        value: _orders,
                        activeColor: Colors.orange,
                        onChanged: (bool value) {
                          setState(() {
                            _orders = value;
                          });
                        },
                        title: Text(
                          'Orders',
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.w700),
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Text(
                          'Get Latest updates on your orders',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SwitchListTile(
                        value: _prod,
                        activeColor: Colors.orange,
                        onChanged: (bool value) {
                          setState(() {
                            _prod = value;
                          });
                        },
                        title: Text(
                          'New Products',
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.w700),
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Text(
                          'Get Alerts when a new product comes out',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SwitchListTile(
                        value: _offer,
                        activeColor: Colors.orange,
                        onChanged: (bool value) {
                          setState(() {
                            _offer = value;
                          });
                        },
                        title: Text(
                          'Offers & Discounts',
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.w700),
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Text(
                          'Get Alerts when offers & Disounts comes out',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SwitchListTile(
                        value: _email,
                        activeColor: Colors.orange,
                        onChanged: (bool value) {
                          setState(() {
                            _email = value;
                          });
                        },
                        title: Text(
                          'Email Notifications',
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.w700),
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Text(
                          'Recieve weekly email & push notification',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SwitchListTile(
                        value: _sms,
                        activeColor: Colors.orange,
                        onChanged: (bool value) {
                          setState(() {
                            _sms = value;
                          });
                        },
                        title: Text(
                          'SMS Notifications',
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.w700),
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Text(
                          'Recieve daily SMS & push notification',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
