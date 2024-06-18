import 'package:flutter/material.dart';

class Termandcond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        leading: GestureDetector(

            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
        title:
      Text(
        'Terms and Conditions',
        style: TextStyle(
          fontSize:22,
          fontWeight: FontWeight.bold,
        ),
      ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Text(
            '1. Data Privacy: Your privacy is important to us...',
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 8.0),
          Text(
            '2. Information We Collect: We collect information that you provide to us...',
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 8.0),
          Text(
            '3. How We Use Your Information: We use your information to process your orders...',
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 8.0),
          Text(
            '4. Data Security: We take appropriate measures to protect your information...',
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 8.0),
          Text(
            '5. Data Retention: We will retain your information for as long as necessary...',
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 8.0),
          Text(
            '6. Your Rights: You have the right to access, update, or delete your information...',
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 8.0),
          Text(
            '7. Changes to This Privacy Policy: We may update our Privacy Policy from time to time...',
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 8.0),
          Text(
            '8. Contact Us: If you have any questions about our Privacy Policy, please contact us at snapkartcontact@email.com',
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 16.0),
          Text(
            'By using our app, you agree to the terms and conditions outlined in this Privacy Policy...',
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 16.0),
          Container(

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.black
              ),
              child: TextButton(onPressed: (){
                Navigator.pop(context);

              }, child: Text("Back",style: TextStyle(color: Colors.white,fontSize: 18),)))
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Termandcond(),
  ));
}
