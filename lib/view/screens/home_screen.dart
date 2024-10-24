import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

List<String> bannerImageLinks = [
  "https://www.shutterstock.com/image-vector/3d-yellow-great-discount-sale-260nw-2056851839.jpg",
  "https://www.shutterstock.com/image-vector/3d-shopping-sale-promotion-banner-260nw-2056851833.jpg",
  "https://www.shutterstock.com/image-vector/ecommerce-shopping-via-smartphone-easy-260nw-2255718065.jpg",
  "https://www.shutterstock.com/image-vector/shoppers-buying-gadgets-online-discount-260nw-1216923970.jpg",
  "https://www.shutterstock.com/image-vector/truck-delivery-service-food-package-260nw-1743802706.jpg",
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
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
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.notifications_outlined))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            CarouselSlider(
              items: [
                ...bannerImageLinks.map((value) {
                  return Builder(builder: (BuildContext context) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          value,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    );
                  });
                }),
              ],
              options: CarouselOptions(
                height: 180,
                enlargeCenterPage: false,
                aspectRatio: 16 / 9,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                viewportFraction: 0.8,
              ),
            )
          ],
        ),
      ),
    );
  }
}
