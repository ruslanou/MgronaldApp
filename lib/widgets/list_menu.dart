import 'package:flutter/material.dart';

class ListMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage:
                  AssetImage('assets/buttermilk-fried-chicken.jpg'),
            ),
            title: Text('Butter Milk Chicken'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print("Butter Milk Chicken");
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/french-fries.jpg'),
            ),
            title: Text('French Fries'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print("French Fries");
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/burger.jpg'),
            ),
            title: Text('Special Cheese Burger Platter'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print("Special Cheese Burger Platter");
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/hells-chicken.jpg'),
            ),
            title: Text("Hell's Chicken"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print("Hell's Chicken");
            },
            
          ),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/buffalo-chicken-bites.jpg'),
            ),
            title: Text("Buffalo Chicken Bites"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print("Buffalo Chicken Bites");
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/cream-soup.jpg'),
            ),
            title: Text("Cream 'Mecin' Soup"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print("Cream 'Mecin' Soup");
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/choco-lava.jpeg'),
            ),
            title: Text("Choco Lava with Vanilla Ice Cream"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print('Choco Lava with Vanilla Ice Cream');
            },
            
          ),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/awua.jfif'),
            ),
            title: Text("Aqua 600ml"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print('Aqua 600ml');
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/coca-cola.jpg'),
            ),
            title: Text("Coca Cola"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print('Coca Cola');
            },
          ),
        ),
      ],
    );
  }
}
