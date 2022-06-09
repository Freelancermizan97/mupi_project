import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mupi_project/Information/student_info.dart';
import 'package:mupi_project/Information/teacher_info.dart';
import 'package:mupi_project/Notice/noticePage.dart';
import 'package:mupi_project/Profile/studentInfo_profile.dart';
import 'package:mupi_project/Profile/Student%20Main%20Profile/student_profile.dart';
import 'package:mupi_project/Profile/Teacher%20Main%20Profile/teacher_profile.dart';
import 'package:mupi_project/Suggesion/suggestion_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> items = ['All','CST', 'CT','ET', 'EEE', 'IPCT', 'RAC', 'EMT'];
  String? selectedItem = 'All';

  final List<String> items1 = ['1st-Sem', '2nd-Sem', '3rd-Sem', '4th-Sem', '5th-Sem' , '6th-Sem', '7th-Sem', '8th-Sem',
  ];
  String? selectedItem1 = '1st-Sem';

  final List<String> items2 = [ '1st Shift', '2nd Shift'];
  String? selectedItem2 = '1st Shift';

  //late final double? menuMaxHeight;


  Color primaryColor = Color(0xff00BFA6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(20.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Image(image: AssetImage('images/icon3.png'), height: 25, width: 25,),
                              SizedBox(width: 8.w,),
                              Text("Hello, Arshan", style: TextStyle(fontSize: 16, color: Color(0xff848484), fontFamily: 'Nun'),)
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> StudentProfile()));
                                },
                                child: Container(
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

                                        //top left shaow lighter
                                        const BoxShadow(
                                          color: Colors.white,
                                          offset: Offset(-5, -5),
                                          blurRadius: 15,
                                          spreadRadius: 1,
                                        ),
                                      ]
                                  ),
                                  child:  CircleAvatar(
                                      backgroundColor: Color(0xffF4F4F4),
                                      radius: 15.r ,
                                      child: CircleAvatar(
                                        radius: 15.r,
                                        backgroundImage: AssetImage('images/sayedd.jpg'),
                                      )
                                  ),
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Container(
                                child: Image(
                                  image: AssetImage('images/icon10.png'),
                                  height: 20,
                                  width: 20,
                                ),
                              )

                            ],
                          ),
                        )
                      ],
                    ),

                    SizedBox(height: 10.h),

                    Text('Welcome to this pathb of learning \nSomething new', style: TextStyle(fontFamily: "Nun", color: Color(0xff494A4B)),),

                    SizedBox(height: 10.h),

                    Container(
                      padding: EdgeInsets.all(10.r),
                      height: 40.h,
                      width: 200.w,
                      decoration: BoxDecoration(
                        color: Color(0xffF4F4F4),
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.search,color: Color(0xff848484),size: 25.sp,),
                          SizedBox(width: 10.w),
                          Text("Search", style: TextStyle(color: Color(0xffC2C2C2)),)
                        ],
                      ),
                    ),

                    SizedBox(height: 15.h),

                    Text('Post by',),


                  ],
                ),
              ),

              Container (
                height: 230.h,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20.r),
                      height: 200.h,
                      width: 350.w,
                      decoration: BoxDecoration(
                          color: Color(0xffFBFBFB),
                          borderRadius: BorderRadius.circular(15.r)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child:Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=> TeacherProfile()));
                                      },
                                      child: Container(
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

                                              //top left shaow lighter
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
                                          radius: 25.r ,

                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10.w),
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
                                SizedBox(height: 15.h,),
                                Text('আর দুইদিন পর তোমাদের সাথে আমার পরীক্ষা ক্লাস টেস্ট পরীক্ষার প্রস্তুতি নিয়ে এসো যাতে কোনরকম বিলম্ব না হয় পরীক্ষায়।'),
                                SizedBox(height: 5.h),
                              ],
                            ) ,
                          ),

                          Container(
                            child:Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.favorite_border),
                                Row(
                                  children: [
                                    Text("249", style:  TextStyle(color: primaryColor,fontSize: 10.sp,),),
                                    SizedBox(width: 5.w),
                                    Text("Likes", style:  TextStyle(color: Colors.black,fontSize: 10.sp, ),),
                                  ],
                                ),
                              ],
                            ) ,
                          )

                          //SizedBox(height: size.height*0.00,),


                        ],
                      ),
                    ),
                    SizedBox(width: 5.w,),
                    Container(
                      padding: EdgeInsets.all(20.r),
                      height: 200.h,
                      width: 350.w,
                      decoration: BoxDecoration(
                          color: Color(0xffFBFBFB),
                          borderRadius: BorderRadius.circular(15.r)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> TeacherProfile()));
                                },
                                child: Container(
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

                                        //top left shaow lighter
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
                                    radius: 25.r ,

                                  ),
                                ),
                              ),
                              SizedBox(width: 10.w),
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
                          SizedBox(height: 15.h,),
                          Text('আর দুইদিন পর তোমাদের সাথে আমার পরীক্ষা ক্লাস টেস্ট পরীক্ষার প্রস্তুতি নিয়ে এসো যাতে কোনরকম বিলম্ব না হয় পরীক্ষায়।'),
                          SizedBox(height: 5.h),
                          Icon(Icons.favorite_border),
                          //SizedBox(height: size.height*0.00,),
                          Row(
                            children: [
                              Text("249", style:  TextStyle(color: primaryColor,fontSize: 10.sp,),),
                              SizedBox(width: 5.w),
                              Text("Likes", style:  TextStyle(color: Colors.black,fontSize: 10.sp, ),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 5.w,),
                    Container(
                      padding: EdgeInsets.all(20.r),
                      height: 200.h,
                      width: 350.w,
                      decoration: BoxDecoration(
                          color: Color(0xffFBFBFB),
                          borderRadius: BorderRadius.circular(15.r)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> TeacherProfile()));
                                },
                                child: Container(
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

                                        //top left shaow lighter
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
                                    radius: 25.r ,

                                  ),
                                ),
                              ),
                              SizedBox(width: 10.w),
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
                          SizedBox(height: 15.h,),
                          Text('আর দুইদিন পর তোমাদের সাথে আমার পরীক্ষা ক্লাস টেস্ট পরীক্ষার প্রস্তুতি নিয়ে এসো যাতে কোনরকম বিলম্ব না হয় পরীক্ষায়।'),
                          SizedBox(height: 5.h),
                          Icon(Icons.favorite_border),
                          //SizedBox(height: size.height*0.00,),
                          Row(
                            children: [
                              Text("249", style:  TextStyle(color: primaryColor,fontSize: 10.sp,),),
                              SizedBox(width: 5.w),
                              Text("Likes", style:  TextStyle(color: Colors.black,fontSize: 10.sp, ),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 5.w,),
                    Container(
                      padding: EdgeInsets.all(20.r),
                      height: 200.h,
                      width: 350.w,
                      decoration: BoxDecoration(
                          color: Color(0xffFBFBFB),
                          borderRadius: BorderRadius.circular(15.r)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> TeacherProfile()));
                                },
                                child: Container(
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

                                        //top left shaow lighter
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
                                    radius: 25.r ,

                                  ),
                                ),
                              ),
                              SizedBox(width: 10.w),
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
                          SizedBox(height: 15.h,),
                          Text('আর দুইদিন পর তোমাদের সাথে আমার পরীক্ষা ক্লাস টেস্ট পরীক্ষার প্রস্তুতি নিয়ে এসো যাতে কোনরকম বিলম্ব না হয় পরীক্ষায়।'),
                          SizedBox(height: 5.h),
                          Icon(Icons.favorite_border),
                          //SizedBox(height: size.height*0.00,),
                          Row(
                            children: [
                              Text("249", style:  TextStyle(color: primaryColor,fontSize: 10.sp,),),
                              SizedBox(width: 5.w),
                              Text("Likes", style:  TextStyle(color: Colors.black,fontSize: 10.sp, ),),
                            ],
                          ),
                        ],
                      ),
                    ),


                  ],
                ),
              ),



              Padding(
                padding: EdgeInsets.all(20.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Suggestions Question', style: TextStyle(fontFamily: 'Nun'),),

                    SizedBox(height: 10.h,),
                    
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SuggestinoPage1()));
                      },
                      child: SuggestionCard(
                        image: 'images/icon4.png',
                        text1: 'Suggestions questions',
                        text2: 'Very short, short, easy',

                      ),
                    ),
