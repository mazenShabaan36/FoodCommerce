import 'dart:ui';

import 'package:ecommerce/models/reviewrs_model.dart';
import 'package:flutter/material.dart';

class customer_reviews extends StatefulWidget {
  const customer_reviews({Key? key}) : super(key: key);

  @override
  State<customer_reviews> createState() => _customer_reviewsState();
}

class _customer_reviewsState extends State<customer_reviews> {
  Text _buildRatingsStars(int rating) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += "⭐️ ";
    }
    for (int i = 0; i < 5 - rating; i++) {
      stars += "★ ";
    }
    stars.trim();
    return Text(stars);
  }

  List<reviewer> reviewers = [
    reviewer(name: 'jhon Doe', imageUrl: 'assets/john.jpg', stars: 5),
    reviewer(name: 'Milinda Doe', imageUrl: 'assets/sophia.jpg', stars: 4),
    reviewer(name: 'Sara Doe', imageUrl: 'assets/olivia.jpg', stars: 3),
  ];
  Widget _buildReviews(
      String name, String time, int stars, String imageUrl) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.19,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage(imageUrl),
                ),
                SizedBox(width:9 ,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      
                    ),
                    SizedBox(height: 2,),
                    Text(
                      time,
                      style: TextStyle(
                          color: Colors.orange, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  width: 80,
                ),
                _buildRatingsStars(stars),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              style: TextStyle(color: Colors.grey, fontSize: 15),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Customer Reviews',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 8.0, top: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.20,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0, top: 35),
                    child: Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: [
                                  Text(
                                    '4.9',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '/5.0',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                '2002 Ratings',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text('⭐️⭐️⭐️⭐️⭐️')
                            ],
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.25,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  '5 Star',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 4,
                                  width: 70,
                                  color: Colors.green,
                                  child: SizedBox(),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  '4 Star',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 4,
                                  width: 60,
                                  color: Colors.green.shade300,
                                  child: SizedBox(),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  '3 Star',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 4,
                                  width: 45,
                                  color: Colors.orange,
                                  child: SizedBox(),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  '2 Star',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 4,
                                  width: 35,
                                  color: Colors.yellow.shade600,
                                  child: SizedBox(),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  '1 Star',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 4,
                                  width: 25,
                                  color: Colors.red,
                                  child: SizedBox(),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left:15.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.13,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade50),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Give a rating and review ',
                          icon: Icon(Icons.message_outlined ),
                          border: InputBorder.none),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Customer reviews',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.45,
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: _buildReviews(reviewers[index].name, '2 minutes ago',
                          reviewers[index].stars, reviewers[index].imageUrl),
                    );
                  },
                  itemCount: reviewers.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
