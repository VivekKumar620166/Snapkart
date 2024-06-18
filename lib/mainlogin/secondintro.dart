import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class secondintroscreen extends StatefulWidget {
  const secondintroscreen({super.key});

  @override
  State<secondintroscreen> createState() => _secondintroscreenState();
}

class _secondintroscreenState extends State<secondintroscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (
          Column(
            children: [
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Container(
                  height: 340,
                  width: 300,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(80),
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30)
                    ),
                    child: Image.asset(
                      'assets/images/firstthird.jpg',
                      fit: BoxFit.cover, // Use BoxFit.cover to make the image responsive
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26),
                child: Row(
                  children: [
                    Text("20% Discount",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              SizedBox(height: 2,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26),
                child: Row(
                  children: [
                    Text("New Arrival Product",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              SizedBox(height: 2,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26),
                child: Row(
                  children: [
                    Text("Publish up your selfies to make yourself",style: TextStyle(fontSize: 13,color: Colors.grey),)
                  ],
                ),
              ),
              SizedBox(height: 2,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26),
                child: Row(
                  children: [
                    Text("more beautiful this app.",style: TextStyle(fontSize: 13,color: Colors.grey),)
                  ],
                ),
              ),
              SizedBox(height: 10,),
              GestureDetector(
                onTap: (){
                  print("next");
                  // Navigator.push(context,MaterialPageRoute(builder: (context) => ,))
                },

                child: Row(

                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        child:
                        Text("Next",style: TextStyle(fontSize: 15,color: Colors.grey),)
                    ),
                    SizedBox(width: 15,),
                    Container(

                      decoration:BoxDecoration(


                      ),
                      child: Icon(Icons.arrow_circle_right_rounded,color: Colors.black,size: 60,),
                    )
                  ],
                ),
              ),


            ],
          )

      ),
    );
  }
}
