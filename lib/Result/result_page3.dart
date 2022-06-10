import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResultPage3 extends StatefulWidget {
  const ResultPage3({Key? key}) : super(key: key);

  @override
  State<ResultPage3> createState() => _ResultPage3State();
}

class _ResultPage3State extends State<ResultPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(20.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Resulte", style: TextStyle(fontSize: 20.sp, color: Color(0xff000000)),),
                    Text("Munshiganj Polytechnic Institute", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700, color: Color(0xff494A4B)),),

                    SizedBox(height: 10.h,),


                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 35.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(
                            width: 1.w,
                            color: Colors.grey
                        )
                    ),
                    child: Center(
                      child: Text('1\'s Shift'),
                    ),
                  ),
                ],
              ),
              Image(image: AssetImage('images/routine1.png')),
              SizedBox(height: 15.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 35.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(
                            width: 1.w,
                            color: Colors.grey
                        )
                    ),
                    child: Center(
                      child: Text('2nd Shift'),
                    ),
                  ),
                ],
              ),
              Image(image: AssetImage('images/routine1.png')),

              /*
              Container(
                padding: EdgeInsets.all(20.r),
                decoration: BoxDecoration(
                    color: Color(0xffFBFBFB)
                ),
                width: MediaQuery.of(context).size.width.w,
                child: Column(
                  children: [
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
                                    offset: const Offset(4, 4),
                                    blurRadius: 15,
                                    spreadRadius: 1
                                ),

                                const BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(-5, -5),
                                  blurRadius: 15,
                                  spreadRadius: 1,
                                ),
                              ]
                          ),
                          child:  CircleAvatar(
                            backgroundColor: Color(0xffFBFBFB),
                            radius: 30 .r ,
                          ),
                        ),

                        SizedBox(width: 10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Dr. Engr. Sushil Kumer Paul',  style: TextStyle(fontFamily: 'Nun', fontWeight: FontWeight.bold, fontSize: 18.sp)),
                            Container(
                              padding: EdgeInsets.all(5),
                              height: 30,
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xffFFFFFF),
                                  border: Border.all(
                                      color: Color(0xffD6D6D6),
                                      width: 1.w
                                  )
                              ),
                              child: Row(
                                children: [
                                  Image(image: AssetImage('images/icon18.png'), height: 20, width: 30,),
                                  SizedBox(width: 5.w,),
                                  Text('Physics', style: TextStyle(color: Color(0xff494A4B)),)
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10.h,),
                    Row(
                      children: [
                        Expanded(child: Image(image: AssetImage('images/img_2.png'), height: 200, width: 200,)),
                        Expanded(child: Image(image: AssetImage('images/img_2.png'), height: 200,)),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10.h,),
              Container(
                padding: EdgeInsets.all(20.r),
                decoration: BoxDecoration(
                    color: Color(0xffFBFBFB)
                ),
                width: MediaQuery.of(context).size.width.w,
                child: Column(
                  children: [
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
                                    offset: const Offset(4, 4),
                                    blurRadius: 15,
                                    spreadRadius: 1
                                ),

                                const BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(-5, -5),
                                  blurRadius: 15,
                                  spreadRadius: 1,
                                ),
                              ]
                          ),
                          child:  CircleAvatar(
                            backgroundColor: Color(0xffFBFBFB),
                            radius: 30 .r ,
                          ),
                        ),

                        SizedBox(width: 10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Dr. Engr. Sushil Kumer Paul',  style: TextStyle(fontFamily: 'Nun', fontWeight: FontWeight.bold, fontSize: 18.sp)),
                            Container(
                              padding: EdgeInsets.all(5),
                              height: 30,
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xffFFFFFF),
                                  border: Border.all(
                                      color: Color(0xffD6D6D6),
                                      width: 1.w
                                  )
                              ),
                              child: Row(
                                children: [
                                  Image(image: AssetImage('images/icon18.png'), height: 20, width: 30,),
                                  SizedBox(width: 5.w,),
                                  Text('Physics', style: TextStyle(color: Color(0xff494A4B)),)
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10.h,),
                    Row(
                      children: [
                        Expanded(child: Image(image: AssetImage('images/img_2.png'), height: 200, width: 200,)),
                        Expanded(child: Image(image: AssetImage('images/img_2.png'), height: 200,)),
                      ],
                    )
                  ],
                ),
              ),
              */

            ],
          ),
        ),
      ),
    );
  }
}
