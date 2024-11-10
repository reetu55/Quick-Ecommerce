import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quick_ecommerceo.com/view/screens/buttom_nav_bar/home/components/deal_section.dart';
import 'package:quick_ecommerceo.com/view/screens/buttom_nav_bar/home/components/home_banner_section.dart';
import 'package:quick_ecommerceo.com/view/screens/buttom_nav_bar/home/components/home_title.dart';

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
            Dealsection(),
            FlashSaleSection(),
          ],
        ),
      ),
    );
  }
}

class FlashSaleSection extends StatelessWidget {
  const FlashSaleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeTitle(title: "Flash Sale"),
              TextButton(onPressed: () {}, child: Text("Shop more")),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [productCard(), productCard(), productCard()],
          )
        ],
      ),
    );
  }

  Widget productCard() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
                height: 80,
                width: 80,
                fit: BoxFit.cover,
                "https://5.imimg.com/data5/ANDROID/Default/2023/7/326598224/XL/AH/EJ/189033354/product-jpeg-500x500.jpg"),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("500 tk"),
                Text(
                  "1000tk",
                  style: TextStyle(decoration: TextDecoration.lineThrough),
                ),
              ],
            ),
          )
        ],
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
