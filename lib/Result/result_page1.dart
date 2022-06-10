import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mupi_project/Result/result_page2.dart';

class ResultPage1 extends StatefulWidget {
  const ResultPage1({Key? key}) : super(key: key);

  @override
  State<ResultPage1> createState() => _ResultPage1State();
}

class _ResultPage1State extends State<ResultPage1> {
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Result", style: TextStyle(fontSize: 20.sp, color: Color(0xff000000)),),
              Text("Munshiganj Polytechnic Institute", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700, color: Color(0xff494A4B)),),

              SizedBox(height: 40.h,),

              Container(
                  alignment: Alignment.centerLeft,
                  child: Text('Find your Semester :', style: TextStyle(color: Color(0xff000000), fontWeight: FontWeight.bold, fontSize: 15.sp),)
              ),
              SizedBox(height: 15.h,),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ResultPage2()));
                },
                child: SuggestionCard(
                    text1: '1st'
                ),
              ),
              SizedBox(height: 10.h,),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ResultPage2()));
                },
                child: SuggestionCard(
                    text1: '2nd'
                ),
              ),
              SizedBox(height: 10.h,),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ResultPage2()));
                },
                child: SuggestionCard(
                    text1: '3rd'
                ),
              ),
              SizedBox(height: 10.h,),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ResultPage2()));
                },
                child: SuggestionCard(
                    text1: '4th'
                ),
              ),
              SizedBox(height: 10.h,),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ResultPage2()));
                },
                child: SuggestionCard(
                    text1: '5th'
                ),
              ),
              SizedBox(height: 10.h,),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ResultPage2()));
                },
                child: SuggestionCard(
                    text1: '6th'
                ),
              ),
              SizedBox(height: 10.h,),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ResultPage2()));
                },
                child: SuggestionCard(
                    text1: '7th'
                ),
              ),
              SizedBox(height: 10.h,),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ResultPage2()));
                },
                child: SuggestionCard(
                    text1: '8th'
                ),
              ),




            ],
          ),
        ),
      ),

    );
  }
  Widget SuggestionCard ({image, text1 }){

    return Container(
      padding: EdgeInsets.only(left: 20.r, top: 5.r, bottom: 5.r, right: 10.r),
      height: 60.h,
      width: MediaQuery.of(context).size.width.w,
      decoration: BoxDecoration(
          color: Color(0xffFBFBFB),
          borderRadius: BorderRadius.circular(15.r),
          boxShadow: [
            //bottom right shadow is darker shadow
            BoxShadow(
                color: Colors.grey.shade300,
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              child: Center(
                child: Text(text1, style: TextStyle(fontFamily: 'Nun', fontSize: 15.sp),),
              )
          ),


        ],
      ),
    );
  }
}
