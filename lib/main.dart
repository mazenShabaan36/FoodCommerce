import 'package:ecommerce/providers/cart.dart';
import 'package:ecommerce/providers/orders.dart';
import 'package:ecommerce/screens/bottom_screens/homeScreen.dart';
import 'package:ecommerce/screens/nav_screens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_)=>cart()),
      ChangeNotifierProvider(create: (_)=>orders())
    ],
    
    child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     /* darkTheme: ThemeData(
        brightness: Bti
      ),
      */
      //themeMode: ThemeMode.dark,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Nav_screen() ,//MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

