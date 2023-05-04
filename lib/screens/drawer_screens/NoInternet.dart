import 'package:flutter/material.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'No Internet',
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
            Container(
              width:MediaQuery.of(context).size.width*0.38 ,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: ClipRRect(
                child: Image.asset(
                  'assets/wifi.gif',
                  height: MediaQuery.of(context).size.height * 0.16,
                  width: MediaQuery.of(context).size.width*0.15,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
            SizedBox(height: 12,),
            Text('No Internet',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700
            ),),
            SizedBox(
              height: 12,
            ),
            Text("""Seems,you have no internet connection 
        please check your Wi-Fi settings""",
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
