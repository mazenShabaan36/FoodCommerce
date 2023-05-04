import 'package:flutter/material.dart';

class NotFound extends StatelessWidget {
  const NotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            '404 Page Not Found',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
              child: Image.asset(
                'assets/404.jpg',
                height: MediaQuery.of(context).size.height * 0.16,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            SizedBox(height: 12,),
            Text('Page Not Found!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700
            ),),
            SizedBox(
              height: 12,
            ),
            Text("""Seems,the Page you are looking for 
                       doesnt exist""",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.grey
            ),),
          ],
        ),
        ),
      ),
    );
  }
}
