import 'package:flutter/material.dart';

class shipping_step extends StatefulWidget {
  const shipping_step({Key? key}) : super(key: key);

  @override
  State<shipping_step> createState() => _shipping_stepState();
}

class _shipping_stepState extends State<shipping_step> {
  int chosen_index = 0;
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
                      'Add new Address',
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
                    chosen_index = 0;
                  });
                },
                child: Container(
                  height: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: chosen_index == 0
                          ? Colors.orange.shade100
                          : Colors.white,
                      border: Border.all(
                        color: chosen_index == 0 ? Colors.orange : Colors.white,
                        width: 2,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.shade100),
                              child: Icon(
                                Icons.home_outlined,
                                color: Colors.orange,
                                size: 30,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Home',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              width: 150,
                            ),
                            chosen_index == 0
                                ? Icon(
                                    Icons.add_task_outlined,
                                    color: Colors.orange.shade700,
                                    size: 35,
                                  )
                                : SizedBox(),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              Text(
                                'Jonathan Doe',
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                '+201123327041',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                            ],
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
                                'Room #1 - 1st Floor,7619 Bins Mansor,Clarissaton,Alabama-USA',
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
                    chosen_index = 1;
                  });
                },
                child: Container(
                  height: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: chosen_index == 1
                          ? Colors.orange.shade100
                          : Colors.white,
                      border: Border.all(
                        color: chosen_index == 1 ? Colors.orange : Colors.white,
                        width: 2,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.shade100),
                              child: Icon(
                                Icons.account_balance_outlined,
                                color: Colors.orange,
                                size: 30,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Office',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              width: 150,
                            ),
                            chosen_index == 1
                                ? Icon(
                                    Icons.add_task_outlined,
                                    color: Colors.orange.shade700,
                                    size: 35,
                                  )
                                : SizedBox(),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              Text(
                                'Jonathan Doe',
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                '+201123327041',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                            ],
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
                                'Room #2 - 3st Floor,7619 Bins Mansor,Clarissaton,Alabama-USA',
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
