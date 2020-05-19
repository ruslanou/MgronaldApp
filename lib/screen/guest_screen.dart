import 'package:digital_new/screen/login_screen.dart';
import 'package:digital_new/services/auth.dart';
import 'package:digital_new/widgets/list_menu.dart';
import 'package:flutter/material.dart';

class GuestScreen extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Mgronald Menu'),
          centerTitle: true,
          backgroundColor: Colors.orange[600]),
      body: ListMenu(),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await _auth.signOut();
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return LoginScreen();
          }));
        },
        child: Icon(Icons.shopping_cart),
        backgroundColor: Colors.orange[700],
      ),
    );
  }
}
