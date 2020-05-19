import 'package:digital_new/screen/guest_screen.dart';
import 'package:digital_new/screen/login_screen.dart';
import 'package:digital_new/screen/staff_list.dart';
import 'package:digital_new/services/auth.dart';
import 'package:flutter/material.dart';

class StaffScreen extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employee Screen'),
        centerTitle: true,
        backgroundColor: Colors.orange[600],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.orange),
              accountName: Text('Billy Teviano'),
              accountEmail: Text('tevin@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/man-1.jpg'),
              ),
            ),
            ListTile(
              title: Text('Mgronald Product'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return GuestScreen();
                }));
              },
            ),
            ListTile(
              title: Text('Staff list'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return StaffList();
                }));
              },
            ),
            SizedBox(height: 350),
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
      body: Center(child: Text('Employee Screen')),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await _auth.signOut();
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return LoginScreen();
          }));
        },
        child: Icon(Icons.photo_album),
        backgroundColor: Colors.orange[700],
      ),
    );
  }
}
