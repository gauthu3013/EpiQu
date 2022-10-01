import 'package:flutter/material.dart';
import 'shop.dart';
import 'games.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Guest Player'),
            accountEmail: Text('ID7373'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/images/prof.jpg'),
                      fit: BoxFit.cover
                    )
                  ),
                )
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/images/Petil.jpeg'),
                fit: BoxFit.cover
              )
            ),
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart_rounded),
            title: Text('Shop'),
            onTap: () => select(context, 0),
          ),
          ListTile(
            leading: Icon(Icons.gamepad),
            title: Text('Game Modes'),
            onTap: () => select(context, 1),
          ),
        ],
      )
    );
  }

  void select(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => shop()
        ));
        break;

      case 1:
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => games()
        ));
        break;
    }
  }
}