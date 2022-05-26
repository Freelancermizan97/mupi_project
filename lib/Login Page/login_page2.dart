import 'package:flutter/material.dart';
import 'package:mupi_project/form/student_form.dart';
import 'package:mupi_project/form/teacher_form.dart';

class Login_Page2 extends StatefulWidget {
  const Login_Page2({Key? key}) : super(key: key);

  @override
  _login_Page2State createState() => _login_Page2State();
}

class _login_Page2State extends State<Login_Page2> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: getFuntion(MediaQuery.of(context).size.width)
    );
  }

  Widget getFuntion (var w ){
    Size size = MediaQuery.of(context).size;
    if (w >= 385){
      return SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Tell Us Abuot You', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20, fontFamily: 'Nun', color: Color(0xff000000)),),
                const Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text('This is how teacher & student on Teachmint will get to khow you', style: TextStyle( fontSize: 14, fontFamily: 'Nun', color: Color(0xff687A7D)),),
                ),
                const Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text('You are a', style: TextStyle( fontSize: 17, fontFamily: 'Nun', color: Color(0xff000000)),),
                ),

                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 15, right: 15, bottom: 15),
                        decoration: BoxDecoration(
                          color: Color(0xffF4F4F4),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Container(
                                padding: EdgeInsets.only(top: 28),
                                child: Image(
                                  image: AssetImage('images/icon2.png',),
                                )
                            ),
                            SizedBox(height: 25,),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>TeacherForm()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color(0xffB3BCBB)
                                ),

                                alignment: Alignment.center,
                                padding: EdgeInsets.only(top: 8, bottom: 8),
                                child: Text('Teacher', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18, fontFamily: 'Nun', color: Colors.white),),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 15, bottom: 15, left: 15),
                        decoration: BoxDecoration(
                          color: Color(0xffF4F4F4),
                          borderRadius: BorderRadius.circular(15),

                        ),
                        child: Column(
                          children: [
                            Container(
                                padding: EdgeInsets.only(top: 20),
                                child: const Image(
                                  image: AssetImage('images/icon1.png',),
                                )
                            ),
                            const SizedBox(height: 20,),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentForm()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color(0xff00BFA6)
                                ),

                                alignment: Alignment.center,
                                padding: EdgeInsets.only(top: 8, bottom: 8),
                                child: Text('Student', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18, fontFamily: 'Nun', color: Colors.white),),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),


                  ],
                ),

                const Text('Name', style: TextStyle(fontFamily: 'Nun', fontSize: 16, color: Color(0xff3D3D3D)),),

                SizedBox(height: size.height*0.01,),

                Container(
                  height: MediaQuery.of(context).size.height/17,
                  padding: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffF4F4F4),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Enter your name  :', labelStyle: TextStyle(fontFamily: 'Nun', fontSize: 17, color: Color(0xffB0B0B0))
                    ),
                  ),
                ),

                SizedBox(height: size.height*0.01,),

                Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height/17,
                      width: MediaQuery.of(context).size.width/1.8,
                      padding: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffF4F4F4),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: '+880 01', labelStyle: TextStyle(fontFamily: 'Nun', fontSize: 17, color: Color(0xffB0B0B0))
                        ),
                      ),
                    ),
                    SizedBox(width: size.width*0.02,),
                    Container(
                      height: MediaQuery.of(context).size.height/17,
                      width: MediaQuery.of(context).size.width*0.32,
                      padding: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffF4F4F4),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Blood group', labelStyle: TextStyle(fontFamily: 'Nun', fontSize: 17, color: Color(0xffB0B0B0))
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: size.height*0.01,),

                Container(
                  height: MediaQuery.of(context).size.height/17,
                  padding: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffF4F4F4),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Gmail :', hintStyle: TextStyle(fontFamily: 'Nun', fontSize: 17, color: Color(0xffB0B0B0))
                    ),
                  ),
                ),
                const SizedBox(height: 20,),

                Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height/8,
                      width: MediaQuery.of(context).size.width/4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffF4F4F4),
                      ),

                    ),
                    SizedBox(width: 20,),
                    Text('Add profile picture', style: TextStyle(fontSize: 15, color: Color(0xff00BFA6), fontFamily: 'Nun' ),),
                    SizedBox(width: 6,),
                    Icon(Icons.arrow_forward, color: Color(0xff00BFA6),),
                  ],
                ),

                Container(
                  padding: EdgeInsets.only(left: 15, top: 15, ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          child: Row(
                            children: [
                              Text('Gate importance update on ', style: TextStyle(fontFamily: 'Nun', color: Color(0xffB0B0B0)),),
                              Text('MUPI group', style: TextStyle(fontFamily: 'Nun', color: Color(0xff00BFA6)),),
                            ],
                          )),

                      //SizedBox(width: size.width*0.1,),
                      Container(
                        alignment: Alignment.centerLeft,
                        child:Switch(
                          onChanged: (isEnable){},
                          value: true,
                          activeColor: Color(0xff00BFA6),
                        ) ,
                      )
                    ],
                  ),
                ),
                SizedBox(height: size.height*0.01,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> StudentForm()));
                  },
                  child: Container(
                      height: MediaQuery.of(context).size.height/17,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff00BFA6),

                      ),
                      child: Center(
                        child: Text('Continue', style: TextStyle(fontFamily: 'Nun', color: Colors.white, fontSize: 18, fontWeight: FontWeight.w800),),
                      )
                  ),
                ),


              ],
            ),
          ),
        ),
      );
    }else{
      return SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Tell Us Abuot You', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20, fontFamily: 'Nun', color: Color(0xff000000)),),
                const Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text('This is how teacher & student on Teachmint will get to khow you', style: TextStyle( fontSize: 14, fontFamily: 'Nun', color: Color(0xff687A7D)),),
                ),
                const Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text('You are a', style: TextStyle( fontSize: 17, fontFamily: 'Nun', color: Color(0xff000000)),),
                ),

                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 15, right: 15, bottom: 15),
                        decoration: BoxDecoration(
                          color: Color(0xffF4F4F4),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Container(
                                padding: EdgeInsets.only(top: 28),
                                child: Image(
                                  image: AssetImage('images/icon2.png',),
                                )
                            ),
                            SizedBox(height: 25,),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>TeacherForm()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color(0xffB3BCBB)
                                ),

                                alignment: Alignment.center,
                                padding: EdgeInsets.only(top: 8, bottom: 8),
                                child: Text('Teacher', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18, fontFamily: 'Nun', color: Colors.white),),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 0),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 15, bottom: 15, left: 15),
                        decoration: BoxDecoration(
                          color: Color(0xffF4F4F4),
                          borderRadius: BorderRadius.circular(15),

                        ),
                        child: Column(
                          children: [
                            Container(
                                padding: EdgeInsets.only(top: 20),
                                child: const Image(
                                  image: AssetImage('images/icon1.png',),
                                )
                            ),
                            const SizedBox(height: 20,),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentForm()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color(0xff00BFA6)
                                ),

                                alignment: Alignment.center,
                                padding: EdgeInsets.only(top: 8, bottom: 8),
                                child: Text('Student', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18, fontFamily: 'Nun', color: Colors.white),),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),


                  ],
                ),

                const Text('Name', style: TextStyle(fontFamily: 'Nun', fontSize: 16, color: Color(0xff3D3D3D)),),

                SizedBox(height: size.height*0.01,),

                Container(
                  height: MediaQuery.of(context).size.height/17,
                  padding: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffF4F4F4),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Enter your name  :', labelStyle: TextStyle(fontFamily: 'Nun', fontSize: 17, color: Color(0xffB0B0B0))
                    ),
                  ),
                ),

                SizedBox(height: size.height*0.01,),

                Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height/17,
                      width: MediaQuery.of(context).size.width/1.8,
                      padding: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffF4F4F4),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: '+880 01', labelStyle: TextStyle(fontFamily: 'Nun', fontSize: 17, color: Color(0xffB0B0B0))
                        ),
                      ),
                    ),
                    SizedBox(width: size.width*0.02,),
                    Container(
                      height: MediaQuery.of(context).size.height/17,
                      width: MediaQuery.of(context).size.width*0.30,
                      padding: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffF4F4F4),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Blood group', labelStyle: TextStyle(fontFamily: 'Nun', fontSize: 17, color: Color(0xffB0B0B0))
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: size.height*0.01,),

                Container(
                  height: MediaQuery.of(context).size.height/17,
                  padding: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffF4F4F4),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Gmail :', hintStyle: TextStyle(fontFamily: 'Nun', fontSize: 17, color: Color(0xffB0B0B0))
                    ),
                  ),
                ),
                const SizedBox(height: 20,),

                Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height/8,
                      width: MediaQuery.of(context).size.width/4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffF4F4F4),
                      ),

                    ),
                    SizedBox(width: 20,),
                    Text('Add profile picture', style: TextStyle(fontSize: 15, color: Color(0xff00BFA6), fontFamily: 'Nun' ),),
                    SizedBox(width: 6,),
                    Icon(Icons.arrow_forward, color: Color(0xff00BFA6),),
                  ],
                ),

                Container(
                  padding: EdgeInsets.only(left: 15, top: 15, ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          child: Row(
                            children: [
                              Text('Gate importance update on ', style: TextStyle(fontSize: 13,fontFamily: 'Nun', color: Color(0xffB0B0B0)),),
                              Text('MUPI group', style: TextStyle(fontFamily: 'Nun', color: Color(0xff00BFA6)),),
                            ],
                          )),

                      //SizedBox(width: size.width*0.1,),
                      Container(
                        alignment: Alignment.centerLeft,
                        child:Switch(
                          onChanged: (isEnable){},
                          value: true,
                          activeColor: Color(0xff00BFA6),
                        ) ,
                      )
                    ],
                  ),
                ),
                SizedBox(height: size.height*0.01,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> StudentForm()));
                  },
                  child: Container(
                      height: MediaQuery.of(context).size.height/17,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff00BFA6),

                      ),
                      child: Center(
                        child: Text('Continue', style: TextStyle(fontFamily: 'Nun', color: Colors.white, fontSize: 18, fontWeight: FontWeight.w800),),
                      )
                  ),
                ),


              ],
            ),
          ),
        ),
      );
    }
  }
}
