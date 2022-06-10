import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MUPIInfo2 extends StatefulWidget {
  const MUPIInfo2({Key? key}) : super(key: key);

  @override
  State<MUPIInfo2> createState() => _MUPIInfo2State();
}

class _MUPIInfo2State extends State<MUPIInfo2> {

  Color primaryColor = Color(0xff00BFA6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20.r),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                        child: Icon(Icons.arrow_back, size: 20.r,)
                    ),
                    SizedBox(width: 10.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Munshiganj Polytechnic Institute', style: TextStyle(fontSize: 18.sp, color: Color(0xff494A4B)),),
                        Text('মিরকাদিম, মুন্সিগঞ্জ।', style: TextStyle(fontSize: 14.sp, color: Color(0xff494A4B)))
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: primaryColor,
                      ),
                      child: Center(
                        child: Text('Department', style: TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.w900),),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h,),
                Container(
                  width: 330.w,
                  child: Text('Munshiganj polytechnic institute বর্তমানে মোট নয়টি বিষয়ে চার '
                      'বছর মেয়াদি ডিপ্লোমা কোর্স চালু রয়েছে। নিচে আসন সংখ্যা সহ বিষয়গুলো দেয়া হল :', style: TextStyle(fontSize: 15.sp),),
                ),
                SizedBox(height: 20.h,),
                Text('কম্পিউটার টেকনোলজি (২০০)', style: TextStyle( fontSize: 14.sp,),),
                SizedBox(height: 10.h,),
                Text('সিভিল টেকনোলজি (৫০)', style: TextStyle( fontSize: 14.sp,),),
                SizedBox(height: 10.h,),
                Text('ইলেক্ট্রিক্যাল টেকনোলজি (৫০)', style: TextStyle( fontSize: 14.sp,),),
                SizedBox(height: 10.h,),
                Text('মেকানিক্যাল টেকনোলজি (৫০)', style: TextStyle( fontSize: 14.sp,),),
                SizedBox(height: 10.h,),
                Text('ইন্সট্রুমেন্টেশন এন্ড প্রসেস টেকনোলজি (৫০)', style: TextStyle( fontSize: 14.sp,),),
                SizedBox(height: 10.h,),
                Text('ইলেকট্রনিক্স টেকনোলজি (৫০)', style: TextStyle( fontSize: 14.sp,),),
                SizedBox(height: 10.h,),
                Text('এয়ার কন্ডিশনিং এন্ড রেফ্রিজারেশন টেকনোলজি (৫০)', style: TextStyle( fontSize: 14.sp,),),
                SizedBox(height: 10.h,),
                Text('ইলেক্ট্রো – মেডিক্যাল টেকনোলজি (৫০)', style: TextStyle( fontSize: 14.sp,),),
                SizedBox(height: 20 .h,),
                Container(
                  width: 330.w,
                  child: Text('এছাড়া বিভিন্ন ডিপার্টমেন্ট গুলোর আবশ্যিক  বিষয় যেমন- বাংলা, ফিজিক্স, ইংরেজি প্রভৃতি পাঠদানের '
                      'জন্য রয়েছে নন-টেক ডিপার্টমেন্ট।', style: TextStyle(fontSize: 15.sp),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
