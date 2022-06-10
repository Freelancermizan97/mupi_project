import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mupi_project/Profile/Student%20Main%20Profile/student_profile.dart';
import 'package:mupi_project/Profile/Teacher%20Main%20Profile/teacher_profile.dart';

class TeacherProfileEdit extends StatefulWidget {
  const TeacherProfileEdit({Key? key}) : super(key: key);

  @override
  State<TeacherProfileEdit> createState() => _TeacherProfileEditState();
}

class _TeacherProfileEditState extends State<TeacherProfileEdit> {
  Color primeryColor = Color(0xff00BFA6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding (
                padding: EdgeInsets.only(top: 20.r, left: 20.r, right: 20.r),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: EdgeInsets.only(top: 5.r, bottom: 10.r),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                            size: 20.sp,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>TeacherProfile()));
                      },
                      child: Container(
                          child: Icon(Icons.save_alt,color: primeryColor,)
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(120.r),
                    boxShadow: [
                      //bottom right shadow is darker shadow
                      BoxShadow(
                          color: Colors.grey.shade400,
                          offset: const Offset(5, 10),
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
                  backgroundColor: Color(0xffFBFBFB),
                  radius: 50.r ,
                  child: CircleAvatar(
                    radius: 50.r,
                    backgroundColor: Color(0xffFBFBFB),
                    backgroundImage: AssetImage(''),
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
              //Text("Abu Sayed", style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),),
              SizedBox(height: 50.h,),

              infoCard(
                  name: '',
                  fatherName: '',
                  motherName: '',
                  roll: '',
                  department: '',
                  reg: '',
                  session: '',
                  religion: '',
                  number: '',
                  location: "",
                  gmail: ''
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget infoCard ({name, fatherName, motherName, department,roll, reg, session, religion, number, gmail, location, }){
    //Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Divider(
          height: 2.h,
          color: Colors.grey,
        ),
        SizedBox(height: 8.h,),
        Padding(
          padding: EdgeInsets.only(left: 15..r),
          child: Row(
            children: [
              Text('Enter Your Full Name : ', style: TextStyle(fontSize: 14.sp, color: Color(0xffB6B7B7)),),
              Text(name, style: TextStyle(fontSize: 16.sp, color: primeryColor),),
            ],
          ),
        ),
        SizedBox(height: 8.h,),
        Divider(
          height: 3.h,
          color: Colors.grey,
        ),

        SizedBox(height: 8.h),
        Padding(
          padding: EdgeInsets.only(left: 15.r),
          child: Row(
            children: [
              Text('Department : ', style: TextStyle(fontSize: 16.sp,color: Color(0xffB6B7B7)),),
              Text(session, style: TextStyle(fontSize: 16.sp, color: primeryColor),),
            ],
          ),
        ),

        SizedBox(height: 8.h),

        Divider(
          height: 1.h,
          color: Colors.grey,
        ),
        SizedBox(height: 8.h),
        Padding(
          padding: EdgeInsets.only(left: 15.r),
          child: Row(
            children: [
              Text('Education :', style: TextStyle(fontSize: 16.sp,color: Color(0xffB6B7B7)),),
              Text(reg, style: TextStyle(fontSize: 16.sp, color: primeryColor),),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        Divider(
          height: 1.h,
          color: Colors.grey,
        ),
        SizedBox(height: 8.h),
        Padding(
          padding: EdgeInsets.only(left: 15.r),
          child: Row(
            children: [
              Text('Positon: ', style: TextStyle(fontSize: 16.sp,color: Color(0xffB6B7B7)),),
              Text(session, style: TextStyle(fontSize: 16.sp, color: primeryColor),),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        Divider(
          height: 1.h,
          color: Colors.grey,
        ),
        SizedBox(height: 8.h),
        Padding(
          padding: EdgeInsets.only(left: 15.r),
          child: Row(
            children: [
              Text('Religion: ', style: TextStyle(fontSize: 16.sp,color: Color(0xffB6B7B7)),),
              Text(religion, style: TextStyle(fontSize: 16.sp, color: primeryColor),),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        Divider(
          height: 3.h,
          color: Colors.grey,
        ),
        SizedBox(height: 8.h),
        Padding(
          padding: EdgeInsets.only(left: 15.r),
          child: Row(
            children: [
              Text('Number: ', style: TextStyle(fontSize: 16.sp,color: Color(0xffB6B7B7)),),
              Text(number, style: TextStyle(fontSize: 16.sp,color: primeryColor),),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        Divider(
          height: 4.h,
          color: Colors.grey,
        ),
        SizedBox(height: 8.h),
        Padding(
          padding: EdgeInsets.only(left: 15.r),
          child: Row(
            children: [
              Text('Gmail: ', style: TextStyle(fontSize: 16.sp,color: Color(0xffB6B7B7)),),
              Text(gmail, style: TextStyle(fontSize: 16.sp, color: primeryColor),),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        Divider(
          height: 3.h,
          color: Colors.grey,
        ),
        SizedBox(height: 8.h),
        Padding(
          padding: EdgeInsets.only(left: 15.r),
          child: Row(
            children: [
              Text('Location: ', style: TextStyle(fontSize: 16.sp,color: Color(0xffB6B7B7) ),),
              Text(location, style: TextStyle(fontSize: 16.sp, color: primeryColor),),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        Divider(
          height: 1.h,
          color: Colors.grey,
        ),

      ],
    );
  }

}
