import 'package:college360/screens/signin.dart';
import 'package:flutter/material.dart';

import '../widgets/input_filed.dart';

class signUpScreen extends StatelessWidget {
  const signUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        elevation: 0,
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 250,
            ),
            Text(
              'Create Your Account',
              style: TextStyle(fontSize: 29, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 14,
            ),

            fieldMenu(text: 'email', icon: Icons.email),
            fieldMenu(text: 'password', icon: Icons.password),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 58.0,
              width: 280.0,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(40.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white ,fontWeight: FontWeight.w500 , fontSize: 22),
                  )
                  ,

                ],
              ),
            ),

            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.center, children: [
              Text('Already have an Account? ' , style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
              GestureDetector(onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const signInScreen()),
                );

              },child: Text('Sign In' , style: TextStyle(decoration: TextDecoration.underline,fontSize: 20, fontWeight: FontWeight.w700),))
            ],)
          ],
        ),
      ),
    );
  }
}
