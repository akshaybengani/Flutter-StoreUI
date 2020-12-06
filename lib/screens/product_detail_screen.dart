import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cucumber"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
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
              "Cucumber",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "Lorem upset and its friends its a description about cucumber product check it out and add to cart Lorem upset and its friends its a description about cucumber product check it out and add to cart Lorem upset and its friends its a description about cucumber product check it out and add to cart",
            ),
            Expanded(
              child: SizedBox(),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "Add to cart \$3.5 per KG",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
