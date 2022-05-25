import 'package:flutter/material.dart';
import 'package:mupi_project/Splash_Screen/splash_s1.dart';
import 'package:mupi_project/dropDown.dart';
import 'package:mupi_project/home_page.dart';
import 'package:sizer/sizer.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Splash_s1(),
        //HomePage()
      //dropDown()
    );
  }
}
