import 'package:flutter/material.dart';
import 'package:mupi_project/login_page2.dart';


class login_page1 extends StatefulWidget {
  const login_page1({Key? key}) : super(key: key);

  @override
  _login_page1State createState() => _login_page1State();
}

class _login_page1State extends State<login_page1> {

  static const Color primaryColor = Color(0xffF4F4F4);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                //padding: EdgeInsets.only(top: 150),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height*0.15,),
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
                     SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                    const  Text('Munshiganj Polytechnic Institute', style: TextStyle(fontFamily: 'Nun', fontSize: 23, fontWeight: FontWeight.w600, color: Color(0xff000000)),),



                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.15),
              Container(
               alignment: Alignment.bottomCenter,
                padding: EdgeInsets.all(25),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text('Get Started', style: TextStyle(fontSize: 13, fontFamily: 'Nun', fontWeight: FontWeight.w800, color: Color(0xff3D3D3D)),),
                          ),
                        ),
                        Expanded(
                          child: Container(

                              alignment: Alignment.centerRight,
                            child: Text('Change Language', style: TextStyle(fontSize: 13, fontFamily: 'Nun', fontWeight: FontWeight.w800, color: Color(0xff00BFA6)),),
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height/60,),
                    Container(
                      alignment: Alignment.bottomCenter,
                      height: size.height*0.06,
                      //width: MediaQuery.of(context).size.width*1,
                      decoration: const BoxDecoration(
                        color: primaryColor,
                      ),
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 8, right: 10, left: 10, bottom: 8),
                            child: Image(image: AssetImage('images/bd.jpg')),
                          ),
                          Text('+880', style: TextStyle(fontWeight: FontWeight.w700, fontFamily: 'Nun', fontSize: 16),),
                          Icon(Icons.keyboard_arrow_down_sharp, size: 30,),
                          SizedBox(width: 20,),
                          Text('Mobile Number', style: TextStyle(fontFamily: 'Nun', fontSize: 16, color: Color(0xffC6C6C6), ),)
                        ],
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.only(top: 45, left: 20,bottom: 15),
                      alignment: Alignment.centerLeft,
                        child:
                        Row(
                          children: const [
                            Text('By continuing,you agree to', style: TextStyle(fontSize: 11, fontFamily: 'Nun', fontWeight: FontWeight.w800),),
                            Text(' out privacy policy', style: TextStyle(fontSize: 11, fontFamily: 'Nun', fontWeight: FontWeight.w800, color: Color(0xff00BFA6)),),
                          ],
                        ),

                    ),

                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Login_Page2()));
                      },
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        height: MediaQuery.of(context).size.height/17,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Color(0xff00BFA6)
                        ),
                        child: const Center(
                          child: Text('Start', style: TextStyle(color: Color(0xffFFFFFF), fontFamily: 'Nun', fontSize: 16, fontWeight: FontWeight.w800),),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    /* floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>login_page1()));
        },
        child: const Icon(Icons.arrow_forward),
      ),
      */
    );
  }
}

