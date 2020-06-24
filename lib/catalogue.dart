import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'cart.dart';

class Item {
  final String name;
  final int price;

  Item({this.name, this.price});
}

List<Item> itemExamples = [
  Item(name: "Product", price: 42),
  Item(name: "Product", price: 42),
  Item(name: "Product", price: 42),
  Item(name: "Product", price: 42),
  Item(name: "Product", price: 42),
  Item(name: "Product", price: 42),
  Item(name: "Product", price: 42),
  Item(name: "Product", price: 42),
  Item(name: "Product", price: 42),
  Item(name: "Product", price: 42),
  Item(name: "Product", price: 42),
  Item(name: "Product", price: 42),
];

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("DSC Store"),
          leading: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.of(context).pushNamed("/cart");
            },
          ),
        ),
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: itemExamples.length,
          itemBuilder: (context, index) {
            return ListItem(
              index: index,
            );
          },
        ));
  }
}



class ListItem extends StatelessWidget {
  final int index;

  const ListItem({Key key, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
          builder: (_,cart,__)=>ListTile(
        trailing: IconButton(
            icon: cart.items.contains(itemExamples[index]) ? Icon(Icons.check) : Icon(Icons.add),
            onPressed: () {
              cart.addItem(itemExamples[index]);
            }),
        leading:
            Image.network("https://ya-webdesign.com/images250_/box-icon-png.png"),
        title: Text(itemExamples[index].name),
        subtitle: Text(
          "${itemExamples[index].price} \$",
        ),
      ),
    );
  }
}