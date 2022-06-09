import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TeacherProfile extends StatefulWidget {
  const TeacherProfile({Key? key}) : super(key: key);

  @override
  State<TeacherProfile> createState() => _TeacherProfileState(); 
}

class _TeacherProfileState extends State<TeacherProfile> {

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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left:20.r, right: 20.r, ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.only(top: 15.r, bottom: 10.r),
                        child: Icon(
                          Icons.arrow_back,
                          size: 20.sp,
                        ),
                      ),
                    ),
                  ],
                ),
                
                
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(120.r),
                      boxShadow: [
                        //bottom right shadow is darker shadow
                        BoxShadow(
                            color: Colors.grey.shade300,
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
                  child: CircleAvatar(
                    backgroundColor: Color(0xffFBFBFB),
                    radius: 50.r ,
                  ),
                ),
                SizedBox(height: 10.h,),
                Text('Dr.Engr Sushil Kumer Paul', style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18.sp),),
                Text('Abc@gmail.com', style: TextStyle(color: Colors.grey[500], fontSize: 16.sp),),
                Text('+8801689517629', style: TextStyle(color: Colors.grey[500]),),
                Text('BBA, BAC, PHD in Mesign Learning', style: TextStyle(color: Colors.grey[500]),),
                Text('Mirkadim, Munshiganj', style: TextStyle(color: Colors.grey[500]),),
                SizedBox(height: 10.h),
                Container(
                  height: 35.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                      color: primeryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: Text('Post\'s', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 16.sp),))
                ),
                /*
                Container(
                  height: 30.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                      color: primeryColor,
                      borderRadius: BorderRadius.circular(10.r)
                  ),
                  child: Center(
                    child: Text('Edit Profile', style: TextStyle(color: Colors.white, fontSize: 13.sp, fontWeight: FontWeight.w800),),
                  ),
                ),

                
                
                
                SizedBox(height: 10.h,),
                Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                        color: Color(0xffCACACA),
                        width: 1.w
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.r,top: 10.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Post', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16.sp),),
                        SizedBox(height: 8.h),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(120.r),
                                  boxShadow: [
                                    //bottom right shadow is darker shadow
                                    BoxShadow(
                                        color: Colors.grey.shade300,
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
                              child: CircleAvatar(
                                backgroundColor: Color(0xffFBFBFB),
                                radius: 25.r ,

                              ),
                            ),
                            SizedBox(width: 5.w),
                            Container(
                              height: 40.h,
                              width: 200.w,
                              decoration: BoxDecoration(
                                  color: Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(10.r),
                                  boxShadow: [
                                    //bottom right shadow is darker shadow
                                    BoxShadow(
                                        color: Colors.grey.shade300,
                                        offset: const Offset(4, 4),
                                        blurRadius: 8,
                                        spreadRadius: 1
                                    ),

                                    //top left shaow lighter

                                  ]
                              ),
                              child: Center(
                                child: Text('What\'s on your mind?', style: TextStyle(color: Color(0xff494A4B), fontSize: 12.sp),),
                              ),
                            )

                          ],
                        )
                      ],
                    ),
                  ),
                ),

                */
                SizedBox(height: 10.h),
                Container (
                  padding: EdgeInsets.only(top: 10.r),
                  height: 500.h,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    children: [
                      Container(
                        padding: EdgeInsets.all(10.r),
                        height: 250.h,
                        width: 320.w,
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
                                      Text("249", style:  TextStyle(color: primeryColor,fontSize: 10.sp,),),
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
                      SizedBox(height: 10.h),
                      Container(
                        padding: EdgeInsets.all(10.r),
                        height: 250.h,
                        width: 320.w,
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
                                      Text("249", style:  TextStyle(color: primeryColor,fontSize: 10.sp,),),
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
                      SizedBox(height: 10.h),
                      Container(
                        padding: EdgeInsets.all(10.r),
                        height: 250.h,
                        width: 320.w,
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
                                      Text("249", style:  TextStyle(color: primeryColor,fontSize: 10.sp,),),
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
                      SizedBox(height: 10.h),
                      Container(
                        padding: EdgeInsets.all(10.r),
                        height: 250.h,
                        width: 320.w,
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
                                      Text("249", style:  TextStyle(color: primeryColor,fontSize: 10.sp,),),
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
                      SizedBox(height: 10.h),

                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
