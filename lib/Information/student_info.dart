import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mupi_project/Profile/studentInfo_profile.dart';

class StudentInfo extends StatefulWidget {
  const StudentInfo({Key? key}) : super(key: key);

  @override
  State<StudentInfo> createState() => _StudentInfoState();
}

class _StudentInfoState extends State<StudentInfo> {

  Color primeryColor = Color(0xff00BFA6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),

      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 30.r, right: 30.r),
            child: Column(
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 20.h,),
                      Row(
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
                          Container(
                            //width: 200,
                            child:Text('Student Information', style: TextStyle(color: Colors.black, fontSize: 25.sp),),
                          ),
                          Container(),
                        ],
                      ),

                      Text("Munshiganj Polytechnic Institute", style: TextStyle(fontSize: 14.sp),),
                      Text("Mirkardim, Munshiganj",style: TextStyle(fontSize: 10.sp, color: Color(0xff494A4B)),),
                      SizedBox(height: 10.h,),
                      Container(
                        height: 36.h,
                        width: 200.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF4F4F4)
                        ),
                        child: Center(
                          child: Text("Search", style: TextStyle(fontSize: 12.sp, color: Color(0xffC2C2C2)),),
                        ),
                      ),
                      SizedBox(height: 20.h,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InfoCard(
                              image: 'images/mizan.jpg',
                              text1: 'MD. Mizan Hossen',
                              text2: 'Computer Science and Technology, 5th Semester, 1st Shift'
                          ),
                          SizedBox(height: 20.h,),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentInfoProfile()));
                            },
                            child: InfoCard(
                                image: 'images/sayedd.jpg',
                                text1: 'Abu Sayed',
                                text2: 'Computer Science and Technology, 5th Semester, 1st Shift'
                            ),
                          ),
                          SizedBox(height: 20.h,),
                          InfoCard(
                              image: 'images/Zunaed2.jpg',
                              text1: 'Zunaed Ibne Faruk',
                              text2: 'Computer Science and Technology, 5th Semester, 1st Shift'
                          ),
                          SizedBox(height: 20.h,),
                          InfoCard(
                              image: 'images/mizan.jpg',
                              text1: 'MD. Mizan Hossen',
                              text2: 'Computer Science and Technology,5th Semester, 1st Shift'
                          ),
                          SizedBox(height: 20.h,),
                          InfoCard(
                              image: 'images/mizan.jpg',
                              text1: 'MD. Mizan Hossen',
                              text2: 'Computer Science and Technology, 5th Semester, 1st Shift'
                          ),
                          SizedBox(height: 20.h,),
                          InfoCard(
                              image: 'images/sayedd.jpg',
                              text1: 'Abu Sayed',
                              text2: 'Computer Science and Technology, 5th Semester, 1st Shift'
                          ),
                          SizedBox(height: 20.h,),
                          InfoCard(
                              image: 'images/Zunaed2.jpg',
                              text1: 'Zunaed Ibne Faruk',
                              text2: 'Computer Science and Technology, 5th Semester, 1st Shift'
                          ),
                          SizedBox(height: 20.h,),
                        ],
                      )

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget InfoCard ({image, text1, text2}){
    return Container(
      child: Row(
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
              radius: 45.r ,
              child: CircleAvatar(
                radius: 40.r,
                backgroundColor: Color(0xffFBFBFB),
                backgroundImage: AssetImage(image),
              ),
            ),
          ),
          SizedBox(width: 15.w,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(text1, style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15.sp),),
              SizedBox(height: 5.h),
              Container(
                width: 200.w,
                  child: Text(text2, style: TextStyle(color: Colors.grey[500], fontSize: 11.sp),)
              ),

            ],
          )
        ],
      ),
    );
  }

}
