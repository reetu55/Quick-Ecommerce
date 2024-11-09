import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

List<String> bannerImageLinks = [
  "https://www.shutterstock.com/image-vector/3d-yellow-great-discount-sale-260nw-2056851839.jpg",
  "https://www.shutterstock.com/image-vector/3d-shopping-sale-promotion-banner-260nw-2056851833.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEtbgtXHOolm4xR5VMf-ZMUjVg5kJ7IOtr0t4H-RwTvRAaxQMwraAyaHRIqK3j7F60EzE&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAOIePnRjf5sth1s5IBeUrrqLPCJ1PS867fGvI9UsE6rQp7WqyjMWQolhAZOqQwua_uXA&usqp=CAU",
  "https://www.shutterstock.com/image-vector/online-shopping-social-media-mobile-260nw-2166691827.jpg",
];

class HomeBannerSection extends StatefulWidget {
  const HomeBannerSection({super.key});

  @override
  State<HomeBannerSection> createState() => _HomeBannerSectionState();
}

class _HomeBannerSectionState extends State<HomeBannerSection> {
  int currentsSelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            onPageChanged: (index, reason) {
              currentsSelectedIndex = index;
              setState(() {});
            },
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            viewportFraction: 0.8,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...bannerImageLinks.asMap().entries.map((value) {
              return Container(
                width: 9.0,
                height: 9.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentsSelectedIndex == value.key
                        ? Colors.red
                        : Colors.grey),
              );
            }),
            Container(
              height: 10,
              width: 10,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.red),
            ),
          ],
        ),
      ],
    );
  }
}
