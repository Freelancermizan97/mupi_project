import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mupi_project/home_page.dart';
import 'package:mupi_project/widgets/textField_widget.dart';

class TeacherForm extends StatefulWidget {
  const TeacherForm({Key? key}) : super(key: key);

  @override
  State<TeacherForm> createState() => _TeacherFormState();
}

class _TeacherFormState extends State<TeacherForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      //padding: EdgeInsets.only(top: 150),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 50.h),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(120.r),
                                boxShadow: [
                                  //bottom right shadow is darker shadow
                                  BoxShadow(
                                      color: Colors.grey.shade500,
                                      offset: const Offset(5, 5),
                                      blurRadius: 15,
                                      spreadRadius: 1
                                  ),

                                  //top left shaow lighter
                                  const BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(-5, -5),
                                    blurRadius: 15,
                                    spreadRadius: 1,
                                  ),
                                ]
                            ),
                            child: CircleAvatar(
                                backgroundColor: Color(0xffF4F4F4),
                                radius: 65.r,
                                child: Image(
                                  image: AssetImage('images/icon2.png'),
                                  height: 80.h,
                                  width: 80.w,
                                )
                            ),
                          ),
                          SizedBox(height: 15.h),
                          Text('Teacher', style: TextStyle(
                              color: Color(0xff494A4B), fontSize: 18.sp),),
                        ],
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Container(
                      child: Column(
                        children: [
                          textFieldCustom(
                              size1: 50.h,
                              size2: MediaQuery.of(context).size.width.w,
                              text: "Enter your name :"
                          ),
                          SizedBox(height: 5.h),

                          Row(
                            children: [
                              textFieldCustom(
                                  size1: 50.h,
                                  size2: 220.w,
                                  text: "Department :"
                              ),
                              SizedBox(width: 5.w),
                              textFieldCustom(
                                  size1: 50.h,
                                  size2: 100.w,
                                  text: "Shift"
                              ),
                            ],
                          ),
                          SizedBox(height: 5.h),

                          textFieldCustom(
                              size1: 50.h,
                              size2: MediaQuery.of(context).size.width.w,
                              text: "Gmail :"
                          ),
                          SizedBox(height: 5.h),
                          textFieldCustom(
                              size1: 50.h,
                              size2: MediaQuery.of(context).size.width.w,
                              text: "+8801 :"
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),


              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 50.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            border: Border.all(
                                color: Color(0xff636363),
                                width: 1.0.w
                            )
                        ),
                        child: Center(
                          child: Text('Back', style: TextStyle(fontSize: 17.sp)),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                      },
                      child: Container(
                        height: 50.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            color: Color(0xff00BFA6),
                            borderRadius: BorderRadius.circular(15.r),
                            border: Border.all(
                                color: Color(0xff00BFA6),
                                width: 1.0.w
                            )
                        ),
                        child: Center(
                          child: Text('Submit', style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.bold),),
                        ),
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
