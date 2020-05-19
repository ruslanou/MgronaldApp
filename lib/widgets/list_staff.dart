import 'package:flutter/material.dart';

class ListStaff extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage:
                  AssetImage('assets/luffy.jpg'),
            ),
            title: Text('Monkey D Luffy'),
            subtitle: Text('Chief Executive Officer'),
            trailing: CircleAvatar(
              backgroundImage: AssetImage('assets/red-dot.jpg'),
            ),
            onTap: () {
              print("Monkey D Luffy");
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/man-1.jpg'),
            ),
            title: Text('Billy Teviano'),
            subtitle: Text('Chief Marketing Officer'),
            trailing: CircleAvatar(
              backgroundImage: AssetImage('assets/green-dot.jpg'),
            ),
            onTap: () {
              print("Billy Teviano");
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/hazel.jpg'),
            ),
            title: Text('Hazel Irfansyah'),
            subtitle: Text('Chief Operating Officer'),
            trailing: CircleAvatar(
              backgroundImage: AssetImage('assets/green-dot.jpg'),
            ),
            onTap: () {
              print("Hazel Irfansyah");
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/anggi.jpg'),
            ),
            title: Text('Anggi Nurqonita'),
            subtitle: Text('Area Manager'),
            trailing: CircleAvatar(
              backgroundImage: AssetImage('assets/red-dot.jpg'),
            ),
            onTap: () {
              print("Anggi Nurqonita");
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/gatra.jfif'),
            ),
            title: Text('Gatra Drestanta'),
            subtitle: Text('Sous Chef'),
            trailing: CircleAvatar(
              backgroundImage: AssetImage('assets/red-dot.jpg'),
            ),
            onTap: () {
              print("Gatra Drestanta");
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/juna.jpg'),
            ),
            title: Text('Juna Rorimpandey'),
            subtitle: Text('Executive Chef'),
            trailing: CircleAvatar(
              backgroundImage: AssetImage('assets/green-dot.jpg'),
            ),
            onTap: () {
              print("Juna Rorimpandey");
            },
          ),
        ),
      ],
    );
  }
}
