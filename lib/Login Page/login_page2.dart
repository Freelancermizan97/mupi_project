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
          padding: EdgeInsets.only(left: 20.r, top: 10.r, right: 20.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Tell Us Abuot You', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.sp, color: Color(0xff000000)),),
                    Padding(
                      padding: EdgeInsets.only(top: 8.r),
                      child: Text('This is how teacher & student on Teachmint will get to khow you', style: TextStyle( fontSize: 14.sp, fontFamily: 'Nun', color: Color(0xff687A7D)),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15.r),
                      child: Text('You are a', style: TextStyle( fontSize: 17.sp, fontFamily: 'Nun', color: Color(0xff000000)),),
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

                    Text('Name', style: TextStyle(fontFamily: 'Nun', fontSize: 16.sp, color: Color(0xff3D3D3D)),),

                    SizedBox(height: 10.h),

                    textFieldCustom(
                        size1: 50.h,
                        size2: MediaQuery.of(context).size.width.w,
                        text: "Enter your name  :"
                    ),

                    SizedBox(height: 5.h),

                    Row(
                      children: [
                        textFieldCustom(
                            size1: 50.h,
                            size2: 200.w,
                            text: '+880 01'
                        ),

                        SizedBox(width: 10.w),
                        textFieldCustom(
                            size1: 50.h,
                            size2: 120.w,
                            text: 'Blood group'
                        ),

                      ],
                    ),

                    SizedBox(height: 10.h),

                    textFieldCustom(
                        size1: 50.h,
                        size2: MediaQuery.of(context).size.width.w,
                        text: 'Gmail :'
                    ),
                    SizedBox(height: 20.h,),

                    Row(
                      children: [
                        Container(
                          height:80.h,
                          width: 80.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xffF4F4F4),
                          ),

                        ),
                        SizedBox(width: 20,),
                        Text('Add profile picture', style: TextStyle(fontSize: 15, color: Color(0xff00BFA6), fontFamily: 'Nun' ),),
                        SizedBox(width: 6,),
                        Icon(Icons.arrow_forward, color: Color(0xff00BFA6),),
                      ],
                    ),
                  ],
                ),
              ),


              Container(
                padding: EdgeInsets.only(bottom: 10.r),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10.r, top: 5.r, ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              child: Row(
                                children: [
                                  Text('Gate importance update on ', style: TextStyle(fontFamily: 'Nun', color: Color(0xffB0B0B0), fontSize: 14.sp),),
                                  Text('MUPI group', style: TextStyle(fontFamily: 'Nun', color: Color(0xff00BFA6)),),
                                ],
                              )),


                          Container(
                            height: 10,
                            child:Switch(
                              onChanged: (isEnable){},
                              value: true,
                              activeColor: Color(0xff00BFA6),
                            ) ,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> StudentForm()));
                      },
                      child: Container(
                          height: 50.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: Color(0xff00BFA6),

                          ),
                          child: Center(
                            child: Text('Continue', style: TextStyle(fontFamily: 'Nun', color: Colors.white, fontSize: 18.sp, fontWeight: FontWeight.w800),),
                          )
                      ),
                    ),
                  ],
                ),
              )




            ],
          ),
        ),
      ),
    );
  }

}
