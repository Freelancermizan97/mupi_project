import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mupi_project/MUPI%20Info/mupi_info_5.dart';

class MUPIInfo4 extends StatefulWidget {
  const MUPIInfo4({Key? key}) : super(key: key);

  @override
  State<MUPIInfo4> createState() => _MUPIInfo4State();
}

class _MUPIInfo4State extends State<MUPIInfo4> {
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
                        child: Text('Picture\'s', style: TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.w900),),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h,),
                Container(
                  width: 330.w,
                  child: Text('• ক্যাম্পাসে মূল ভবনটি পাঁচতলা বিশিষ্ট। এই প্রশাসনিক ভবন ছাড়া রয়েছে '
                      'একটি একাডেমিক ভবন, দুইটি দুইতলা বিশিষ্ট ওয়ার্কশপ ভবন, ২৩ টি ল্যাব, একটি সাবস্টেশন, '
                      'লাইব্রেরি, একটি পাম্প হাউজ, মসজিদ, খেলার মাঠ, সেমিনার কক্ষ।', style: TextStyle(fontSize: 15.sp),),
                ),
                SizedBox(height: 10.h,),
                Container(
                  width: 330.w,
                  child: Text('•এছাড়া অধ্যক্ষের বাসভবন, দুতলা বিশিষ্ট স্টাফ কোয়ার্টারও রয়েছে ক্যাম্পাস এরিয়ায়।', style: TextStyle(fontSize: 15.sp),),
                ),
                SizedBox(height: 10.h,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MUPIInfo5()));
                  },
                    child: Image(image: AssetImage('images/img_6.png'))
                ),
                SizedBox(height: 10.h,),
                InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MUPIInfo5()));
                    },
                    child: Image(image: AssetImage('images/img_7.png'))
                ),
                SizedBox(height: 10.h,),
                Image(image: AssetImage('images/img_8.png')),


              ],
            ),
          ),
        ),
      ),
    );
  }
}

