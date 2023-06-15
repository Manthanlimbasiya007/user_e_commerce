import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_e_commerce/utils/fb_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  bool isLogin = false;

  void initState() {
    super.initState();
    isLogin = FirebaseHelper.firebaseHelper.checkUser();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 3),
      () => isLogin == true
          ? Get.offAndToNamed('/home')
          : Get.offAndToNamed('/signIn'),
    );
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   centerTitle: true,
        //   title: Text(
        //     "Splesh Screen",
        //     style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        //   ),
        // ),
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.shopping_cart,
                color: Colors.white,
                size: 160,
              ),
              Text(
                "Shopping Cart",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.white,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
