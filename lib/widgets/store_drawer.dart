import 'package:flutter/material.dart';

class StoreDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            height: 200,
            child: Image.asset(
              "lib/assets/images/imageFile.jpg",
              fit: BoxFit.fill,
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Profile"),
              trailing: Icon(Icons.person),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Orders"),
              trailing: Icon(Icons.shopping_basket),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Support"),
              trailing: Icon(Icons.star),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Logout"),
              trailing: Icon(Icons.logout),
            ),
          ),
        ],
      ),
    );
  }
}
