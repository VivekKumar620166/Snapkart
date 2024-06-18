import 'package:flutter/material.dart';
import 'package:snapkart/loginwork/Termandcond.dart';
import 'package:snapkart/loginwork/successfulllogin.dart';

class onesignpage extends StatefulWidget {
  const onesignpage({Key? key}) : super(key: key);

  @override
  State<onesignpage> createState() => _onesignpageState();
}

class _onesignpageState extends State<onesignpage> {
  void printMessage() {
    print('user accepted the agreement');
  }

  bool isPassVisible = true;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  bool is_checked = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          key: formkey,
          child: Column(
              children: [
                SizedBox(height: 50),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 65),
                      child: Text(
                        "SnapKart",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 43),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                        "Create an new account",
                        style: TextStyle(
                            fontSize: 13, color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28),
                      child: Text(
                        "User Name",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: IconButton(
                        icon: Icon(Icons.person, color: Colors.black),
                        onPressed: () {
                          print("access found");
                        },
                      ),
                      // suffixIcon: Icon(Icons.check_circle_sharp,color: Colors.black,)
                    ),
                    validator: (val) {
                      if (val?.isEmpty ?? true) {
                        return "User Name is required";
                      } else {
                        return null;
                      }
                    },

                  ),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28),
                      child: Text(
                        "Email",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: IconButton(
                        icon: Icon(Icons.account_box_outlined, color: Colors.black),
                        onPressed: () {
                          print("access found");
                        },
                      ),
                    ),
                    validator: (val) {
                      if (val?.isEmpty ?? true) {
                        return "Email is required";
                      } else if (!RegExp(r"^[a-zA-Z0-9._-]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(val!)) {
                        return "Enter a valid email address";
                      } else if (!val.contains('@') || !val.contains('.com')) {
                        return "Enter a valid email address";
                      } else {
                        return null;
                      }
                    },

                  ),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28),
                      child: Text(
                        "Password",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child:
                  TextFormField(
                    obscureText: !isPassVisible, // Use obscureText property to hide/show password
                    decoration: InputDecoration(

                      prefixIcon: Icon(Icons.lock),

                    ),
                    validator: (val) {
                      if (val?.isEmpty ?? true) {
                        return "Password is required";
                      } else {
                        return null;
                      }
                    },
                  ),

                  ),
                SizedBox(height: 25),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28),
                      child: Text(
                        "Confirm Password",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child:
                  TextFormField(
                    obscureText: !isPassVisible, // Use obscureText property to hide/show password
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(isPassVisible ? Icons.visibility_off : Icons.visibility),
                        onPressed: () {
                          setState(() {
                            isPassVisible = !isPassVisible;
                          });
                        },
                      ),
                      prefixIcon: Icon(Icons.lock),

                    ),
                    validator: (val) {
                      if (val?.isEmpty ?? true) {
                        return "Password is required";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),

                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 34),
                      child: Checkbox(
                        value: is_checked,
                        onChanged: (val) {

                          setState(() {
                            is_checked = val!;

                          });
                        },
                      ),
                    ),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Termandcond(),));

                        },
                        child: Container(child: Text("Our Term and Conditions",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),)),




                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  width: 260,
                  height:45,

                  child:
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: is_checked
                        ? () {
                      if (formkey.currentState?.validate() ?? false) {
                        // Perform login logic here
                        print("Login successful");
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => loginsuccessfull(),));

                      }
                    }
                        : null,
                    child: const Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ),
                ),



              ],
            ),
        ),
        ),
      );

  }
}
