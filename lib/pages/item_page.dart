import 'package:flutter/material.dart';
import 'package:flutter_navigasi/models/item.dart';

class ItemPage extends StatelessWidget {
  final Item item;

  const ItemPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: item.photo,
              child: Image.asset(item.photo, height: 200),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('Name: ${item.name}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text('Price: \$${item.price}', style: TextStyle(fontSize: 18)),
                  Text('Stock: ${item.stock}', style: TextStyle(fontSize: 18)),
                  Text('Rating: ${item.rating}', style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}