import 'package:ecommerce/models/transaction.dart';
import 'package:flutter/material.dart';

class MyWallet extends StatefulWidget {
  const MyWallet({Key? key}) : super(key: key);

  @override
  State<MyWallet> createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  List<transaction> trans = [
    transaction(
        name: "Netflix",
        date: "31 Dec,2022",
        type: "Subscribtion",
        money: "-\$19.00",
        image: "assets/Netflix.png"),
    transaction(
        name: "McDonalds",
        date: "22 Oct 2022",
        type: "Purchase",
        money: "- \$12.00",
        image: "assets/mac.png"),
    transaction(
        name: "Paypal",
        date: "10 Oct 2022",
        type: "Reward",
        money: "+ \$19.00",
        image: "assets/payBall.png"),
    transaction(
        name: "Pizza hut",
        date: "12 Jun 2022",
        type: "Purchase",
        money: "- \$22.00",
        image: "assets/hut.png"),
    transaction(
        name: "McDonalds",
        date: "22 Oct 2022",
        type: "Purchase",
        money: "- \$12.00",
        image: "assets/mac.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'My Wallet',
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.92,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          color: Colors.grey.shade200),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'My Wallet',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 35,
                                  backgroundImage:
                                      AssetImage('assets/john.jpg'),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Your currenct balance',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "\$1750",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Center(
                      child: Text(
                        'Add balance',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                      primary: Colors.orange,
                      fixedSize: Size(
                        MediaQuery.of(context).size.width * 0.4,
                        MediaQuery.of(context).size.height * 0.05,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.13,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.22,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                shape: BoxShape.circle),
                            child: Center(
                              child: Image.asset(
                                'assets/send.png',
                                width: MediaQuery.of(context).size.width * 0.2,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Send',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.22,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                shape: BoxShape.circle),
                            child: Center(
                              child: Image.asset(
                                'assets/recieve.png',
                                width: MediaQuery.of(context).size.width * 0.11,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Receive',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.22,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                shape: BoxShape.circle),
                            child: Center(
                              child: Image.asset(
                                'assets/shopping.png',
                                width: MediaQuery.of(context).size.width * 0.15,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              'Shop',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.22,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                shape: BoxShape.circle),
                            child: Center(
                              child: Image.asset(
                                'assets/swap.png',
                                width: MediaQuery.of(context).size.width * 0.15,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Swap',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left:8.0),
                child: Text(
                  'Recent Transactions',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.42 ,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.white,
                          height: MediaQuery.of(context).size.height * 0.1,
                          //width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Image.asset(
                                trans[index].image,
                                height:
                                    MediaQuery.of(context).size.height * 0.08,
                                width: MediaQuery.of(context).size.width * 0.13,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 18.0, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text(
                                      trans[index].name,
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      trans[index].date,
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                            
                              Padding(
                                padding: const EdgeInsets.only(left:48.0,top: 8.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text(
                                      trans[index].money,
                                      style: TextStyle(
                                        color: Colors.orange,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      trans[index].type,
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: trans.length,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
