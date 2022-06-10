import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mupi_project/Note/note_page2.dart';

class NotePageT1 extends StatefulWidget {
  const NotePageT1({Key? key}) : super(key: key);

  @override
  State<NotePageT1> createState() => _NotePageT1State();
}

class _NotePageT1State extends State<NotePageT1> {
  Color primaryColor = Color(0xff00BFA6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.r),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back, size: 20.r,)
                  ),
                  SizedBox(width: 10.w,),
                  Text('Teacher\'s Note', style: TextStyle(fontSize: 18.sp, color: Color(0xff494A4B)),),
                ],
              ),
              SizedBox(height: 20.h,),
              Container(
                padding: EdgeInsets.only(left: 20.r),
                height: 45.h,
                width: 300.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: Color(0xffEAEAEA)
                ),
                child: Row(
                  children: [
                    Icon(Icons.menu),
                    SizedBox(width: 5.w,),
                    Text('Search your notes', style: TextStyle(fontSize: 10.sp),),


                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              SuggestionCard(
                  text1: 'Notice',
                  text2: 'The results of the 1st phase supplementary examination of Munshiganj Polytechnic .......'
              ),
              SizedBox(height: 10.h,),
              SuggestionCard(
                  text1: 'Dr. Engr. Sushil Kumer Paul',
                  text2: 'Headmaster of Munshiganj Polytechnic Institute'
              ),
              SizedBox(height: 10.h,),
              SuggestionCard(
                  text1: 'MD. Mizan Hossan ',
                  text2: '1st Shift, 4th Semester ,Computer Science and Engineering'
              ),
            ],
          ),
        ),
      ),


      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>NotePage2()));
        },
        child: Icon(Icons.add),
        backgroundColor: primaryColor,
      ),
    );
  }

  Widget SuggestionCard ({text1, text2,  }){

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
            width: 240.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text1, style: TextStyle(fontFamily: 'Nun', fontSize: 15.sp),),
                Container(
                    width: 240.w,
                    child: Text(text2, style: TextStyle(fontFamily: 'Nun', fontSize: 12.sp, color: Colors.grey[500]),)
                ),

              ],
            ),
          ),



        ],
      ),
    );

  }



}
