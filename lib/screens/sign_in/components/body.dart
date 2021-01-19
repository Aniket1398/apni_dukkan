

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_ecommerce/components/noAccountText.dart';
import 'package:flutter_ecommerce/components/socialCard.dart';
import 'package:flutter_ecommerce/screens/sign_in/components/signForm.dart';
import 'package:flutter/material.dart';
import '../../../size_config.dart';


class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}




  class _BodyState extends State<Body>{
  final FirebaseAuth _auth=FirebaseAuth.instance;
  FirebaseUser user;
  bool isloggedin=false;

  checkAuthentification() async{
    _auth.onAuthStateChanged.listen((user) {
      if(user==null){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> Body()));
      }
    });
  }
  getUser() async{
    FirebaseUser firebaseUser= await _auth.currentUser();
    await firebaseUser?.reload();
    firebaseUser=await _auth.currentUser();
    if(firebaseUser!=null){
      setState(() {
        this.user=firebaseUser;
        this.isloggedin=true;
      });
    }

  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sign in with mail and password  \nor continue connected apps",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    SocialCard(
                      icon: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                    SocialCard(
                      icon: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
  }


