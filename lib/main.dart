import 'package:flutter/material.dart';

import 'package:quick_ecommerceo.com/view/screens/buttom_nav_bar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ButtomNavBar());
  }
}
