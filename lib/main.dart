import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mupi_project/Information/student_info.dart';
import 'package:mupi_project/Information/teacher_info.dart';
import 'package:mupi_project/Login%20Page/login_page1.dart';
import 'package:mupi_project/Login%20Page/login_page2.dart';
import 'package:mupi_project/Profile/studentInfo_profile.dart';
import 'package:mupi_project/Profile/student_profile.dart';
import 'package:mupi_project/Profile/teacher_profile.dart';
import 'package:mupi_project/Splash_Screen/splash_s1.dart';
import 'package:mupi_project/form/student_form.dart';
import 'package:mupi_project/form/teacher_form.dart';
import 'package:mupi_project/home_page.dart';
import 'package:mupi_project/testFile.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      builder: (context, child) => MaterialApp(
          theme: ThemeData(
              backgroundColor: Color(0xffFFFFFF),
              fontFamily: 'Nun'
          ),
          debugShowCheckedModeBanner: false,
          home:
            //Splash_s1()
          StudentProfile()
        //StudentInfo()
        //TeacherInfo()
          //TeacherProfile()
         //HomePage()
        //TestFile()
        //StudentInfo()

      ),
      designSize: const Size(375, 812),
    );
  }
}
