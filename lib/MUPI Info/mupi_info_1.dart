import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mupi_project/MUPI%20Info/mupi_info_2.dart';
import 'package:mupi_project/MUPI%20Info/mupi_info_3.dart';
import 'package:mupi_project/MUPI%20Info/mupi_info_4.dart';

class MUPIInfo1 extends StatefulWidget {
  const MUPIInfo1({Key? key}) : super(key: key);

  @override
  State<MUPIInfo1> createState() => _MUPIInfo1State();
}

class _MUPIInfo1State extends State<MUPIInfo1> {

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
                      width: 100.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: primaryColor,
                      ),
                      child: Center(
                        child: Text('History', style: TextStyle(color: Colors.white, fontSize: 16.sp),),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MUPIInfo2()));
                      },
                      child: Container(
                        height: 35.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Color(0xffF4F4F4),
                        ),
                        child: Center(
                          child: Text('Department', style: TextStyle(color: Color(0xff494A4B), fontSize: 12.sp),),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MUPIInfo4()));
                      },
                      child: Container(
                        height: 35.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Color(0xffF4F4F4),
                        ),
                        child: Center(
                          child: Text('Picture', style: TextStyle(color: Color(0xff494A4B), fontSize: 12.sp),),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MUPIInfo3()));
                      },
                      child: Container(
                        height: 35.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Color(0xffF4F4F4),
                        ),
                        child: Center(
                          child: Text('Contact', style: TextStyle(color: Color(0xff494A4B), fontSize: 12.sp),),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.h,),
                Container(
                  width: 330.w,
                  child: Text('Munshiganj polytechnic institute / মুন্সিগঞ্জ পলিটেকনিক ইন্সটিটিউট – নিজস্ব কোন ক্যাম্পাস ছাড়াই ২০০৬ '
                      'সালে প্রতিষ্ঠিত হয় এই প্রতিষ্ঠানটি। প্রতিষ্ঠানটির স্লোগান হল" একটাই লক্ষ্য হতে হবে দক্ষ"। প্রতিষ্ঠাকালীন সময়ে অধ্যক্ষ ছিলেন জনাব বিল্লাল হোসেন, '
                      'তিনিসহ আরও কয়েকজন শিক্ষকের অক্লান্ত পরিশ্রমের ফলে দুই বছর পর এটি নিজস্ব ক্যাম্পাসে যাত্রা শুরু করে। শুরুতে মাত্র '
                      '২ টি টেকনোলজি থাকলেও বর্তমানে BTEB পাঠ্যক্রম অনুসারে এখানে ৯টি অনুষদে ৪ বছর মেয়াদি ডিপ্লোমা কোর্সে ২০০০ এর বেশি '
                      'শিক্ষার্থী অধ্যয়নরত আছে।', style: TextStyle(fontSize: 15.sp),),
                ),
                SizedBox(height: 15.h,),
                Container(
                  width: 330.w,
                  child: Text(
                  'মুন্সিগঞ্জ পলিটেকনিক ইন্সটিটিউট বাংলাদেশ শিক্ষা অধিদপ্তর দ্বারা পরিচালিত বাংলাদেশ '
                      'কারিগরি শিক্ষা বোর্ডের (BTEB) কারিকুলাম অনুসারে পরিচালিত একটি কারিগরি প্রতিষ্ঠান।'
                      ' প্রতিষ্ঠানটির বর্তমান অধ্যক্ষ হিসেবে কর্মরত আছেন ইঞ্জিঃ মোঃ মিজানুর রহমান।', style: TextStyle(fontSize: 15.sp),),
                ),
                SizedBox(height: 15.h,),
                Text('ইতিহাস', style: TextStyle(color: primaryColor, fontSize: 16.sp, fontWeight: FontWeight.w900),),
                SizedBox(height: 15.h,),
                Container(
                  width: 330.w,
                  child: Text( 'মুন্সিগঞ্জ পলিটেকনিক ইন্সটিটিউট একাডেমিক কার্যক্রম '
                      'শুরু হয় ২০০৬ সালে।', style: TextStyle(fontSize: 15.sp),),
                ),
                Container(
                  width: 330.w,
                  child: Text( '• তবে তখন প্রতিষ্ঠানটির নিজস্ব কোন ভবনছিল না। মুন্সিগঞ্জ '
                      'টেকনিক্যাল ট্রেনিং স্কুল এন্ড কলেজ এর তিনটি কক্ষ নিয়ে এর শিক্ষাদান শুরু হয়। ' , style: TextStyle(fontSize: 15.sp),)
                ),
                Container (
                  width: 330.w,
                  child: Text('• শুরুতে কম্পিউটার এবং ইলেকট্রনিক্স এই দুইটি   ডিপার্টমেন্ট নিয়ে দুইটি শিফটে ৯৬ জন শিক্ষার্থীর অংশগ্রহণে এর যাত্রা শুরু হয়। '
                      'পরবর্তিতে ২০০৮ সালে প্রতিষ্ঠানটি তার কার্যক্রম কমলাঘাটে নিজস্ব ভবনে স্থানান্তরিত করে।' , style: TextStyle(fontSize: 15.sp),)
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
