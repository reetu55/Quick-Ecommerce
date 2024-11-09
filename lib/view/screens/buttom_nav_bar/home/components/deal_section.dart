import 'package:flutter/material.dart';
import 'package:quick_ecommerceo.com/view/screens/buttom_nav_bar/home/components/home_title.dart';

class Dealsection extends StatelessWidget {
  const Dealsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeTitle(title: "New Deals Everyday"),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "7% OFF",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                      ),
                    ),
                    Text(
                      "Min.spend  399",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Colors.amber,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Quick Voucher",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                      ),
                    ),
                    Container(
                      width: 120,
                      child: Text(
                        "11-06-2024 to 11-07-2024",
                        style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Collect all"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          HomeTitle(title: "Best Deals"),
          Container(
            color: Colors.red,
            height: 100,
            width: 200,
          ),
        ],
      ),
    );
  }
}
