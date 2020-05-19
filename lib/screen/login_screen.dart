import 'package:digital_new/screen/guest_screen.dart';
import 'package:digital_new/screen/manager_screen.dart';
import 'package:digital_new/screen/staff_list_screen.dart';
import 'package:digital_new/services/auth.dart';
import 'package:digital_new/services/register.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email = '';
  String password = '';
  String error = '';
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  final String email1 = 'luffy@gmail.com';
  final String email2 = 'tevin@gmail.com';
  final String email3 = 'hazel@gmail.com';
  

  final String password1 = '12345678';
  final String password2 = '102938';

  final String role1 = 'manager';
  final String role2 = 'staff';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.orange[900],
              Colors.orange[800],
              Colors.orange[400]
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/mgronald.jpg'))),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 60),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(225, 95, 27, 0.3),
                                    blurRadius: 20,
                                    offset: Offset(0, 10))
                              ]),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.grey[200],
                                    ),
                                  ),
                                ),
                                child: TextFormField(
                                  validator: (val) => val.contains('@') ? null : 'Enter your valid email',
                                  onChanged: (val) {
                                    setState(() {
                                      email = val;
                                    });
                                  },
                                  decoration: InputDecoration(
                                      hintText: 'Enter your email',
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.grey[200],
                                    ),
                                  ),
                                ),
                                child: TextFormField(
                                  validator: (val) => val.length < 5 ? 'Enter a password minimum 6' : null,
                                  onChanged: (val) {
                                    password = val;
                                  },
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      hintText: 'Enter your password',
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 40),
                        GestureDetector(
                          onTap: () async {      
                            if (email == email1 && password == password1) {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return ManagerScreen();
                              }));
                            } else if (email == email2 &&
                                password == password2) {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return StaffScreen();
                              }));
                            }
                          },
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.orange[900]),
                            child: Center(
                              child: Text(
                                'STAFF LOGIN',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        OutlineButton(
                          onPressed: (){
                            Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return Register();
                              }));
                          },
                          borderSide: BorderSide.none,
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 25),
                            child: Text(
                              ' - OR - ',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            dynamic result = await _auth.signInAnon();
                            if (result == null) {
                              print('Sorry, login failed');
                            } else {
                              print(result.uid);
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return GuestScreen();
                              }));
                            }
                          },
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.orange[900]),
                            child: Center(
                              child: Text(
                                'GUEST LOGIN',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
