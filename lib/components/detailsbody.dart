import 'package:flutter/material.dart';
// import 'package:snapkart/components/Addtocartbyicon.dart';
import 'package:snapkart/components/detailsbody.dart';
import 'package:snapkart/components/favouritebutton.dart';
import 'package:snapkart/components/incrementdec.dart';
import 'package:snapkart/components/product_title_with_image.dart';
import 'package:snapkart/constants.dart';
import 'package:snapkart/models/product.dart';
import 'package:awesome_notifications/awesome_notifications.dart'; // Import Awesome Notifications

class DetailsBody extends StatefulWidget {
  final Product product;

  const DetailsBody({Key? key, required this.product}) : super(key: key);

  @override
  State<DetailsBody> createState() => _DetailsBodyState();
}

class _DetailsBodyState extends State<DetailsBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView( // Wrap Column with SingleChildScrollView
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.05,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Colors"),
                      Row(
                        children: [
                          ColorDot(color: Color(0xFF356C95), isSelected: true),
                          ColorDot(color: Color(0xFFF8C078)),
                          ColorDot(color: Color(0xFFA29B9B)),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(color: kTextColor),
                                children: [
                                  TextSpan(text: "\nSize\n"),
                                  TextSpan(
                                    text: "${widget.product.size} cm",
                                    style: Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text("A bag is a versatile accessory that "),
                              ],
                            ),
                            Row(
                              children: [
                                Text("serves both functional and fashion"),
                              ],
                            ),
                            Row(
                              children: [
                                Text("purpose  It comes in various shapes "),
                              ],
                            ),
                            Row(
                              children: [
                                Text("sizes, and materials to suit different needs"),
                              ],
                            ),
                            Row(
                              children: [
                                Text("and styles."),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CartCounter(),
                          Favouritebutton(),
                        ],
                      ),
                      SizedBox(height: kDefaultPaddin),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all(Size(50, 40)),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                                side: BorderSide(color: widget.product.color),
                              )),
                            ),
                            onPressed: () {
                              AwesomeNotifications().createNotification(
                                content: NotificationContent(
                                  id: 1,
                                  channelKey: "basic_channel",
                                  title: "Check Your cart",
                                  body: "Your item has been added to your cart",
                                ),
                              );
                            },
                            child: Icon(Icons.shopping_cart_outlined, color: widget.product.color),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              alignment: Alignment.center,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                              primary: widget.product.color,
                              minimumSize: Size(190, 40),
                            ),
                            onPressed: () {
                              AwesomeNotifications().createNotification(
                                content: NotificationContent(
                                  id: 1,
                                  channelKey: "basic_channel",
                                  title: "Check Your cart",
                                  body: "Buy Now",
                                ),
                              );
                            },
                            child: Text(
                              "BUY NOW",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: ProductTitleWithImage(product: widget.product),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ColorDot extends StatefulWidget {
  final Color color;
  final bool isSelected;

  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  State<ColorDot> createState() => _ColorDotState();
}

class _ColorDotState extends State<ColorDot> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: kDefaultPaddin / 4,
        right: kDefaultPaddin / 2,
      ),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        border: Border.all(
          color: widget.isSelected ? widget.color : Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: widget.color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
