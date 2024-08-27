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
      "image": "images/sprite.png"
    },
    {
      "name": "Diet Coke",
      "size": "355ml",
      "price": "\$1.99",
      "image": "images/cocacola.png"
    },
    {
      "name": "Apple & Grape Juice",
      "size": "2L",
      "price": "\$15.50",
      "image": "images/applejuice.png"
    },
    {
      "name": "Coca Cola Can",
      "size": "325ml",
      "price": "\$4.99",
      "image": "images/cola.png"
    },
    {
      "name": "Pepsi Can",
      "size": "330ml",
      "price": "\$4.99",
      "image": "images/pepsi.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourite'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: items.length,
        separatorBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Divider(
              height: 1.0,
              color: Colors.grey[300],
            ),
          );
        },
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            leading: Image.asset(items[index]['image'], width: 60, height: 60),
            title: Text(items[index]['name'],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            subtitle:
                Text(items[index]['size'], style: TextStyle(fontSize: 14)),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(items[index]['price'],
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Icon(Icons.chevron_right, size: 24),
              ],
            ),
            tileColor: Colors.white, // Background color for the tile
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0), // Rounded corners
            ),
            onTap: () {},
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
      bottomSheet: Container(
        margin: EdgeInsets.all(16),
        height: 50.0,
        width: double.infinity,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          onPressed: () {},
          child: Text(
            'Add All To Cart',
            style: TextStyle(color: Colors.white, fontSize: 16.0),
          ),
        ),
      ),
    );
  }
}
