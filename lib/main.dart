import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_e_commerce/screen/view/home_screen.dart';
import 'package:user_e_commerce/screen/view/signin_screen.dart';
import 'package:user_e_commerce/screen/view/signup_screen.dart';
import 'package:user_e_commerce/screen/view/splesh_screen.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/',
          page: () => SplashScreen(),
        ),
        GetPage(
          name: '/signIn',
          page: () => SignInScreen(),
        ),
        GetPage(
          name: '/signUp',
          page: () => SignUpScreen(),
        ),
        GetPage(
          name: '/home',
          page: () => HomeScreen(),
        ),
      ],
    ),
  );
}
