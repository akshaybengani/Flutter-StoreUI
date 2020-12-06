import 'package:flutter/material.dart';
import 'package:store_ui/screens/dashboard_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Getting Started with Flutter',
      home: DashboardScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

