import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mupi_project/form/student_form.dart';
import 'package:mupi_project/form/teacher_form.dart';
import 'package:mupi_project/widgets/textField_widget.dart';

class Login_Page2 extends StatefulWidget {
  const Login_Page2({Key? key}) : super(key: key);

  @override
  _login_Page2State createState() => _login_Page2State();
}

class _login_Page2State extends State<Login_Page2> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20.r, top: 0.r, right: 20.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Padding(
                      padding: EdgeInsets.only(top: 15.r, bottom: 30),
                      child: Text('You are a', style: TextStyle( fontSize: 20.sp, fontFamily: 'Nun', color: Color(0xff000000)),),
                    ),

                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(top: 10.r, right: 15.r, bottom: 15.r),
                            decoration: BoxDecoration(
                              color: Color(0xffF4F4F4),
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    padding: EdgeInsets.only(top: 25.r),
                                    child: Image(
                                      image: AssetImage('images/icon2.png',),
                                    )
                                ),
                                SizedBox(height: 15.h,),
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>TeacherForm()));
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15.r),
                                        color: Color(0xffB3BCBB)
                                    ),

                                    alignment: Alignment.center,
                                    padding: EdgeInsets.only(top: 8.r, bottom: 8.r),
                                    child: Text('Teacher', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.sp, fontFamily: 'Nun', color: Colors.white),),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20.w),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(top: 10.r, bottom: 15.r, left: 15.r),
                            decoration: BoxDecoration(
                              color: Color(0xffF4F4F4),
                              borderRadius: BorderRadius.circular(15.r),

                            ),
                            child: Column(
                              children: [
                                Container(
                                    padding: EdgeInsets.only(top: 20.r),
                                    child: const Image(
                                      image: AssetImage('images/icon1.png',),
                                    )
                                ),
                                SizedBox(height: 10.h,),
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentForm()));
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15.r),
                                        color: Color(0xff00BFA6)
                                    ),

                                    alignment: Alignment.center,
                                    padding: EdgeInsets.only(top: 8.r, bottom: 8.r),
                                    child: Text('Student', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.sp, fontFamily: 'Nun', color: Colors.white),),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),


                      ],
                    ),




                  ],
                ),
              ),







            ],
          ),
        ),
      ),
    );
  }

}
