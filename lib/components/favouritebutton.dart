import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class Favouritebutton extends StatefulWidget {
  const Favouritebutton({super.key});

  @override
  State<Favouritebutton> createState() => FavouritebuttonState();
}

class FavouritebuttonState extends State<Favouritebutton> {
  @override
  Widget build(BuildContext context) {
    return
      TextButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.all(5)),
          minimumSize: MaterialStateProperty.all(Size(32, 32)),
          backgroundColor: MaterialStateProperty.all(Color(0xFFFF6464)),
          shape: MaterialStateProperty.all(CircleBorder()),
        ),
        onPressed: () {
          // Add your onPressed logic here
        },
        child: SvgPicture.asset("assets/icons/heart.svg"),
      );

  }
}
