import 'package:flutter/material.dart';

class payment extends StatefulWidget {
  const payment({Key? key}) : super(key: key);

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {
  int _chosenIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.65,
      child: Column(
        children: <Widget>[
          Container(
            height: 60,
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey.shade200),
                      child: Icon(
                        Icons.add,
                        color: Colors.orange,
                        size: 35,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Add new Payment Method',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: <Widget>[
              InkWell(
                onTap: () {
                  setState(() {
                    _chosenIndex= 0;
                  });
                },
                child: Container(
                  height: 190,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: _chosenIndex == 0
                          ? Colors.orange.shade100
                          : Colors.white,
                      border: Border.all(
                        color: _chosenIndex == 0 ? Colors.orange : Colors.white,
                        width: 2,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage('assets/creditCardpng.png'),
                              backgroundColor: Colors.transparent,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Credit Card',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            _chosenIndex == 0
                                ? Icon(
                                    Icons.add_task_outlined,
                                    color: Colors.orange.shade700,
                                    size: 35,
                                  )
                                : SizedBox(),
                          ],
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left :5.0,top: 8.0),
                          child: Text(
                            '448512378906653524',
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white54,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Secure checkout powered byy knox card & network security, USA',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey.shade400,
                                    letterSpacing: 0.6),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _chosenIndex= 1;
                  });
                },
                child: Container(
                  height: 190,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: _chosenIndex == 1
                          ? Colors.orange.shade100
                          : Colors.white,
                      border: Border.all(
                        color: _chosenIndex == 1 ? Colors.orange : Colors.white,
                        width: 2,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage('assets/payBall.png'),
                              backgroundColor: Colors.transparent,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'PayPal',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              width: 120,
                            ),
                            _chosenIndex == 1
                                ? Icon(
                                    Icons.add_task_outlined,
                                    color: Colors.orange.shade700,
                                    size: 35,
                                  )
                                : SizedBox(),
                          ],
                        ),
                        Padding(
                          padding:  EdgeInsets.all(8.0),
                          child: Text(
                            'fakeuser@domain.com',
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white54,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Secure checkout powered byy knox card & network security, USA',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey.shade400,
                                    letterSpacing: 0.6),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
