import 'package:digital_new/screen/guest_screen.dart';
import 'package:digital_new/screen/order_product.dart';
import 'package:digital_new/screen/staff_list.dart';
import 'package:digital_new/screen/staff_list_screen.dart';
import 'package:digital_new/services/auth.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class ManagerScreen extends StatefulWidget {
  @override
  _ManagerScreenState createState() => _ManagerScreenState();
}

class _ManagerScreenState extends State<ManagerScreen> {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        focusColor: Colors.black,
        foregroundColor: Colors.black,
        hoverColor: Colors.black,
        onPressed: () async{
          await _auth.signOut();
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return LoginScreen();
          }));
        },
        child: Icon(Icons.photo_album),
        backgroundColor: Colors.orange[700],
      ),
      appBar: AppBar(
        title: Text('Manager Screen'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black
                ),
                accountName: Text('Monkey D Luffy'),
                accountEmail: Text('luffy@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/luffy.jpg'),
                ),
                ),
                ListTile(
                  title: Text('Mgronald Product'),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(context, MaterialPageRoute(
                      builder: (BuildContext context) {
                        return GuestScreen();
                      }
                    ));
                  },
                ),
                ListTile(
                  title: Text('Staff list'),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(context, MaterialPageRoute(
                      builder: (BuildContext context) {
                        return StaffList();
                      }));
                  },
                ),
                ListTile(
                  title: Text('Order Product'),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(context, MaterialPageRoute(
                      builder: (BuildContext context) {
                        return OrderProduct();
                      }));
                  }
                ),
                SizedBox(height: 300),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlineButton(
                  borderSide: BorderSide.none,
                  child: Text(
                    'LOGOUT',
                    style: TextStyle(color: Colors.red),
                  ),
                  onPressed: () async {
                    await _auth.signOut();
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginScreen();
                    }));
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
