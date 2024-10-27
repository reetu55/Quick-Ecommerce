import 'package:flutter/material.dart';
import 'package:quick_ecommerceo.com/view/screens/buttom_nav/account/account_screen.dart';
import 'package:quick_ecommerceo.com/view/screens/buttom_nav/cart/cart_screen.dart';
import 'package:quick_ecommerceo.com/view/screens/buttom_nav/home/home_screen.dart';
import 'package:quick_ecommerceo.com/view/screens/buttom_nav/message/messages_screen.dart';

class ButtomNavBar extends StatefulWidget {
  const ButtomNavBar({super.key});

  @override
  State<ButtomNavBar> createState() => _ButtomNavBarState();
}

class _ButtomNavBarState extends State<ButtomNavBar> {
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
