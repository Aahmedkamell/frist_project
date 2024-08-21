import 'package:flutter/material.dart';

void main() {
  runApp(Hello());
}

class Hello extends StatelessWidget {
  Hello();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Center(
                child: Text('WELCOME'),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.pink,
              child: Center(
                child: Text('WELCOME'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
