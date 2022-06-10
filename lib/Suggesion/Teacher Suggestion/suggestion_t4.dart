import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuggestionT4 extends StatefulWidget {
  const SuggestionT4({Key? key}) : super(key: key);

  @override
  State<SuggestionT4> createState() => _SuggestionT4State();
}

class _SuggestionT4State extends State<SuggestionT4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.r),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child:Row(
                          children: [
                            InkWell(
                                onTap: (){
                                  Navigator.pop(context);
                                },
                                child: Icon(Icons.arrow_back, size: 20.r,)
                            ),
                            SizedBox(width: 5.w,),
                            Text('Create Post', style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w700),)
                          ],
                        ),
                      ),
                      Container(
                        height: 35.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                            color: Color(0xff00BFA6),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text('Post', style: TextStyle(color: Colors.white, fontSize: 14.sp),),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20.h,),
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

                      SizedBox(width: 15.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Dr. Engr. Sushil Kumer Paul',  style: TextStyle(fontFamily: 'Nun', fontWeight: FontWeight.bold, fontSize: 18.sp)),

                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20.h,),
                  Container(
                    padding: EdgeInsets.only(left:20.r),
                    height: 45.h,
                    width: MediaQuery.of(context).size.width.w,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade300,
                            offset: const Offset(4, 4),
                            blurRadius: 15,
                            spreadRadius: 1
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color(0xffFFFFFF),

                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Subject name', hintStyle: TextStyle(fontFamily: 'Nun', fontSize: 17.sp, color: Color(0xffB0B0B0))
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h,),
                  Container(
                    padding: EdgeInsets.only(left:20.r),
                    height: 150.h,
                    width: MediaQuery.of(context).size.width.w,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade300,
                            offset: const Offset(4, 4),
                            blurRadius: 15,
                            spreadRadius: 1
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color(0xffFFFFFF),

                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Whst’s on your mind?', hintStyle: TextStyle(fontFamily: 'Nun', fontSize: 17.sp, color: Color(0xffB0B0B0))
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h,),




                ],
              ),
            ),
            Divider(
              height: 2,
            ),
            SizedBox(height: 10.h,),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Image(image: AssetImage('images/img_5.png'), height: 35.h, width: 40.w,),
                  SizedBox(width: 10.w,),
                  Text('Photo', style: TextStyle(fontSize: 15.sp),)
                ],
              ),
            ),
            SizedBox(height: 10.h,),
            Divider(
              height: 1,
            ),

          ],
        ),
      ),
    );
  }
}
