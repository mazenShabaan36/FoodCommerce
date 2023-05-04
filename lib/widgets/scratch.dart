import 'package:flutter/material.dart';

class scratch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'Scratch & win',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
        SizedBox(height:10),
        Container(
          height: 130,
          width: 340,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            gradient: LinearGradient(
                colors: [Colors.orange, Colors.yellow.shade500],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight),
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(height: 5),
                        Text(
                          'Scratch and Win',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          'Best deal of the day order now',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Order Now'),
                          style: ElevatedButton.styleFrom(
                              shape: StadiumBorder(),
                              primary: Colors.orange.shade600),
                        )
                      ]),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white)),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                        color: Colors.white),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/profile_photo.jpg'),
                    )
                    ),
                  ),
              ]),
        )
      ],
    );
  }
}
