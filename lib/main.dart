import 'package:flutter/material.dart';
import 'package:mupi_project/Profile/student_profile.dart';
import 'package:mupi_project/Profile/teacher_profile.dart';
import 'package:mupi_project/Splash_Screen/splash_s1.dart';
import 'package:mupi_project/form/teacher_form.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        fontFamily: 'Nun'
      ),
        debugShowCheckedModeBanner: false,
        home: //Splash_s1(),
        StudentProfile(),
    );
  }
}
