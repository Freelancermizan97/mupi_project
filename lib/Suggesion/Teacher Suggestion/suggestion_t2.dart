import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mupi_project/Suggesion/Teacher%20Suggestion/suggestion_t3.dart';


class SuggestionT2 extends StatefulWidget {
  const SuggestionT2({Key? key}) : super(key: key);

  @override
  State<SuggestionT2> createState() => _SuggestionT2State();
}

class _SuggestionT2State extends State<SuggestionT2> {
  Color primaryColor = Color(0xff00BFA6);


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
              Text("Suggestions Section", style: TextStyle(fontSize: 20.sp, color: Color(0xff000000)),),
              Text("Munshiganj Polytechnic Institute", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700, color: Color(0xff494A4B)),),

              SizedBox(height: 40.h,),

              Container(
                  alignment: Alignment.centerLeft,
                  child: Text('Find your Department :', style: TextStyle(color: Color(0xff000000), fontWeight: FontWeight.bold, fontSize: 15.sp),)
              ),
              SizedBox(height: 15.h,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SuggestionT3()));
                    },
                    child: SuggestionCard(
                        text1: 'CST'
                    ),
                  ),
                  SizedBox(width: 10.h,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SuggestionT3()));
                    },
                    child: SuggestionCard(
                        text1: 'EMT'
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SuggestionT3()));
                    },
                    child: SuggestionCard(
                        text1: 'CT'
                    ),
                  ),
                  SizedBox(width: 10.h,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SuggestionT3()));
                    },
                    child: SuggestionCard(
                        text1: 'EEE'
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SuggestionT3()));
                    },
                    child: SuggestionCard(
                        text1: 'RAC'
                    ),
                  ),
                  SizedBox(width: 10.h,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SuggestionT3()));
                    },
                    child: SuggestionCard(
                        text1: 'MT'
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SuggestionT3()));
                    },
                    child: SuggestionCard(
                        text1: 'IPCT'
                    ),
                  ),
                  SizedBox(width: 10.h,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SuggestionT3()));
                    },
                    child: SuggestionCard(
                        text1: 'ET'
                    ),
                  ),
                ],
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
      width: 150.w,
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
                child: Text(text1, style: TextStyle(fontFamily: 'Nun', fontSize: 20.sp, color: primaryColor),),
              )
          ),


        ],
      ),
    );
  }
}
