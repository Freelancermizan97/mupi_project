import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class NotePage2 extends StatefulWidget {
  const NotePage2({Key? key}) : super(key: key);

  @override
  State<NotePage2> createState() => _NotePage2State();
}

class _NotePage2State extends State<NotePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back, size: 20.r,)
                    ),
                  ),
                  SizedBox(width: 10.w,),
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.add_to_drive),
                        SizedBox(width: 10.w,),
                        Icon(Icons.notifications_none)
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 35.h,),
              Text('Title', style: TextStyle(fontSize: 20.sp, color: Color(0xff494A4B)),),
              SizedBox(height: 20.h,),
              Text('Note.....', style: TextStyle(fontSize: 16.sp, color: Color(0xff494A4B)),),
            ],
          ),
        ),
      ),
    );
  }
}
