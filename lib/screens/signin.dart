// ignore_for_file: prefer_const_constructors

import 'package:college360/screens/homepage.dart';
import 'package:college360/screens/signup.dart';
import 'package:flutter/material.dart';

import '../widgets/input_filed.dart';

class signInScreen extends StatelessWidget {
  const signInScreen({Key? key}) : super(key: key);

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
              'Login to Your Account',
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
              child: GestureDetector(
                onTap: (){ Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const homePageScreen()),
                );},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Sign in",
                      style: TextStyle(color: Colors.white ,fontWeight: FontWeight.w500 , fontSize: 22),
                    )
                    ,
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text('Forgot Password?' , style: TextStyle(fontSize: 19 , fontWeight: FontWeight.w600),),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.center, children: [
              Text('Don\'t have an account yet? ' , style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
              GestureDetector(onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const signUpScreen()),
                );
              },child: Text('Sign Up' , style: TextStyle(decoration: TextDecoration.underline,fontSize: 20, fontWeight: FontWeight.w700),))
            ],)
          ],
        ),
      ),
    );
  }
}
