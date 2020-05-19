import 'package:digital_new/models/user.dart';
import 'package:digital_new/screen/guest_screen.dart';
import 'package:flutter/material.dart';
import 'package:digital_new/screen/login_screen.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    print(user);

    if(user == null) {
      return LoginScreen();
    } else {
      return GuestScreen();
    }
  }
}