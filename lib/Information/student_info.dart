import 'package:flutter/material.dart';

class StudentInfo extends StatefulWidget {
  const StudentInfo({Key? key}) : super(key: key);

  @override
  State<StudentInfo> createState() => _StudentInfoState();
}

class _StudentInfoState extends State<StudentInfo> {

  Color primeryColor = Color(0xff00BFA6);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color(0xffFFFFFF),
        elevation: 0,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.only(top: 5, bottom: 10),
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 20,
            ),
          ),
        ),
        centerTitle: true,
        title: Text('Student Information', style: TextStyle(color: Colors.black, fontSize: 25),),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Column(
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Munshiganj Polytechnic Institute"),
                      Text("Mirkardim, Munshiganj"),
                      SizedBox(height: size.height*0.01,),

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
