import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MUPIInfo6 extends StatefulWidget {
  const MUPIInfo6({Key? key}) : super(key: key);

  @override
  State<MUPIInfo6> createState() => _MUPIInfo6State();
}

class _MUPIInfo6State extends State<MUPIInfo6> {

  Color primaryColor = Color(0xff00BFA6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff322A2A),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                          child: Icon(Icons.arrow_back, size: 20.r, color: Colors.white,)
                      ),
                      SizedBox(width: 10.w,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Munshiganj Polytechnic Institute', style: TextStyle(fontSize: 18.sp, color: Colors.white),),
                          Text('মিরকাদিম, মুন্সিগঞ্জ।', style: TextStyle(fontSize: 14.sp, color: Colors.white))
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 150.h,),
            Container(child: Image(image: AssetImage('images/img_6.png'))),
            Container()

          ],
        ),
      ),
    );
  }
}

