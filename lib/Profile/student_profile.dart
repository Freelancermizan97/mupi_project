import 'package:flutter/material.dart';

class StudentProfile extends StatefulWidget {
  const StudentProfile({Key? key}) : super(key: key);

  @override
  State<StudentProfile> createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile> {

  Color primeryColor = Color(0xff00BFA6);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: getFuntion(MediaQuery.of(context).size.width)
    );
  }

  Widget getFuntion (var w){
    Size size = MediaQuery.of(context).size;
    if(w >= 390){
      return SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 30, right: 20,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios_outlined, size: 15,)
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(120),
                          boxShadow: [
                            //bottom right shadow is darker shadow
                            BoxShadow(
                                color: Colors.grey.shade400,
                                offset: const Offset(5, 10),
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
                        backgroundColor: Color(0xffFBFBFB),
                        radius: 50 ,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Color(0xffFBFBFB),
                          backgroundImage: AssetImage('images/sayedd.jpg'),
                        ),
                      ),
                    ),
                    SizedBox(width: size.width*0.04,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('MD. Mizan Hossen', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 17),),
                        SizedBox(height: size.height*0.01,),
                        Text('Computer Science and Technology,\n5th Semester, 1st Shift', style: TextStyle(color: Colors.grey[500], fontSize: 14),),


                      ],
                    ),



                  ],
                ),
                SizedBox(height: size.height*0.02,),
                infoCard(
                    name: 'Abu Sayed',
                    fatherName: 'Abdul Rouf',
                    motherName: 'Salma',
                    roll: '450216',
                    reg: '1502062615',

                    session: '19-20',
                    religion: 'Islam',
                    number: '01689517629',
                    gNum: '016895447512',
                    gmail: 'arshansayed017@gmail.com',
                    location: 'Jalkuri, Narayanganj',
                    centerCode: '49021 ',
                    tradeCode: '66'
                ),
                SizedBox(height: size.height*0.02,),
                Container(
                  height: size.height*0.2,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Color(0xffF4F4F4),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Semester', style: TextStyle(color: primeryColor, fontSize: 16),),
                            Text('1st'),
                            Text('2nd'),
                            Text('3rd'),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Point', style: TextStyle(color: primeryColor, fontSize: 16),),
                            Text('1st', style: TextStyle(color: primeryColor)),
                            Text('2nd', style: TextStyle(color: primeryColor)),
                            Text('3rd', style: TextStyle(color: primeryColor)),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Result', style: TextStyle(color: primeryColor, fontSize: 16),),
                            Text('Pass'),
                            Text('Pass'),
                            Text('Pass'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: size.height*0.02,),

              ],
            ),
          ),
        ),
      );
    }else{
      return SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 30, right: 20,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios_outlined, size: 15,)
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(120),
                          boxShadow: [
                            //bottom right shadow is darker shadow
                            BoxShadow(
                                color: Colors.grey.shade400,
                                offset: const Offset(5, 10),
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
                        backgroundColor: Color(0xffFBFBFB),
                        radius: 50 ,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Color(0xffFBFBFB),
                          backgroundImage: AssetImage('images/sayedd.jpg'),
                        ),
                      ),
                    ),
                    SizedBox(width: size.width*0.04,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('MD. Mizan Hossen', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 17),),
                        SizedBox(height: size.height*0.01,),
                        Text('Computer Science and \nTechnology, 5th Semester, \n1st Shift', style: TextStyle(color: Colors.grey[500], fontSize: 14),),


                      ],
                    ),



                  ],
                ),
                SizedBox(height: size.height*0.02,),
                infoCard(
                    name: 'Abu Sayed',
                    fatherName: 'Abdul Rouf',
                    motherName: 'Salma',
                    roll: '450216',
                    reg: '1502062615',

                    session: '19-20',
                    religion: 'Islam',
                    number: '01689517629',
                    gNum: '016895447512',
                    gmail: 'arshansayed017@gmail.com',
                    location: 'Jalkuri, Narayanganj',
                    centerCode: '49021 ',
                    tradeCode: '66'
                ),
                SizedBox(height: size.height*0.02,),
                Container(
                  height: size.height*0.2,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Color(0xffF4F4F4),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Semester', style: TextStyle(color: primeryColor, fontSize: 16),),
                            Text('1st'),
                            Text('2nd'),
                            Text('3rd'),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Point', style: TextStyle(color: primeryColor, fontSize: 16),),
                            Text('1st', style: TextStyle(color: primeryColor)),
                            Text('2nd', style: TextStyle(color: primeryColor)),
                            Text('3rd', style: TextStyle(color: primeryColor)),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Result', style: TextStyle(color: primeryColor, fontSize: 16),),
                            Text('Pass'),
                            Text('Pass'),
                            Text('Pass'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: size.height*0.02,),

              ],
            ),
          ),
        ),
      );
    }
  }






  Widget infoCard ({name, fatherName, motherName, roll, reg, session, religion, number, gNum, gmail, location, centerCode, tradeCode}){
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: [
            Text('Name: ', style: TextStyle(fontSize: 16),),
            Text(name, style: TextStyle(fontSize: 16, color: primeryColor),),
          ],
        ),
        SizedBox(height: size.height*0.01,),
        Row(
          children: [
            Text('Father name: ', style: TextStyle(fontSize: 16),),
            Text(fatherName, style: TextStyle(fontSize: 16, color: primeryColor),),
          ],
        ),
        SizedBox(height: size.height*0.01,),
        Row(
          children: [
            Text('Mother name: ', style: TextStyle(fontSize: 16),),
            Text(motherName, style: TextStyle(fontSize: 16, color: primeryColor),),
          ],
        ),
        SizedBox(height: size.height*0.01,),
        Row(
          children: [
            Text('Roll No: ', style: TextStyle(fontSize: 16),),
            Text(roll, style: TextStyle(fontSize: 16, color: primeryColor),),
          ],
        ),
        SizedBox(height: size.height*0.01,),
        Row(
          children: [
            Text('Reg No: ', style: TextStyle(fontSize: 16),),
            Text(reg, style: TextStyle(fontSize: 16, color: primeryColor),),
          ],
        ),
        SizedBox(height: size.height*0.01,),
        Row(
          children: [
            Text('Session: ', style: TextStyle(fontSize: 16),),
            Text(session, style: TextStyle(fontSize: 16, color: primeryColor),),
          ],
        ),
        SizedBox(height: size.height*0.01,),
        Row(
          children: [
            Text('Religion: ', style: TextStyle(fontSize: 16),),
            Text(religion, style: TextStyle(fontSize: 16, color: primeryColor),),
          ],
        ),
        SizedBox(height: size.height*0.01,),
        Row(
          children: [
            Text('Number: ', style: TextStyle(fontSize: 16),),
            Text(number, style: TextStyle(fontSize: 16,color: primeryColor),),
          ],
        ),
        SizedBox(height: size.height*0.01,),
        Row(
          children: [
            Text('Guardian Number: ', style: TextStyle(fontSize: 16),),
            Text(gNum, style: TextStyle(fontSize: 16, color: primeryColor),),
          ],
        ),
        SizedBox(height: size.height*0.01,),
        Row(
          children: [
            Text('Gmail: ', style: TextStyle(fontSize: 16),),
            Text(gmail, style: TextStyle(fontSize: 16, color: primeryColor),),
          ],
        ),
        SizedBox(height: size.height*0.01,),
        Row(
          children: [
            Text('Location: ', style: TextStyle(fontSize: 16),),
            Text(location, style: TextStyle(fontSize: 16, color: primeryColor),),
          ],
        ),
        SizedBox(height: size.height*0.01,),
        Row(
          children: [
            Text('Code No. and Center Name: ', style: TextStyle(fontSize: 16),),
            Text(centerCode, style: TextStyle(fontSize: 16, color: primeryColor),),
          ],
        ),
        SizedBox(height: size.height*0.01,),
        Row(
          children: [
            Text('Trade/ Speciazation/ Technology: ', style: TextStyle(fontSize: 16),),
            Text(tradeCode, style: TextStyle(fontSize: 16, color: primeryColor),),
          ],
        ),
      ],
    );
  }

}
