import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TeacherPost extends StatefulWidget {
  const TeacherPost({Key? key}) : super(key: key);

  @override
  State<TeacherPost> createState() => _TeacherPostState();
}

class _TeacherPostState extends State<TeacherPost> {

  final List<String> items = ['All','CST', 'CT','ET', 'EEE', 'IPCT', 'RAC', 'EMT'];
  String? selectedItem = 'All';

  final List<String> items1 = ['1st-Sem', '2nd-Sem', '3rd-Sem', '4th-Sem', '5th-Sem' , '6th-Sem', '7th-Sem', '8th-Sem',
  ];
  String? selectedItem1 = '1st-Sem';

  final List<String> items2 = [ '1st Shift', '2nd Shift'];
  String? selectedItem2 = '1st Shift';

  Color primeryColor = Color(0xff00BFA6);

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
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("DR. Engr. Sushil Kumer Paul", style: TextStyle(fontFamily: 'Nun', fontWeight: FontWeight.bold, fontSize: 16.sp),),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 5.r),
                                height: 25.h,
                                width: 70.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    color: Color(0xffFFFFFF),
                                    border: Border.all(
                                        color: Color(0xffD6D6D6),
                                        width: 2.w
                                    )
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                      menuMaxHeight: 200.h,
                                      iconSize: 15.sp,
                                      value: selectedItem,
                                      items: items.map((item) => DropdownMenuItem<String>(
                                        value: item,
                                        child: Row(
                                          children: [
                                            //Image(image: AssetImage('images/icon12.png'),height: 15, width: 15,),
                                            SizedBox(width: 10.w),
                                            Text(item, style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold,fontFamily: 'Nun', color: Color(0xff494A4B)),)
                                          ],
                                        ),

                                      ) )
                                          .toList(),
                                      onChanged: (items) => setState(() => selectedItem = items,)
                                  ),
                                ),
                              ),
                              SizedBox(width: 5.h),

                              Container(
                                padding: EdgeInsets.only(left: 5.r),
                                height: 25.h,
                                width: 90.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    color: Color(0xffFFFFFF),
                                    border: Border.all(
                                        color: Color(0xffD6D6D6),
                                        width: 2.w
                                    )
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                      menuMaxHeight: 200.h,
                                      iconSize: 0.sp,
                                      value: selectedItem1,
                                      items: items1.map((item) => DropdownMenuItem<String>(
                                        value: item,
                                        child: Row(
                                          children: [
                                            Image(image: AssetImage('images/icon12.png'),height: 15, width: 15,),
                                            SizedBox(width: 10.w),
                                            Text(item, style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold,fontFamily: 'Nun', color: Color(0xff494A4B)),)
                                          ],
                                        ),

                                      ) )
                                          .toList(),
                                      onChanged: (items) => setState(() => selectedItem1 = items,)
                                  ),
                                ),
                              ),

                              SizedBox(width: 5.w),

                              Container(
                                padding: EdgeInsets.only(left: 5.r),
                                height: 25.h,
                                width: 70.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    color: Color(0xffFFFFFF),
                                    border: Border.all(
                                        color: Color(0xffD6D6D6),
                                        width: 2.w
                                    )
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                      menuMaxHeight: 200.h,
                                      iconSize: 0.sp,
                                      value: selectedItem2,
                                      items: items2.map((item) => DropdownMenuItem(
                                        value: item,
                                        child: Row(
                                          children: [
                                            //Image(image: AssetImage('images/icon12.png'),height: 15, width: 15,),
                                            //SizedBox(width: size.width*0.01,),
                                            Text(item, style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold,fontFamily: 'Nun', color: Color(0xff494A4B)),)
                                          ],
                                        ),

                                      ) )
                                          .toList(),
                                      onChanged: (item) => setState(() => selectedItem2 = item,)
                                  ),
                                ),
                              ),



                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20.h,),

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
              height: 3,
            ),

          ],
        ),
      ),
    );
  }
}
