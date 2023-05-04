import 'package:flutter/material.dart';

class change_password extends StatefulWidget {
  const change_password({Key? key}) : super(key: key);

  @override
  State<change_password> createState() => _change_passwordState();
}

class _change_passwordState extends State<change_password> {
  bool _passwordvisible = false;
  bool _passwordvisible2 = false;
  bool _passwordvisible3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Change Password',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w600, letterSpacing: 1.0),
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Change password",
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text(
                            "Hey,Change your password to secure your account",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.06,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Text(
                              'Current Password',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 55,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.lock_outline_rounded,
                                  color: Colors.orange,
                                ),
                                SizedBox(
                                  width: 13,
                                ),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration.collapsed(
                                      hintText: 'Enter your current Password',
                                    ),
                                    obscureText: !_passwordvisible,
                                    // keyboardType: ,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _passwordvisible = !_passwordvisible;
                                    });
                                  },
                                  icon: _passwordvisible
                                      ? Icon(
                                          Icons.visibility_off,
                                          color: Colors.orange,
                                        )
                                      : Icon(
                                          Icons.visibility,
                                          color: Colors.orange,
                                        ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Text(
                              'New Password',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 55,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.lock_outline_rounded,
                                  color: Colors.orange,
                                ),
                                SizedBox(
                                  width: 13,
                                ),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration.collapsed(
                                      hintText: 'Enter your new Password',
                                    ),
                                    obscureText: !_passwordvisible2,
                                    // keyboardType: ,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _passwordvisible2 = !_passwordvisible2;
                                    });
                                  },
                                  icon: _passwordvisible2
                                      ? Icon(
                                          Icons.visibility_off,
                                          color: Colors.orange,
                                        )
                                      : Icon(
                                          Icons.visibility,
                                          color: Colors.orange,
                                        ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Text(
                              'Confirm New Password',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 55,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.lock_outline_rounded,
                                  color: Colors.orange,
                                ),
                                SizedBox(
                                  width: 13,
                                ),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration.collapsed(
                                      hintText: 'Confirm your new Password',
                                    ),
                                    obscureText: !_passwordvisible3,
                                    // keyboardType: ,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _passwordvisible3 = !_passwordvisible3;
                                    });
                                  },
                                  icon: _passwordvisible3
                                      ? Icon(
                                          Icons.visibility_off,
                                          color: Colors.orange,
                                        )
                                      : Icon(
                                          Icons.visibility,
                                          color: Colors.orange,
                                        ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Change Password',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.2),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            fixedSize: Size(
                                MediaQuery.of(context).size.width * 0.9, 52)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
