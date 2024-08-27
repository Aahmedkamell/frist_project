import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      "name": "Sprite Can",
      "size": "325ml",
      "price": "\$1.50",
      "image": "assets/sprite.png"
    },
    {
      "name": "Diet Coke",
      "size": "355ml",
      "price": "\$1.99",
      "image": "assets/cocacola.png"
    },
    {
      "name": "Apple & Grape Juice",
      "size": "2L",
      "price": "\$15.50",
      "image": "assets/applejuice.png"
    },
    {
      "name": "Coca Cola Can",
      "size": "325ml",
      "price": "\$4.99",
      "image": "assets/cola.png"
    },
    {
      "name": "Pepsi Can",
      "size": "330ml",
      "price": "\$4.99",
      "image": "assets/pepsi.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourite'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading:
                  Image.asset(items[index]['image'], width: 60, height: 60),
              title: Text(items[index]['name'],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              subtitle:
                  Text(items[index]['size'], style: TextStyle(fontSize: 14)),
              trailing: Text(items[index]['price'],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              onTap: () {},
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favourite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Account'),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text('Add All To Cart'),
        backgroundColor: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomSheet: Container(
        height: 100, // Adjust height as needed
        color: Colors.transparent,
      ),
    );
  }
}
