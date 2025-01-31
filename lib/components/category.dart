import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snapkart/components/mybody.dart';
import 'package:snapkart/constants.dart';
class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}
class _CategoriesState extends State<Categories> {
  List<String> categories = ["Hand bag", "Jewellery", "Footwear", "Dresses"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: SizedBox(
        height: 35,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color:selectedIndex == index ? kTextColor:kTextColor,

              ),
            ),
            Container(
              margin: EdgeInsets.only(top: kDefaultPaddin/4),
              height: 2,
              width: 30,
              color:selectedIndex == index ? Colors.black : Colors.transparent,
            )

          ],
        ),
      ),
    );
  }
}