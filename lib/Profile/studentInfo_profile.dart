import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StudentInfoProfile extends StatefulWidget {
  const StudentInfoProfile({Key? key}) : super(key: key);

  @override
  State<StudentInfoProfile> createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentInfoProfile> {

  Color primeryColor = Color(0xff00BFA6);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 20.r, left: 20.r, right: 20.r,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 5.r, bottom: 10.r),
                    child: Icon(
                      Icons.arrow_back,
                      size: 20.sp,
                    ),
                  ),
                ),

                Row(
                  children: [
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
                    SizedBox(width: 10.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                      ],
                    ),
                  ],
                ),

                SizedBox(height: 30.h,),

                infoCard(
                    name: 'Abu Sayed',
                    fatherName: 'Abdul Rouf',
                    motherName: 'Salma',
                    roll: '450216',
                    reg: '1502062615',

                    session: '19-20',
                    religion: 'Islam',
                    number: '01689517629',
                    gNum: '016895447512',
                    gmail: 'arshansayed017@gmail.com',
                    location: 'Jalkuri, Narayanganj',
                    centerCode: '49021 ',
                    tradeCode: '66'
                ),
                SizedBox(height: 10.h),
                Container(
                  height: 150.h,
                  width: MediaQuery.of(context).size.width.w,
                  decoration: BoxDecoration(
                      color: Color(0xffF4F4F4),
                      borderRadius: BorderRadius.circular(15.r)
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20.r),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Semester', style: TextStyle(color: primeryColor, fontSize: 16.sp),),
                            Text('1st'),
                            Text('2nd'),
                            Text('3rd'),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Point', style: TextStyle(color: primeryColor, fontSize: 16.sp),),
                            Text('1st', style: TextStyle(color: primeryColor)),
                            Text('2nd', style: TextStyle(color: primeryColor)),
                            Text('3rd', style: TextStyle(color: primeryColor)),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Result', style: TextStyle(color: primeryColor, fontSize: 16.sp),),
                            Text('Pass'),
                            Text('Pass'),
                            Text('Pass'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5.h),

              ],
            ),
          ),
        ),
      ),
    );
  }







  Widget infoCard ({name, fatherName, motherName, roll, reg, session, religion, number, gNum, gmail, location, centerCode, tradeCode}){
    //Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: [
            Text('Name: ', style: TextStyle(fontSize: 16.sp),),
            Text(name, style: TextStyle(fontSize: 16.sp, color: primeryColor),),
          ],
        ),
        SizedBox(height: 8.h,),
        Row(
          children: [
            Text('Father name: ', style: TextStyle(fontSize: 16.sp),),
            Text(fatherName, style: TextStyle(fontSize: 16.sp, color: primeryColor),),
          ],
        ),
        SizedBox(height: 8.h),
        Row(
          children: [
            Text('Mother name: ', style: TextStyle(fontSize: 16.sp),),
            Text(motherName, style: TextStyle(fontSize: 16.sp, color: primeryColor),),
          ],
        ),
        SizedBox(height: 8.h),
        Row(
          children: [
            Text('Roll No: ', style: TextStyle(fontSize: 16.sp),),
            Text(roll, style: TextStyle(fontSize: 16.sp, color: primeryColor),),
          ],
        ),
        SizedBox(height: 8.h),
        Row(
          children: [
            Text('Reg No: ', style: TextStyle(fontSize: 16.sp),),
            Text(reg, style: TextStyle(fontSize: 16.sp, color: primeryColor),),
          ],
        ),
        SizedBox(height: 8.h),
        Row(
          children: [
            Text('Session: ', style: TextStyle(fontSize: 16.sp),),
            Text(session, style: TextStyle(fontSize: 16.sp, color: primeryColor),),
          ],
        ),
        SizedBox(height: 8.h),
        Row(
          children: [
            Text('Religion: ', style: TextStyle(fontSize: 16.sp),),
            Text(religion, style: TextStyle(fontSize: 16.sp, color: primeryColor),),
          ],
        ),
        SizedBox(height: 8.h),
        Row(
          children: [
            Text('Number: ', style: TextStyle(fontSize: 16.sp),),
            Text(number, style: TextStyle(fontSize: 16.sp,color: primeryColor),),
          ],
        ),
        SizedBox(height: 8.h),
        Row(
          children: [
            Text('Guardian Number: ', style: TextStyle(fontSize: 16.sp),),
            Text(gNum, style: TextStyle(fontSize: 16.sp, color: primeryColor),),
          ],
        ),
        SizedBox(height: 8.h),
        Row(
          children: [
            Text('Gmail: ', style: TextStyle(fontSize: 16.sp),),
            Text(gmail, style: TextStyle(fontSize: 16.sp, color: primeryColor),),
          ],
        ),
        SizedBox(height: 8.h,),
        Row(
          children: [
            Text('Location: ', style: TextStyle(fontSize: 16.sp),),
            Text(location, style: TextStyle(fontSize: 16.sp, color: primeryColor),),
          ],
        ),
        SizedBox(height: 8.h),
        Row(
          children: [
            Text('Code No. and Center Name: ', style: TextStyle(fontSize: 16.sp),),
            Text(centerCode, style: TextStyle(fontSize: 16.sp, color: primeryColor),),
          ],
        ),
        SizedBox(height: 8.h),
        Row(
          children: [
            Text('Trade/ Speciazation/ Technology: ', style: TextStyle(fontSize: 16.sp),),
            Text(tradeCode, style: TextStyle(fontSize: 16.sp, color: primeryColor),),
          ],
        ),
      ],
    );
  }

}
