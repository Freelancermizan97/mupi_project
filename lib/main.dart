import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mupi_project/Information/student_info.dart';
import 'package:mupi_project/Information/teacher_info.dart';
import 'package:mupi_project/Login%20Page/login_page1.dart';
import 'package:mupi_project/Login%20Page/login_page2.dart';
import 'package:mupi_project/Notice/noticePage.dart';
import 'package:mupi_project/Notice/notice_page2.dart';
import 'package:mupi_project/Profile/studentInfo_profile.dart';
import 'package:mupi_project/Profile/Student%20Main%20Profile/student_profile.dart';
import 'package:mupi_project/Profile/Teacher%20Main%20Profile/teacher_profile.dart';
import 'package:mupi_project/Splash_Screen/splash_s1.dart';
import 'package:mupi_project/Suggesion/suggestion_page.dart';
import 'package:mupi_project/Suggesion/suggestion_page2.dart';
import 'package:mupi_project/Suggesion/suggestion_page3.dart';
import 'package:mupi_project/Suggesion/suggestion_page_s4.dart';
import 'package:mupi_project/Suggesion/suggestion_page_s5.dart';
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
            Splash_s1()
        //SuggestionPageS5()

        //NoticePage()
       // NoticePage2()
          //StudentProfile()
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
