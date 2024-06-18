import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snapkart/shooping/mainshoopping.dart';

class loginsuccessfull extends StatefulWidget {
  const loginsuccessfull({Key? key});

  @override
  State<loginsuccessfull> createState() => _loginsuccessfullState();
}

class _loginsuccessfullState extends State<loginsuccessfull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 170),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 130),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.check_circle_outline_rounded, color: Colors.green, size: 60)
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 93),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Successful!", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("You have successfully registered in")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Our app and start working in it.")
                  ],
                ),
              ),
              SizedBox(height: 230),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => mainshooping(),));
                },
                child: Container(
                  height: 45,
                  width: 260,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Start Shopping", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
