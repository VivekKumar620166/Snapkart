import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:snapkart/components/detailsbody.dart';
import 'package:snapkart/constants.dart';
import 'package:snapkart/models/product.dart';

class DetailsScreen extends StatefulWidget {
  final Product product;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.product.color,
      appBar: buildAppBar(context),
      body: DetailsBody(product: widget.product),

    );
  }
  AppBar buildAppBar(BuildContext context){

  return AppBar(
  leading: GestureDetector(
  onTap: (){
  Navigator.pop(context);
  },
  child:
  Icon(Icons.arrow_back,color: Colors.white,)
  ),
  backgroundColor: widget.product.color,
  elevation: 10,
  actions: [
  IconButton(onPressed: (){},
  icon: SvgPicture.asset("assets/icons/search.svg")),
  IconButton(onPressed: (){},
  icon: SvgPicture.asset("assets/icons/cart.svg")),
  SizedBox(width: kDefaultPaddin,),
  ],
  );
  }
}
