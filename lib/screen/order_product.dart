import 'package:flutter/material.dart';

class OrderProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Product'),
        centerTitle: true,
        backgroundColor: Colors.orange[600],
      ),
      body: Center(
        child: Text('Order Product Form Here'),
      ),
    );
  }
}