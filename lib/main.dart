import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: stateless_example()
  ));
}

class stateless_example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This Is PlayGround'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
    body: Center(
        child: Text('Hi Got!',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
          fontFamily: 'IndieFlower-Regular'
          ),
        ),
      ),
    floatingActionButton: FloatingActionButton(
      onPressed: null,
      child: 
      Text('Click Me!',
        textAlign: TextAlign.center,
        ),
      backgroundColor: Colors.red,
      ),
    );
  }
}