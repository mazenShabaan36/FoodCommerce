import 'package:flutter/material.dart';

class done extends StatelessWidget {
  const done({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/done.gif',
          height: 260,),
          Text('Order Placed!',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w800
          ),),
          SizedBox(
            height: 30,
          ),
          Text(
              'Congratulations,your order has been placed successfully.track your order',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
                fontWeight: FontWeight.w600
              ),),
              Container(
                height: 260,
              ),
        ],
      ),
    );
  }
}
