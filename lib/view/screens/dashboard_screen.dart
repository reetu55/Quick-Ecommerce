import 'package:flutter/material.dart';
import 'package:quick_ecommerceo.com/view/screens/account_screen.dart';
import 'package:quick_ecommerceo.com/view/screens/cart_screen.dart';
import 'package:quick_ecommerceo.com/view/screens/home_screen.dart';
import 'package:quick_ecommerceo.com/view/screens/messages_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int selectedIndex = 0;
  onBottomIconTop(int index) {
    selectedIndex = index;
    setState(() {});
  }

  List<Widget> Widgets = [
    HomeScreen(),
    MessagesScreen(),
    CartScreen(),
    AccountScreen(), // enter ctrl+space to remove the error
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          onBottomIconTop(value);
        },
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "message"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
        ],
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
      ),
      body: Widgets.elementAt(selectedIndex),
    );
  }
}
