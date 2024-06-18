import 'package:flutter/material.dart';
import 'package:snapkart/loginwork/Termandcond.dart';
import 'package:snapkart/loginwork/successfulllogin.dart';
import 'package:snapkart/shooping/mainshoopping.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              SizedBox(height: 85),
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
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Text(
                      "Welcome!",
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
                      "please login or sign up to continue our app",
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
                child: TextFormField(
                  obscureText: isPassVisible,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(isPassVisible ? Icons.visibility_off : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          isPassVisible = !isPassVisible;
                        });
                      },
                    ),
                    prefixIcon: IconButton(
                      icon: Container(
                        child: Icon(Icons.lock_outline, color: Colors.black),
                      ),
                      onPressed: () {
                        print("access found");
                      },
                    ),
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
              SizedBox(height: 5),

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
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          " Our Term & Condition",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(height: 35),
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
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => mainshooping (),));

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
              SizedBox(height: 5),
              // Text("or",style: TextStyle(fontSize: 20,),),
              // SizedBox(height: 5),
              // Container(
              //   height: 45,
              //   width: 260,
              //   decoration: BoxDecoration(
              //       color: Colors.blue,
              //       borderRadius: BorderRadius.circular(25)
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Container(
              //           child: Icon(Icons.facebook_sharp,color: Colors.white,)
              //       ),
              //       SizedBox(width: 5,),
              //       Container(
              //         child: Text("Continue with Facebook",style: TextStyle(color: Colors.white,fontSize: 16),),
              //       )
              //     ],
              //   ),
              // ),
              // SizedBox(height: 18),
              // Container(
              //   height: 45,
              //   width: 260,
              //   decoration: BoxDecoration(
              //       color: Colors.white24,
              //       borderRadius: BorderRadius.circular(25),
              //       border: Border.all(color: Colors.black12)
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Container(
              //           child: Icon(Icons.g_mobiledata,color: Colors.black,size: 40,)
              //       ),
              //       SizedBox(width: 5,),
              //       Container(
              //         child: Text("Continue with Google",style: TextStyle(color: Colors.grey,fontSize: 16),),
              //       )
              //     ],
              //   ),
              // ),
              // SizedBox(height: 15),
              // Container(
              //   height: 45,
              //   width: 260,
              //   decoration: BoxDecoration(
              //       color: Colors.white24,
              //       borderRadius: BorderRadius.circular(25),
              //       border: Border.all(color: Colors.black12)
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Container(
              //           child: Icon(Icons.apple,color: Colors.black,size: 30,)
              //       ),
              //       SizedBox(width:5,),
              //       Container(
              //         child: Text("Continue with Apple",style: TextStyle(color: Colors.grey,fontSize: 16),),
              //       )
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
