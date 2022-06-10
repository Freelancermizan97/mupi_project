import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MUPIInfo3 extends StatefulWidget {
  const MUPIInfo3({Key? key}) : super(key: key);

  @override
  State<MUPIInfo3> createState() => _MUPIInfo3State();
}

class _MUPIInfo3State extends State<MUPIInfo3> {

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
                        child: Text('Contact', style: TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.w900),),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h,),
                SizedBox(height: 15.h,),
                Text('Munshiganj Polytechnic Institute', style: TextStyle( fontSize: 15.sp,),),
                SizedBox(height: 15.h,),
                Text('মিরকাদিম, মুন্সিগঞ্জ।', style: TextStyle( fontSize: 15.sp,),),
                SizedBox(height: 15.h,),
                Text('• Contact: 88-0691-63825', style: TextStyle( fontSize: 15.sp,),),
                SizedBox(height: 15.h,),
                Text('• Fax: 88-0691-63825', style: TextStyle( fontSize: 15.sp,),),
                SizedBox(height: 15.h,),
                Text('• Mobile: 0170000000', style: TextStyle( fontSize: 15.sp,),),
                SizedBox(height: 15.h,),
                Text('• Email : mpiprincipal@gmail.com', style: TextStyle( fontSize: 15.sp,),),
                SizedBox(height: 15.h,),
                Text('• Website : http://www.munpoly.gov.bd/', style: TextStyle( fontSize: 15.sp,),),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
