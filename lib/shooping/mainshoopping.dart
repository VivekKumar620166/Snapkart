import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:snapkart/components/mybody.dart';
import 'package:snapkart/constants.dart';
import 'package:snapkart/loginwork/MyOrder.dart';
import 'package:snapkart/shooping/Mydrwawer.dart';

class mainshooping extends StatefulWidget {
  const mainshooping({Key? key});

  @override
  State<mainshooping> createState() => _mainshoopingState();
}

class _mainshoopingState extends State<mainshooping> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.7, // Use 70% of screen width for drawer
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 50),
            child: Column(
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Icon(Icons.person_add_rounded, size: 40, color: Colors.white),
                        ),
                        SizedBox(width: kDefaultPaddin),
                        Container(
                          child: Text(
                            "Mr.Vivek ",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 45),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        "Profile Setting",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.1), // Use 20% of screen width for spacing
                      Icon(Icons.edit, color: Colors.black)
                    ],
                  ),
                ),
                Divider(),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Address",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    SizedBox(width: kDefaultPaddin),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.2),
                    Icon(Icons.home, color: Colors.black)
                  ],
                ),
                SizedBox(height: 10),
                Divider(),
                SizedBox(height: 10),
                Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Orders",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.3),
                        Icon(Icons.delivery_dining, color: Colors.black)
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Divider(),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Account Setting",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                    Icon(Icons.account_balance_sharp, color: Colors.black)
                  ],
                ),
                SizedBox(height: 10),
                Divider(),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Log Out",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width *0.2),
                    Icon(Icons.logout, color: Colors.black)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: buildAppbar(),
      body: MyBodyScreen(),
    );
  }

  AppBar buildAppbar() {
    return AppBar(
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      elevation: 0, // Remove shadow
      actions: [
        SizedBox(width: 50),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 30, // Adjust the height of the TextField
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.grey[200],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        hintText: 'Search',
                        suffixIcon: Icon(Icons.search),
                        hintStyle: TextStyle(fontSize: 15),
                        border: InputBorder.none,
                        isDense: true, // Reduces the height of the TextField
                        contentPadding: EdgeInsets.only(left: 10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/cart.svg',
            color: kTextColor,
          ),
        ),
        SizedBox(width: 8),
        TextButton(
          onPressed: () {},
          child: Icon(Icons.notification_add, color: Colors.black),
        ),
        SizedBox(width: kDefaultPaddin),
      ],
    );
  }
}
