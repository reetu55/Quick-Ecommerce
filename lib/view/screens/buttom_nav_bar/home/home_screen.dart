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
    return const Scaffold(
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
              const HomeTitle(title: "Flash Sale"),
              TextButton(onPressed: () {}, child: const Text("Shop more")),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlashSaleProductCard(
                imageLink:
                    "https://5.imimg.com/data5/ANDROID/Default/2023/7/326598224/XL/AH/EJ/189033354/product-jpeg-500x500.jpg",
                mainPrice: "350tk",
                oldPrice: "500tk",
                discountPercent: "50",
              ),
              FlashSaleProductCard(
                imageLink:
                    "https://cdn.eastsideco.com/media/v3/blog/product-page-key-elements/apple-pdp.png",
                mainPrice: "500tk",
                oldPrice: "750tk",
                discountPercent: "40",
              ),
              FlashSaleProductCard(
                imageLink:
                    "https://5.imimg.com/data5/EQ/EG/FZ/SELLER-16603762/jeweler-product-photography-in-hyderabad.jpg",
                mainPrice: "850tk",
                oldPrice: "1200tk",
                discountPercent: "30",
              ),
            ],
          )
        ],
      ),
    );
  }
}

class FlashSaleProductCard extends StatelessWidget {
  const FlashSaleProductCard(
      {super.key,
      required this.imageLink,
      required this.mainPrice,
      required this.oldPrice,
      required this.discountPercent});
  final String imageLink;
  final String mainPrice;
  final String oldPrice;
  final String discountPercent;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                    height: 100, width: 100, fit: BoxFit.cover, imageLink),
              ),
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    color: Colors.orange),
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                child: Text(
                  "$discountPercent% offer",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text("$mainPrice"),
          Text(
            "$oldPrice",
            style: TextStyle(
                decoration: TextDecoration.lineThrough, color: Colors.grey),
          ),
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
        IconButton(onPressed: () {}, icon: const Icon(Icons.qr_code_scanner)),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.orange, width: 1),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                const SizedBox(width: 10),
                const Icon(Icons.camera_alt),
                const SizedBox(
                  width: 10,
                ),
                const Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search now", border: InputBorder.none),
                )),
                IconButton(onPressed: () {}, icon: const Icon(Icons.search))
              ],
            ),
          ),
        ),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.notifications_outlined))
      ],
    );
  }
}
