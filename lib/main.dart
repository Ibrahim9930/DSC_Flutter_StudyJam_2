import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test2/cart.dart';

import 'catalogue.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CartModel>(
        create: (context){
          return CartModel();
        },
        child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          "/catalouge": (con)=>MyHomePage(),
          "/cart": (con)=>MyCart(),

        },
        initialRoute: "/catalouge",
      ),
    );
  }
}

