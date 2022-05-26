import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mupi_project/Login%20Page/login_page1.dart';


class Splash_s2 extends StatefulWidget {
  const Splash_s2({Key? key}) : super(key: key);

  @override
  _splash_s2State createState() => _splash_s2State();
}

class _splash_s2State extends State<Splash_s2> {

  //splash screen code
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    loadData();
  }
  Future<Timer> loadData() async {
    return new Timer(Duration(seconds: 2),onDoneLoading);
  }

  onDoneLoading() async{
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> login_page1()));
  }
//splash screen code


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(120),
                    boxShadow: [
                      //bottom right shadow is darker shadow
                      BoxShadow(
                          color: Colors.grey.shade500,
                          offset: const Offset(5, 5),
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
                child: const CircleAvatar(
                  backgroundColor: Color(0xffF4F4F4),
                  radius: 120,
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('images/mupi logo.jpg'),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text('There is only one goal, to be skilled.', style: TextStyle(fontFamily: 'Nun', fontSize: 22, fontWeight: FontWeight.w600, color: Color(0xff000000)),),

              Padding(
                padding: const EdgeInsets.only(top: 10, left: 40, right: 40, bottom: 10),
                child: Text('Munshiganj Polytechnic Institute is one of the biggest '
                    'technical vocational engineering institutions in Munshiganj '
                    'district. This institute was established in 2006 with 04(four) '
                    'technologies namely Computer, Electronics, Electro-medical and '
                    'Instrumentation, and process control technology.', textAlign: TextAlign.center, style: TextStyle(fontSize: 14, color: Color(0xff687A7D)),),
              ),

            ],
          ),

        ),
      ),

    );
  }


}