/*
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Container(
                        padding: EdgeInsets.only(top: 10.r, bottom: 10.r),
                        child: Row(
                          children: [

                            SuggestionCard(
                                image: 'images/icon4.png',
                                text1: 'Suggestions questions',
                                text2: 'Very short, short, easy',

                            ),


                          ],
                        ),
                      ),
                    ),
*/

                  
                    SizedBox(height: 10.h,),

                    Text('More Information', style: TextStyle(fontFamily: 'Nun'),),

                    SizedBox(height: 10.h,),

                    Container(
                      height: 500.h,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        physics: BouncingScrollPhysics(),
                        child: Container(

                          padding: EdgeInsets.only(left: 5, right: 10, bottom: 10, top: 5),
                          child: Column(
                            children: [

                              InfoCard(
                                image: 'images/icon7.png',
                                text1: 'Munshiganj Polytechnic Institute',
                                text2: 'Munshiganj Polytechnic Institute \nhas been discussed in detail here',
                              ),
                              SizedBox(height: 10.h,),
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NoticePage()));
                                },
                                child: InfoCard(
                                  image: 'images/icon6.png',
                                  text1: 'Notice',
                                  text2: 'The results of the 1st phase supplementary \nexamination of Munshiganj Polytechnic .......',
                                  icon: Icons.add_alert_sharp,
                                ),
                              ),
                              SizedBox(height: 10.h,),
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>TeacherInfo()));
                                },
                                child: InfoCard(
                                  image: 'images/icon5.png',
                                  text1: 'Teachers Information',
                                  text2: 'Here is the information of \nall the teachers recorded',
                                ),
                              ),
                              SizedBox(height: 10.h),

                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentInfo()));
                                },
                                child: InfoCard(
                                  image: 'images/icon8.png',
                                  text1: 'Student Information',
                                  text2: 'Here is the information of \nall the teachers recorded',

                                ),
                              ),
                              SizedBox(height: 10.h),
                              InfoCard(
                                image: 'images/icon16.png',
                                text1: 'Result',
                                text2: 'Here you can your result',

                              ),
                              SizedBox(height: 10.h),
                              InfoCard(
                                image: 'images/icon15.png',
                                text1: 'Student Note',
                                text2: 'You can make all the note here',

                              ),

                            ],
                          ),
                        ),
                      ),
                    ),


                  ],
                ),
              )



            ],
          ),
        ),
      ),
    );
  }

  Widget SuggestionCard ({image, text1, text2,  }){

    return Container(
      padding: EdgeInsets.only(left: 20.r, top: 5.r, bottom: 5.r, right: 10.r),
      height: 90.h,
      width: MediaQuery.of(context).size.width.w,
      decoration: BoxDecoration(
          color: Color(0xffFBFBFB),
          borderRadius: BorderRadius.circular(15.r),
          boxShadow: [
            //bottom right shadow is darker shadow
            BoxShadow(
                color: Colors.grey.shade400,
                offset: const Offset(4, 4),
                blurRadius: 5,
                spreadRadius: 2
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          Container(
            child: Row(
              children: [
                Image(
                  image: AssetImage(image),
                  height: 40.h,
                  width: 40.w,
                ),
                SizedBox(width: 10.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1, style: TextStyle(fontFamily: 'Nun', fontSize: 15.sp),),
                    Text(text2, style: TextStyle(fontFamily: 'Nun', fontSize: 12.sp, color: Colors.grey[500]),),

                  ],
                ),
              ],
            ),
          ),



        ],
      ),
    );
  }

  Widget InfoCard ({image, text1, text2, icon }){

    return Container(
      padding: EdgeInsets.only(left: 10.r, top: 5.r, bottom: 5.r, right: 10.r),
      height: 90.h,
      width: MediaQuery.of(context).size.width.w,
      decoration: BoxDecoration(
          color: Color(0xffFBFBFB),
          borderRadius: BorderRadius.circular(15.r),
          boxShadow: [
            //bottom right shadow is darker shadow
            BoxShadow(
                color: Colors.grey.shade400,
                offset: const Offset(4, 4),
                blurRadius: 5,
                spreadRadius: 2
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Image(
                  image: AssetImage(image),
                  height: 40.h,
                  width: 40.w,
                ),
                SizedBox(width: 5.w,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1, style: TextStyle(fontFamily: 'Nun', fontSize: 14.sp),),
                    Text(text2, style: TextStyle(fontFamily: 'Nun', fontSize: 10.sp, color: Colors.grey[500]),),

                  ],
                ),
              ],
            ),
          ),
          Container(
              child: Icon(icon, color: primaryColor)
          ),
        ],
      ),
    );
  }


}


