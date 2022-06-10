import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mupi_project/MUPI%20Info/mupi_info_6.dart';

class MUPIInfo5 extends StatefulWidget {
  const MUPIInfo5({Key? key}) : super(key: key);

  @override
  State<MUPIInfo5> createState() => _MUPIInfo5State();
}

class _MUPIInfo5State extends State<MUPIInfo5> {

  Color primaryColor = Color(0xff00BFA6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
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


                  ],
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MUPIInfo6()));
                },
                  child: Image(image: AssetImage('images/img_6.png'))
              ),
              Padding(
                padding: EdgeInsets.all(20.r),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 330.w,
                      child: Text('• ক্যাম্পাসে মূল ভবনটি পাঁচতলা বিশিষ্ট। এই প্রশাসনিক ভবন ছাড়া রয়েছে '
                          'একটি একাডেমিক ভবন, দুইটি দুইতলা বিশিষ্ট ওয়ার্কশপ ভবন, ২৩ টি ল্যাব, একটি সাবস্টেশন, '
                          'লাইব্রেরি, একটি পাম্প হাউজ, মসজিদ, খেলার মাঠ, সেমিনার কক্ষ।', style: TextStyle(fontSize: 15.sp),),
                    ),
                    SizedBox(height: 10.h,),
                    Container(
                      width: 330.w,
                      child: Text('• এছাড়া অধ্যক্ষের বাসভবন, দুতলা বিশিষ্ট স্টাফ       কোয়ার্টারও রয়েছে ক্যাম্পাস এরিয়ায়।', style: TextStyle(fontSize: 15.sp),),
                    ),
                    SizedBox(height: 10.h,),
                    Container(
                      width: 330.w,
                      child: Text('আমাদের ক্যাম্পাস অন্য দশটি ক্যাম্পাসের মতো বড় নয় এখানে '
                          'হয়না কোন হৈ-হুল্লোড় এখানে শুধু শান্তি, শোনা যায় প্রত্যেকটা সময় পাখির কিচিরমিচির শব্দ পাখির মধুর গান', style: TextStyle(fontSize: 15.sp),),
                    ),
                    SizedBox(height: 10.h,),
                    Container(
                      width: 330.w,
                      child: Text('প্রতিদিন সেই চিরচেনা জায়গায় কারিবা যেতে ভালো লাগে কিন্তু '
                          'আমাদের ক্যাম্পাসটি এরকম নয় এখানে প্রতিদিনই যেতে মনে চায় এখানে '
                          'রয়েছে মায়া রয়েছে আবেগ রয়েছে বন্ধুত্বের মায়া', style: TextStyle(fontSize: 15.sp),),
                    ),
                    SizedBox(height: 10.h,),
                    Container(
                      width: 330.w,
                      child: Text('আমাদের কলেজের জানালা দিয়ে দেখা যায় নদী দেখা যায় সেই '
                          'নদীর উপর দিয়ে বয়ে চলা কিছু কাঠের জাহাজ দেখা যায় ঘোড়া দেখা যায় '
                          'কাশফুল দেখা যায় প্রকৃতির মায়া গায়ে লাগানো যায় সেই ঠান্ডা বাতাস', style: TextStyle(fontSize: 15.sp),),
                    ),



                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
