import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mupi_project/Profile/student_profile.dart';

class StudentProfileEdit extends StatefulWidget {
  const StudentProfileEdit({Key? key}) : super(key: key);

  @override
  State<StudentProfileEdit> createState() => _StudentProfileEditState();
}

class _StudentProfileEditState extends State<StudentProfileEdit> {

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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentProfile()));
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
                    backgroundImage: AssetImage('images/sayedd.jpg'),
                  ),
                ),
              ),
              SizedBox(height: 10.h,),
              Text("Abu Sayed", style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),),
              SizedBox(height: 40.h,),

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
        ),
        SizedBox(height: 8.h,),
        Padding(
          padding: EdgeInsets.only(left: 15..r),
          child: Row(
            children: [
              Text('Enter Your Name: ', style: TextStyle(fontSize: 14.sp, color: Color(0xffB6B7B7)),),
              Text(name, style: TextStyle(fontSize: 16.sp, color: primeryColor),),
            ],
          ),
        ),
        SizedBox(height: 8.h,),
        Divider(
          height: 2.h,
        ),
        SizedBox(height: 8.h,),
        Padding(
          padding: EdgeInsets.only(left: 15.r),
          child: Row(
            children: [
              Text('Father name: ', style: TextStyle(fontSize: 14.sp,color: Color(0xffB6B7B7)),),
              Text(department, style: TextStyle(fontSize: 16.sp, color: primeryColor),),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        Divider(
          height: 2.h,
        ),
        SizedBox(height: 8.h),
        Padding(
          padding: EdgeInsets.only(left: 15.r),
          child: Row(
            children: [
              Text('Mother name: ', style: TextStyle(fontSize: 14.sp,color: Color(0xffB6B7B7)),),
              Text(motherName, style: TextStyle(fontSize: 16.sp, color: primeryColor),),
            ],
          ),
        ),
        Divider(
          height: 2.h,
        ),
        SizedBox(height: 8.h),
        Padding(
          padding: EdgeInsets.only(left: 15.r),
          child: Row(
            children: [
              Text('Department: ', style: TextStyle(fontSize: 16.sp,color: Color(0xffB6B7B7)),),
              Text(session, style: TextStyle(fontSize: 16.sp, color: primeryColor),),
            ],
          ),
        ),

        SizedBox(height: 8.h),
        Divider(
          height: 2.h,
        ),
        SizedBox(height: 1.h),
        Padding(
          padding: EdgeInsets.only(left: 1.r),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50.h,
                width: 120.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                        width: 1.w,
                        color: Color(0xffC6C6C6)
                    )
                ),
                child: Center(
                  child: Text('Bord Roll', style: TextStyle(fontSize: 13.sp,color: Color(0xffB6B7B7)),),
                ),
              ),
              Container(
                height: 50.h,
                width: 100.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                        width: 1.w,
                        color: Color(0xffC6C6C6)
                    )
                ),
                child: Center(
                  child: Text('Shift', style: TextStyle(fontSize: 13.sp,color: Color(0xffB6B7B7)),),
                ),
              ),
              Container(
                height: 50.h,
                width: 120.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                        width: 1.w,
                        color: Color(0xffC6C6C6)
                    )
                ),
                child: Center(
                  child: Text('Semester', style: TextStyle(fontSize: 13.sp,color: Color(0xffB6B7B7)),),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 1.h),
        Divider(
          height: 2.h,
        ),
        SizedBox(height: 8.h),
        Padding(
          padding: EdgeInsets.only(left: 15.r),
          child: Row(
            children: [
              Text('Reg No: ', style: TextStyle(fontSize: 16.sp,color: Color(0xffB6B7B7)),),
              Text(reg, style: TextStyle(fontSize: 16.sp, color: primeryColor),),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        Divider(
          height: 2.h,
        ),
        SizedBox(height: 8.h),
        Padding(
          padding: EdgeInsets.only(left: 15.r),
          child: Row(
            children: [
              Text('Session: ', style: TextStyle(fontSize: 16.sp,color: Color(0xffB6B7B7)),),
              Text(session, style: TextStyle(fontSize: 16.sp, color: primeryColor),),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        Divider(
          height: 2.h,
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
          height: 2.h,
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
          height: 2.h,
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
          height: 2.h,
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
          height: 2.h,
        ),

      ],
    );
  }

}
