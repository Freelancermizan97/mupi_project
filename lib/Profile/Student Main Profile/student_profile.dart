import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mupi_project/Profile/student_profile_edit.dart';

class StudentProfile extends StatefulWidget {
  const StudentProfile({Key? key}) : super(key: key);

  @override
  State<StudentProfile> createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile> {

  Color primeryColor = Color(0xff00BFA6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentProfileEdit()));
                      },
                      child: Container(
                        child: Image(
                          image: AssetImage('images/icon17.png'),
                          height: 20.h,
                          width: 20.w,
                        ),
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
              Text("1st Shift, 4th Semester",style: TextStyle(fontSize: 12.sp, color: Color(0xff494A4B)),),
              Text("Computer Science and Engineering",style: TextStyle(fontSize: 12.sp, color: Color(0xff494A4B)),),
              SizedBox(height: 40.h,),

              infoCard(
                name: 'Abu Sayed',
                fatherName: 'Abdul Rouf',
                motherName: 'Salma',
                roll: '450216',
                reg: '15020062615',
                session: '19-20',
                religion: 'Muslim',
                number: '0158***745',
                location: "jalkuri, Narayanganj",
                gmail: 'Arshayed017@gmail.com'
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget infoCard ({name, fatherName, motherName, roll, reg, session, religion, number, gmail, location, }){
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
              Text('Name: ', style: TextStyle(fontSize: 16.sp),),
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
              Text('Father name: ', style: TextStyle(fontSize: 16.sp),),
              Text(fatherName, style: TextStyle(fontSize: 16.sp, color: primeryColor),),
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
              Text('Mother name: ', style: TextStyle(fontSize: 16.sp),),
              Text(motherName, style: TextStyle(fontSize: 16.sp, color: primeryColor),),
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
              Text('Roll No: ', style: TextStyle(fontSize: 16.sp),),
              Text(roll, style: TextStyle(fontSize: 16.sp, color: primeryColor),),
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
              Text('Reg No: ', style: TextStyle(fontSize: 16.sp),),
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
              Text('Session: ', style: TextStyle(fontSize: 16.sp),),
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
              Text('Religion: ', style: TextStyle(fontSize: 16.sp),),
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
              Text('Number: ', style: TextStyle(fontSize: 16.sp),),
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
              Text('Gmail: ', style: TextStyle(fontSize: 16.sp),),
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
              Text('Location: ', style: TextStyle(fontSize: 16.sp),),
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
