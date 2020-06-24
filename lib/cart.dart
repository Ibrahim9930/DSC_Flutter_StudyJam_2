import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test2/catalogue.dart';

class CartModel extends ChangeNotifier {
  List<Item> items = [];

  void addItem(Item item){
    items.add(item);
    notifyListeners();
  }
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
];

class MyCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
      builder: (context,cart,child){
        return Scaffold(
        appBar: AppBar(
          title: Text("Cart"),
          leading: IconButton(
            icon: Icon(Icons.list),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: ListView.builder(
          itemCount: cart.items.length,
          itemBuilder: (context, i) {
            return Text(cart.items[i].name);
          },
        ),
      );
      },
    );
  }
}
