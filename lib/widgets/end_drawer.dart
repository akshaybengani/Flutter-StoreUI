import 'package:flutter/material.dart';

class EndDrawer extends StatelessWidget {
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
          Text(
            "Cart",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          ...List.generate(10, (index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                child: ListTile(
                    title: Text("Cucumber"),
                    subtitle: Text("Qty 1KG"),
                    trailing: Text("Price \$3.5")),
              ),
            );
          }),
        ],
      ),
    );
  }
}
