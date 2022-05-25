import 'package:flutter/material.dart';
import 'package:mupi_project/home_page.dart';
import 'package:mupi_project/widgets/textField_widget.dart';

class StudentForm extends StatefulWidget {
  const StudentForm({Key? key}) : super(key: key);

  @override
  State<StudentForm> createState() => _StudentFormState();
}

class _StudentFormState extends State<StudentForm> {
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
    if (w >= 370){
      return SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  //padding: EdgeInsets.only(top: 150),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height*0.05,),
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
                        child:  CircleAvatar(
                            backgroundColor: Color(0xffF4F4F4),
                            radius: 65,
                            child: Image(
                              image: AssetImage('images/icon1.png'),
                              height: 80,
                              width: 80,
                            )
                        ),
                      ),
                      SizedBox(height: size.height*0.02,),
                      Text('Students', style: TextStyle(color: Color(0xff494A4B), fontSize: 18),),
                    ],
                  ),
                ),
                SizedBox(height: size.height*0.02,),
                Container(
                  child: Column(
                    children: [
                      textFieldCustom(
                          size1: size.height*0.06,
                          size2: size.width,
                          text: "Enter your name :"
                      ),
                      SizedBox(height: size.height*0.01,),
                      textFieldCustom(
                          size1: size.height*0.06,
                          size2: size.width,
                          text: "Department :"
                      ),
                      SizedBox(height: size.height*0.01,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          textFieldCustom(
                              size1: size.height*0.06,
                              size2: size.width*0.29,
                              text: "Bord Roll"
                          ),
                          SizedBox(width: size.width*0.01,),
                          textFieldCustom(
                              size1: size.height*0.06,
                              size2: size.width*0.29,
                              text: "Shift"
                          ),
                          SizedBox(width: size.width*0.01,),
                          textFieldCustom(
                              size1: size.height*0.06,
                              size2: size.width*0.29,
                              text: "Semester"
                          ),
                        ],
                      ),
                      SizedBox(height: size.height*0.01,),
                      textFieldCustom(
                          size1: size.height*0.06,
                          size2: size.width,
                          text: "NID Number :"
                      ),
                      SizedBox(height: size.height*0.01,),
                      Row(
                        children: [
                          textFieldCustom(
                              size1: size.height*0.06,
                              size2: size.width*0.6,
                              text: "Father Name :"
                          ),
                          SizedBox(width: size.width*0.01,),
                          textFieldCustom(
                              size1: size.height*0.06,
                              size2: size.width*0.28,
                              text: "Occupation"
                          ),
                        ],
                      ),
                      SizedBox(height: size.height*0.01,),
                      Row(
                        children: [
                          textFieldCustom(
                              size1: size.height*0.06,
                              size2: size.width*0.6,
                              text: "Mother Name :"
                          ),
                          SizedBox(width: size.width*0.01,),
                          textFieldCustom(
                              size1: size.height*0.06,
                              size2: size.width*0.28,
                              text: "Occupation"
                          ),
                        ],
                      ),
                      SizedBox(height: size.height*0.01,),
                      Row(
                        children: [
                          textFieldCustom(
                              size1: size.height*0.06,
                              size2: size.width*0.6,
                              text: "+8801 "
                          ),
                          SizedBox(width: size.width*0.01,),
                          textFieldCustom(
                              size1: size.height*0.06,
                              size2: size.width*0.28,
                              text: "Gender"
                          ),
                        ],
                      ),
                      SizedBox(height: size.height*0.01,),
                      textFieldCustom(
                          size1: size.height*0.06,
                          size2: size.width,
                          text: "Gmail :"
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height*0.04,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        } ,
                        child: Container(
                          height: size.height*0.05,
                          width: size.width*0.25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color: Color(0xff636363),
                                  width: 1.0
                              )
                          ),
                          child: Center(
                            child: Text('Back',style: TextStyle( fontSize: 17)),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                        },
                        child: Container(
                          height: size.height*0.05,
                          width: size.width*0.25,
                          decoration: BoxDecoration(
                              color: Color(0xff00BFA6),
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color: Color(0xff00BFA6),
                                  width: 1.0
                              )
                          ),
                          child: Center(
                            child: Text('Submit', style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }else{
      return SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  //padding: EdgeInsets.only(top: 150),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height*0.05,),
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
                        child:  CircleAvatar(
                            backgroundColor: Color(0xffF4F4F4),
                            radius: 65,
                            child: Image(
                              image: AssetImage('images/icon1.png'),
                              height: 80,
                              width: 80,
                            )
                        ),
                      ),
                      SizedBox(height: size.height*0.02,),
                      Text('Students', style: TextStyle(color: Color(0xff494A4B), fontSize: 18),),
                    ],
                  ),
                ),
                SizedBox(height: size.height*0.02,),
                Container(
                  child: Column(
                    children: [
                      textFieldCustom(
                          size1: size.height*0.06,
                          size2: size.width,
                          text: "Enter your name :"
                      ),
                      SizedBox(height: size.height*0.01,),
                      textFieldCustom(
                          size1: size.height*0.06,
                          size2: size.width,
                          text: "Department :"
                      ),
                      SizedBox(height: size.height*0.01,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          textFieldCustom(
                              size1: size.height*0.06,
                              size2: size.width*0.25,
                              text: "Bord Roll"
                          ),
                          SizedBox(width: size.width*0.01,),
                          textFieldCustom(
                              size1: size.height*0.06,
                              size2: size.width*0.29,
                              text: "Shift"
                          ),
                          SizedBox(width: size.width*0.01,),
                          textFieldCustom(
                              size1: size.height*0.06,
                              size2: size.width*0.29,
                              text: "Semester"
                          ),
                        ],
                      ),
                      SizedBox(height: size.height*0.01,),
                      textFieldCustom(
                          size1: size.height*0.06,
                          size2: size.width,
                          text: "NID Number :"
                      ),
                      SizedBox(height: size.height*0.01,),
                      Row(
                        children: [
                          textFieldCustom(
                              size1: size.height*0.06,
                              size2: size.width*0.6,
                              text: "Father Name :"
                          ),
                          SizedBox(width: size.width*0.01,),
                          textFieldCustom(
                              size1: size.height*0.06,
                              size2: size.width*0.25,
                              text: "Occupation"
                          ),
                        ],
                      ),
                      SizedBox(height: size.height*0.01,),
                      Row(
                        children: [
                          textFieldCustom(
                              size1: size.height*0.06,
                              size2: size.width*0.6,
                              text: "Mother Name :"
                          ),
                          SizedBox(width: size.width*0.01,),
                          textFieldCustom(
                              size1: size.height*0.06,
                              size2: size.width*0.25,
                              text: "Occupation"
                          ),
                        ],
                      ),
                      SizedBox(height: size.height*0.01,),
                      Row(
                        children: [
                          textFieldCustom(
                              size1: size.height*0.06,
                              size2: size.width*0.6,
                              text: "+8801 "
                          ),
                          SizedBox(width: size.width*0.01,),
                          textFieldCustom(
                              size1: size.height*0.06,
                              size2: size.width*0.25,
                              text: "Gender"
                          ),
                        ],
                      ),
                      SizedBox(height: size.height*0.01,),
                      textFieldCustom(
                          size1: size.height*0.06,
                          size2: size.width,
                          text: "Gmail :"
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height*0.04,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        } ,
                        child: Container(
                          height: size.height*0.05,
                          width: size.width*0.25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color: Color(0xff636363),
                                  width: 1.0
                              )
                          ),
                          child: Center(
                            child: Text('Back',style: TextStyle( fontSize: 17)),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                        },
                        child: Container(
                          height: size.height*0.05,
                          width: size.width*0.25,
                          decoration: BoxDecoration(
                              color: Color(0xff00BFA6),
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color: Color(0xff00BFA6),
                                  width: 1.0
                              )
                          ),
                          child: Center(
                            child: Text('Submit', style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }
  }

}
