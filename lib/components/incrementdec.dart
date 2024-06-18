import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snapkart/constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems =0;

  void increment() {
    setState(() {
      numOfItems++;
    });
  }

  void decrement() {
    setState(() {
      if (numOfItems > 0) {
        numOfItems--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineButton(
          icon: Icons.remove,
          press: decrement,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlineButton(
          icon: Icons.add,
          press: increment,
        ),
      ],
    );
  }
}

SizedBox buildOutlineButton({required IconData icon, required Function() press}) {
  return SizedBox(
    width: 50,
    height: 32,
    child: OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
      ),
      onPressed: press,
      child: Icon(icon),
    ),
  );
}
