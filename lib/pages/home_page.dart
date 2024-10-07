import 'package:flutter/material.dart';
import 'package:flutter_navigasi/models/item.dart';
import 'item_page.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000, photo: 'assets/images/Gula.jpg', stock: 20, rating: 4.0, imageUrl: ''),
    Item(name: 'Salt', price: 2000, photo: 'assets/images/Garam.jpg', stock: 10, rating: 4.0, imageUrl: ''),
  ]; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item List'),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/item', arguments: item);
                  },
                  child: Card(
                    child: Column(
                      children: [
                        Hero(
                          tag: item.photo,
                          child: Image.asset(item.photo, fit: BoxFit.cover, height: 100),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(item.name, style: TextStyle(fontWeight: FontWeight.bold)),
                              Text('\$${item.price}'),
                              Text('Stock: ${item.stock}'),
                              Text('Rating: ${item.rating} ⭐'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.blueGrey,
            child: Column(
              children: [
                Text(
                  'Nama: Moh.Naufal',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  'NIM: 362358302146',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
