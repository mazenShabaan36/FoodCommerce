import 'package:ecommerce/screens/bottom_screens/profile_screen.dart';
import 'package:flutter/material.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(6.0),
          child: Container(
            height: 45,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(
                Icons.list,
                color: Colors.orange,
                size: 30,
              ),
            ),
          ),
        ),
        Text(
          'Hi,Mazen!',
          style: TextStyle(fontSize: 28),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            height: 45,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(),
                  ),
                );
              },
              icon: Icon(
                Icons.person,
                size: 30,
              ),
              color: Colors.orange,
            ),
          ),
        )
      ],
    );
  }
}
