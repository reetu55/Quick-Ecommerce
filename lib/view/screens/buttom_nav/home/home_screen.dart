import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quick_ecommerceo.com/view/screens/buttom_nav/home/components/home_banner_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentsSelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            HomeAppBar(),
            SizedBox(
              height: 10,
            ),
            HomeBannerSection(),
          ],
        ),
      ),
    );
  }
}

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 10),
        IconButton(onPressed: () {}, icon: Icon(Icons.qr_code_scanner)),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.orange, width: 1),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                SizedBox(width: 10),
                Icon(Icons.camera_alt),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search now", border: InputBorder.none),
                )),
                IconButton(onPressed: () {}, icon: Icon(Icons.search))
              ],
            ),
          ),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.notifications_outlined))
      ],
    );
  }
}
