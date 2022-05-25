import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mupi_project/Splash_Screen/splash_s2.dart';


class Splash_s1 extends StatefulWidget {
  const Splash_s1({Key? key}) : super(key: key);

  @override
  _Splash_s1State createState() => _Splash_s1State();
}

class _Splash_s1State extends State<Splash_s1> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    loadData();
  }
  Future<Timer> loadData() async {
    return new Timer(Duration(seconds: 3),onDoneLoading);
  }

  onDoneLoading() async{
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> Splash_s2()));
  }

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
            ],
          ),

        ),
      ),

    );
  }


}


