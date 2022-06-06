import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoticePage2 extends StatefulWidget {
  const NoticePage2({Key? key}) : super(key: key);

  @override
  State<NoticePage2> createState() => _NoticePage2State();
}

class _NoticePage2State extends State<NoticePage2> {

  Color primeryColor = Color(0xff00BFA6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCCCCCC),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.only( bottom: 5.r),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                          size: 20.sp,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Munshiganj Polytechnic Institute', style: TextStyle(color: Colors.black, fontSize: 18.sp),),
                      Text('মিরকাদিম, মুন্সিগঞ্জ।', style: TextStyle(color: Colors.black, fontSize: 14.sp),),
                    ],
                  ),
                  Container(),
                ],
              ),
              Container(
                height: 600.h,
                width: MediaQuery.of(context).size.width.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/img.png'),
                    //fit: BoxFit.cover
                  )
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 30.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                        color: primeryColor,
                        borderRadius: BorderRadius.circular(10.r)
                    ),
                    child: Center(
                      child: Text('Downloed', style: TextStyle(color: Colors.white, fontSize: 13.sp, fontWeight: FontWeight.w800),),
                    ),
                  ),
                ],
              )
            ],
          ),
        ) ,
      ),
    );
  }
}
