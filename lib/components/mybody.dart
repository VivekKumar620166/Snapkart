import 'package:flutter/material.dart';
import 'package:snapkart/components/category.dart';
import 'package:snapkart/components/details.dart';
import 'package:snapkart/components/item_card.dart';
import 'package:snapkart/constants.dart';
import 'package:snapkart/models/product.dart';

class MyBodyScreen extends StatelessWidget {
  const MyBodyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return
      Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:kDefaultPaddin),
          child: Text(
            "Women",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ),
        Categories(),
        Expanded(
          child:
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 18,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ItemCard(product: products[index],
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailsScreen(
                              product: products[index]),
                    ),
                  );
                }
              ),

            ),
          ),
        ),


      ],
    );
  }
}


