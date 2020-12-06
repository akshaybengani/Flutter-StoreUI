import 'package:flutter/material.dart';
import 'package:store_ui/screens/product_detail_screen.dart';
import 'package:store_ui/widgets/end_drawer.dart';
import 'package:store_ui/widgets/store_drawer.dart';

class DashboardScreen extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: StoreDrawer(),
      endDrawer: EndDrawer(),
      appBar: AppBar(
        title: Text("Flutter Store"),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              _notifications(context);
            },
          ),
          IconButton(
            icon: Icon(Icons.star),
            onPressed: () {
              _review(context);
            },
          ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              _scaffoldKey.currentState.openEndDrawer();
            },
          )
        ],
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text(
                "Flutter Grocery Store",
                textAlign: TextAlign.center,
              ),
              trailing: Icon(Icons.shopping_bag),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            height: 200,
            child: Image.asset(
              "lib/assets/images/imageFile.jpg",
              fit: BoxFit.fill,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              title: Text(
                "Categories".toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          _categoriesSection(),
          ...List.generate(10, (index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProductDetailScreen(),
                      ),
                    );
                  },
                  title: Text("Cucumber"),
                  subtitle: Text("Price \$3.5"),
                  leading: Container(
                    width: 50,
                    height: 50,
                    color: Colors.orange,
                  ),
                  trailing: RaisedButton(
                    child: Text("Add"),
                    onPressed: () {},
                  ),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }

  Widget _categoriesSection() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _category(
                icon: Icons.food_bank,
                title: "Food",
              ),
              _category(
                icon: Icons.settings_applications,
                title: "Tools",
              ),
              _category(
                icon: Icons.ac_unit,
                title: "AC Unit",
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _category(
                icon: Icons.access_alarm,
                title: "Alarms",
              ),
              _category(
                icon: Icons.accessibility,
                title: "Access",
              ),
              _category(
                icon: Icons.account_balance,
                title: "Bank",
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _category({
    final IconData icon,
    final String title,
  }) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 60,
          ),
          Text(title),
        ],
      ),
    );
  }

  void _notifications(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Notifications"),
        content: Text(
          "There are no more notifications available to show, Thanks for your time and support",
        ),
        actions: [
          FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("ok"),
          ),
        ],
      ),
    );
  }

  void _review(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (ctx) => Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: Colors.white),
        height: 300,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              "Rate us".toUpperCase(),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  5,
                  (index) => Icon(
                    Icons.star_border,
                    size: 60,
                  ),
                ),
              ),
            ),
            Text("Please give us feedback"),
            Expanded(child: SizedBox()),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
