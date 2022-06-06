import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mupi_project/Notice/notice_page2.dart';
import 'package:mupi_project/Notice/notice_page3.dart';
import 'package:mupi_project/Notice/notice_page4.dart';
import 'package:mupi_project/Notice/notice_page5.dart';

class NoticePage extends StatefulWidget {
  const NoticePage({Key? key}) : super(key: key);

  @override
  State<NoticePage> createState() => _NoticePageState();
}

class _NoticePageState extends State<NoticePage> {

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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 20.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            size: 15.sp,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      //width: 200,
                      child:Text('Notice', style: TextStyle(color: Colors.black, fontSize: 18.sp),),
                    ),
                    Container(),
                  ],
                ),
                Text("Bangladesh Technical Education Board", style: TextStyle(fontSize: 14.sp),),
                Text("Munshiganj Polytechnic Institute",style: TextStyle(fontSize: 12.sp, color: Color(0xff494A4B)),),
                SizedBox(height: 10.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Text("Sunday-", style: TextStyle(fontSize: 14.sp),),
                          Text("06-11-2022", style: TextStyle(fontSize: 14.sp, color: primeryColor),),
                        ],
                      ),
                    ),
                    Row(
                      children: [
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
                        SizedBox(width: 5.w,),
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
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10.h,),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>NoticePage2()));
                        },
                        child: Image(
                          image: AssetImage('images/img.png'),
                        ),
                      ),
                    ),
                    SizedBox(width: 5.w,),
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>NoticePage3()));
                        },
                        child: Image(
                          image: AssetImage('images/img_1.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h,),
                Container(
                  child: Row(
                    children: [
                      Text("Munday-", style: TextStyle(fontSize: 14.sp),),
                      Text("08-11-2022", style: TextStyle(fontSize: 14.sp, color: primeryColor),),
                    ],
                  ),
                ),
                SizedBox(height: 10.h,),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>NoticePage4()));
                        },
                        child: Image(
                          image: AssetImage('images/img_2.png'),
                        ),
                      ),
                    ),
                    SizedBox(width: 5.w,),
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>NoticePage5()));
                        },
                        child: Image(
                          image: AssetImage('images/img_3.png'),
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
