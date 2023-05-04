import 'package:flutter/material.dart';

class faqScreen extends StatefulWidget {
  const faqScreen({Key? key}) : super(key: key);

  @override
  State<faqScreen> createState() => _faqScreenState();
}

class _faqScreenState extends State<faqScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        elevation: 0.0,
        title: Center(
          child: Text(
            "FAQ\'s",
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
                  'We have answer for all your Questions',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 27,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height *0.595,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35.0),
                      topRight: Radius.circular(35.0),
                    ),
                  ),
                  child: ListView(children: [
                    Column(
                      children: <Widget>[
                        ExpansionTile(
                          title: Text(
                            'How do i pay my cart total?',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w600),
                          ),
                          // subtitle: Text('data'),
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w300),
                              ),
                            ),
                          ],
                        ),
                        ExpansionTile(
                          title: Text(
                            'How do i add a payment method?',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w600),
                          ),
                          // subtitle: Text('data'),
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w300),
                              ),
                            ),
                          ],
                        ),
                        ExpansionTile(
                          title: Text(
                            'Is card details are saved in a databse?',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w600),
                          ),
                          // subtitle: Text('data'),
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w300),
                              ),
                            ),
                          ],
                        ),
                        ExpansionTile(
                          title: Text(
                            'How do i remove a saved card',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w600),
                          ),
                          // subtitle: Text('data'),
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w300),
                              ),
                            ),
                          ],
                        ),
                        ExpansionTile(
                          title: Text(
                            'What type of methods are available',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w600),
                          ),
                          // subtitle: Text('data'),
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w300),
                              ),
                            ),
                          ],
                        ),
                        ExpansionTile(
                          title: Text(
                            'Is COD available for local orders',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w600),
                          ),
                          // subtitle: Text('data'),
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w300),
                              ),
                            ),
                          ],
                        ),
                        ExpansionTile(
                          title: Text(
                            'Can you deliver to home or office',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w600),
                          ),
                          // subtitle: Text('data'),
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w300),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
