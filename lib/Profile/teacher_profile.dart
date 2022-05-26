import 'package:flutter/material.dart';

class TeacherProfile extends StatefulWidget {
  const TeacherProfile({Key? key}) : super(key: key);

  @override
  State<TeacherProfile> createState() => _TeacherProfileState(); 
}

class _TeacherProfileState extends State<TeacherProfile> {

  final List<String> items1 = ['CST-1st', 'CST-2nd', 'CST-3rd', 'CST-4th', 'CST-5th' , 'CST-6th', 'CST-7th', 'CST-8th',
    'CT-1st', 'CT-2nd', 'CT-3rd', 'CT-4th', 'CT-5th' , 'CT-6th', 'CT-7th', 'CT-8th',
    'ET-1st', 'ET-2nd', 'ET-3rd', 'ET-4th', 'ET-5th' , 'ET-6th', 'ET-7th', 'ET-8th',
    'ENT-1st', 'ENT-2nd', 'ENT-3rd', 'ENT-4th', 'ENT-5th' , 'ENT-6th', 'ENT-7th', 'ENT-8th',
    'RAC-1st', 'RAC-2nd', 'RAC-3rd', 'RAC-4th', 'RAC-5th' , 'RAC-6th', 'RAC-7th', 'RAC-8th',
    'EEE-1st', 'EEE-2nd', 'EEE-3rd', 'EEE-4th', 'EEE-5th' , 'EEE-6th', 'EEE-7th', 'EEE-8th'];
  String? selectedItem1 = 'CST-1st';

  final List<String> items2 = [ '1st Shift', '2nd Shift'];
  String? selectedItem2 = '1st Shift';

  Color primeryColor = Color(0xff00BFA6);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios_outlined, size: 15,)
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(120),
                      boxShadow: [
                        //bottom right shadow is darker shadow
                        BoxShadow(
                            color: Colors.grey.shade300,
                            offset: const Offset(4, 4),
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

                  ),
                ),
                SizedBox(height: size.height*0.01,),
                const Text('Dr.Engr Sushil Kumer Paul', style: TextStyle(fontWeight: FontWeight.w700),),
                Text('Abc@gmail.com', style: TextStyle(color: Colors.grey[500]),),
                Text('+8801689517629', style: TextStyle(color: Colors.grey[500]),),
                Text('BBA, BAC, PHD in Mesign Learning', style: TextStyle(color: Colors.grey[500]),),
                Text('Mirkadim, Munshiganj', style: TextStyle(color: Colors.grey[500]),),
                SizedBox(height: size.height*0.01,),
                Container(
                  height: size.height*0.035,
                  width: size.width*0.2,
                  decoration: BoxDecoration(
                    color: primeryColor,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Center(
                    child: Text('Edit Profile', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w800),),
                  ),
                ),
                SizedBox(height: size.height*0.01,),
                Container(
                  height: size.height*0.15,
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xffCACACA),
                      width: 1
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0,top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Post', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16),),
                        SizedBox(height: size.height*0.02,),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(120),
                                  boxShadow: [
                                    //bottom right shadow is darker shadow
                                    BoxShadow(
                                        color: Colors.grey.shade300,
                                        offset: const Offset(4, 4),
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
                                radius: 25 ,

                              ),
                            ),
                            SizedBox(width: size.height*0.02,),
                            Container(
                              height: size.height*0.05,
                              width: size.width*0.5,
                              decoration: BoxDecoration(
                                color: Color(0xffFFFFFF),
                                borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    //bottom right shadow is darker shadow
                                    BoxShadow(
                                        color: Colors.grey.shade300,
                                        offset: const Offset(4, 4),
                                        blurRadius: 8,
                                        spreadRadius: 1
                                    ),

                                    //top left shaow lighter

                                  ]
                              ),
                              child: const Center(
                                child: Text('What\'s on your mind?', style: TextStyle(color: Color(0xff494A4B)),),
                              ),
                            )

                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: size.height*0.01,),
                Container (
                  padding: EdgeInsets.only(top: 10),
                  height: size.height*0.5,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        height: size.height*0.22,
                        width: size.width,
                        decoration: BoxDecoration(
                            color: Color(0xffFBFBFB),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                                            offset: const Offset(4, 4),
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
                                    backgroundColor: Color(0xffFBFBFB),
                                    radius: 25 ,

                                  ),
                                ),
                                SizedBox(width: size.width*0.02,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("DR. Engr. Sushil Kumer Paul", style: TextStyle(fontFamily: 'Nun', fontWeight: FontWeight.bold, fontSize: 16),),
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(left: 5),
                                          height: size.height*0.030,
                                          width: size.width*0.20,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Color(0xffFFFFFF),
                                              border: Border.all(
                                                  color: Color(0xffD6D6D6),
                                                  width: 2
                                              )
                                          ),
                                          child: Row(
                                            children: [

                                              Image(image: AssetImage('images/icon11.png'),height: 15, width: 15,),
                                              SizedBox(width: size.width*0.01,),
                                              Text("All Student", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,fontFamily: 'Nun', color: Color(0xff494A4B)),)
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: size.width*0.01,),


                                        Container(
                                          padding: EdgeInsets.only(left: 5),
                                          height: size.height*0.030,
                                          width: size.width*0.21,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Color(0xffFFFFFF),
                                              border: Border.all(
                                                  color: Color(0xffD6D6D6),
                                                  width: 2
                                              )
                                          ),
                                          child: DropdownButtonHideUnderline(
                                            child: DropdownButton<String>(
                                                menuMaxHeight: 200,
                                                iconSize: 15,
                                                value: selectedItem1,
                                                items: items1.map((item) => DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Row(
                                                    children: [
                                                      Image(image: AssetImage('images/icon12.png'),height: 15, width: 15,),
                                                      SizedBox(width: size.width*0.01,),
                                                      Text(item, style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,fontFamily: 'Nun', color: Color(0xff494A4B)),)
                                                    ],
                                                  ),

                                                ) )
                                                    .toList(),
                                                onChanged: (items) => setState(() => selectedItem1 = items,)
                                            ),
                                          ),
                                        ),


                                        SizedBox(width: size.width*0.01,),

                                        Container(
                                          padding: EdgeInsets.only(left: 5),
                                          height: size.height*0.030,
                                          width: size.width*0.17,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Color(0xffFFFFFF),
                                              border: Border.all(
                                                  color: Color(0xffD6D6D6),
                                                  width: 2
                                              )
                                          ),
                                          child: DropdownButtonHideUnderline(
                                            child: DropdownButton<String>(
                                                menuMaxHeight: 200,
                                                iconSize: 15,
                                                value: selectedItem2,
                                                items: items2.map((item) => DropdownMenuItem(
                                                  value: item,
                                                  child: Row(
                                                    children: [
                                                      //Image(image: AssetImage('images/icon12.png'),height: 15, width: 15,),
                                                      //SizedBox(width: size.width*0.01,),
                                                      Text(item, style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,fontFamily: 'Nun', color: Color(0xff494A4B)),)
                                                    ],
                                                  ),

                                                ) )
                                                    .toList(),
                                                onChanged: (item) => setState(() => selectedItem2 = item,)
                                            ),
                                          ),
                                        ),


                                        SizedBox(width: size.width*0.01,),

                                      ],
                                    )
                                  ],
                                )

                              ],
                            ),
                            SizedBox(height: size.height*0.02,),
                            Text('আর দুইদিন পর তোমাদের সাথে আমার পরীক্ষা ক্লাস টেস্ট পরীক্ষার প্রস্তুতি নিয়ে এসো যাতে কোনরকম বিলম্ব না হয় পরীক্ষায়।'),
                            SizedBox(height: size.height*0.00,),
                            Icon(Icons.favorite_border),
                            SizedBox(height: size.height*0.00,),
                            Row(
                              children: [
                                Text("249", style:  TextStyle(color: primeryColor,fontSize: 10, fontFamily: "Nun" ),),
                                SizedBox(width: size.height*0.005,),
                                Text("Likes", style:  TextStyle(color: Colors.black,fontSize: 10, fontFamily: "Nun" ),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: size.height*0.02,),
                      Container(
                        padding: EdgeInsets.all(10),
                        height: size.height*0.22,
                        width: size.width,
                        decoration: BoxDecoration(
                            color: Color(0xffFBFBFB),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                                            offset: const Offset(4, 4),
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
                                    backgroundColor: Color(0xffFBFBFB),
                                    radius: 25 ,

                                  ),
                                ),
                                SizedBox(width: size.width*0.02,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("DR. Engr. Sushil Kumer Paul", style: TextStyle(fontFamily: 'Nun', fontWeight: FontWeight.bold, fontSize: 16),),
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(left: 5),
                                          height: size.height*0.030,
                                          width: size.width*0.20,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Color(0xffFFFFFF),
                                              border: Border.all(
                                                  color: Color(0xffD6D6D6),
                                                  width: 2
                                              )
                                          ),
                                          child: Row(
                                            children: [

                                              Image(image: AssetImage('images/icon11.png'),height: 15, width: 15,),
                                              SizedBox(width: size.width*0.01,),
                                              Text("All Student", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,fontFamily: 'Nun', color: Color(0xff494A4B)),)
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: size.width*0.01,),


                                        Container(
                                          padding: EdgeInsets.only(left: 5),
                                          height: size.height*0.030,
                                          width: size.width*0.21,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Color(0xffFFFFFF),
                                              border: Border.all(
                                                  color: Color(0xffD6D6D6),
                                                  width: 2
                                              )
                                          ),
                                          child: DropdownButtonHideUnderline(
                                            child: DropdownButton<String>(
                                                menuMaxHeight: 200,
                                                iconSize: 15,
                                                value: selectedItem1,
                                                items: items1.map((item) => DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Row(
                                                    children: [
                                                      Image(image: AssetImage('images/icon12.png'),height: 15, width: 15,),
                                                      SizedBox(width: size.width*0.01,),
                                                      Text(item, style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,fontFamily: 'Nun', color: Color(0xff494A4B)),)
                                                    ],
                                                  ),

                                                ) )
                                                    .toList(),
                                                onChanged: (items) => setState(() => selectedItem1 = items,)
                                            ),
                                          ),
                                        ),


                                        SizedBox(width: size.width*0.01,),

                                        Container(
                                          padding: EdgeInsets.only(left: 5),
                                          height: size.height*0.030,
                                          width: size.width*0.17,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Color(0xffFFFFFF),
                                              border: Border.all(
                                                  color: Color(0xffD6D6D6),
                                                  width: 2
                                              )
                                          ),
                                          child: DropdownButtonHideUnderline(
                                            child: DropdownButton<String>(
                                                menuMaxHeight: 200,
                                                iconSize: 15,
                                                value: selectedItem2,
                                                items: items2.map((item) => DropdownMenuItem(
                                                  value: item,
                                                  child: Row(
                                                    children: [
                                                      //Image(image: AssetImage('images/icon12.png'),height: 15, width: 15,),
                                                      //SizedBox(width: size.width*0.01,),
                                                      Text(item, style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,fontFamily: 'Nun', color: Color(0xff494A4B)),)
                                                    ],
                                                  ),

                                                ) )
                                                    .toList(),
                                                onChanged: (item) => setState(() => selectedItem2 = item,)
                                            ),
                                          ),
                                        ),


                                        SizedBox(width: size.width*0.01,),

                                      ],
                                    )
                                  ],
                                )

                              ],
                            ),
                            SizedBox(height: size.height*0.02,),
                            Text('আর দুইদিন পর তোমাদের সাথে আমার পরীক্ষা ক্লাস টেস্ট পরীক্ষার প্রস্তুতি নিয়ে এসো যাতে কোনরকম বিলম্ব না হয় পরীক্ষায়।'),
                            SizedBox(height: size.height*0.00,),
                            Icon(Icons.favorite_border),
                            SizedBox(height: size.height*0.00,),
                            Row(
                              children: [
                                Text("249", style:  TextStyle(color: primeryColor,fontSize: 10, fontFamily: "Nun" ),),
                                SizedBox(width: size.height*0.005,),
                                Text("Likes", style:  TextStyle(color: Colors.black,fontSize: 10, fontFamily: "Nun" ),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: size.height*0.02,),
                      Container(
                        padding: EdgeInsets.all(10),
                        height: size.height*0.22,
                        width: size.width,
                        decoration: BoxDecoration(
                            color: Color(0xffFBFBFB),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                                            offset: const Offset(4, 4),
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
                                    backgroundColor: Color(0xffFBFBFB),
                                    radius: 25 ,

                                  ),
                                ),
                                SizedBox(width: size.width*0.02,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("DR. Engr. Sushil Kumer Paul", style: TextStyle(fontFamily: 'Nun', fontWeight: FontWeight.bold, fontSize: 16),),
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(left: 5),
                                          height: size.height*0.030,
                                          width: size.width*0.20,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Color(0xffFFFFFF),
                                              border: Border.all(
                                                  color: Color(0xffD6D6D6),
                                                  width: 2
                                              )
                                          ),
                                          child: Row(
                                            children: [

                                              Image(image: AssetImage('images/icon11.png'),height: 15, width: 15,),
                                              SizedBox(width: size.width*0.01,),
                                              Text("All Student", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,fontFamily: 'Nun', color: Color(0xff494A4B)),)
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: size.width*0.01,),


                                        Container(
                                          padding: EdgeInsets.only(left: 5),
                                          height: size.height*0.030,
                                          width: size.width*0.21,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Color(0xffFFFFFF),
                                              border: Border.all(
                                                  color: Color(0xffD6D6D6),
                                                  width: 2
                                              )
                                          ),
                                          child: DropdownButtonHideUnderline(
                                            child: DropdownButton<String>(
                                                menuMaxHeight: 200,
                                                iconSize: 15,
                                                value: selectedItem1,
                                                items: items1.map((item) => DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Row(
                                                    children: [
                                                      Image(image: AssetImage('images/icon12.png'),height: 15, width: 15,),
                                                      SizedBox(width: size.width*0.01,),
                                                      Text(item, style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,fontFamily: 'Nun', color: Color(0xff494A4B)),)
                                                    ],
                                                  ),

                                                ) )
                                                    .toList(),
                                                onChanged: (items) => setState(() => selectedItem1 = items,)
                                            ),
                                          ),
                                        ),


                                        SizedBox(width: size.width*0.01,),

                                        Container(
                                          padding: EdgeInsets.only(left: 5),
                                          height: size.height*0.030,
                                          width: size.width*0.17,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Color(0xffFFFFFF),
                                              border: Border.all(
                                                  color: Color(0xffD6D6D6),
                                                  width: 2
                                              )
                                          ),
                                          child: DropdownButtonHideUnderline(
                                            child: DropdownButton<String>(
                                                menuMaxHeight: 200,
                                                iconSize: 15,
                                                value: selectedItem2,
                                                items: items2.map((item) => DropdownMenuItem(
                                                  value: item,
                                                  child: Row(
                                                    children: [
                                                      //Image(image: AssetImage('images/icon12.png'),height: 15, width: 15,),
                                                      //SizedBox(width: size.width*0.01,),
                                                      Text(item, style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,fontFamily: 'Nun', color: Color(0xff494A4B)),)
                                                    ],
                                                  ),

                                                ) )
                                                    .toList(),
                                                onChanged: (item) => setState(() => selectedItem2 = item,)
                                            ),
                                          ),
                                        ),


                                        SizedBox(width: size.width*0.01,),

                                      ],
                                    )
                                  ],
                                )

                              ],
                            ),
                            SizedBox(height: size.height*0.02,),
                            Text('আর দুইদিন পর তোমাদের সাথে আমার পরীক্ষা ক্লাস টেস্ট পরীক্ষার প্রস্তুতি নিয়ে এসো যাতে কোনরকম বিলম্ব না হয় পরীক্ষায়।'),
                            SizedBox(height: size.height*0.00,),
                            Icon(Icons.favorite_border),
                            SizedBox(height: size.height*0.00,),
                            Row(
                              children: [
                                Text("249", style:  TextStyle(color: primeryColor,fontSize: 10, fontFamily: "Nun" ),),
                                SizedBox(width: size.height*0.005,),
                                Text("Likes", style:  TextStyle(color: Colors.black,fontSize: 10, fontFamily: "Nun" ),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: size.height*0.02,),
                      Container(
                        padding: EdgeInsets.all(10),
                        height: size.height*0.22,
                        width: size.width,
                        decoration: BoxDecoration(
                            color: Color(0xffFBFBFB),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                                            offset: const Offset(4, 4),
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
                                    backgroundColor: Color(0xffFBFBFB),
                                    radius: 25 ,

                                  ),
                                ),
                                SizedBox(width: size.width*0.02,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("DR. Engr. Sushil Kumer Paul", style: TextStyle(fontFamily: 'Nun', fontWeight: FontWeight.bold, fontSize: 16),),
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(left: 5),
                                          height: size.height*0.030,
                                          width: size.width*0.20,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Color(0xffFFFFFF),
                                              border: Border.all(
                                                  color: Color(0xffD6D6D6),
                                                  width: 2
                                              )
                                          ),
                                          child: Row(
                                            children: [

                                              Image(image: AssetImage('images/icon11.png'),height: 15, width: 15,),
                                              SizedBox(width: size.width*0.01,),
                                              Text("All Student", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,fontFamily: 'Nun', color: Color(0xff494A4B)),)
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: size.width*0.01,),


                                        Container(
                                          padding: EdgeInsets.only(left: 5),
                                          height: size.height*0.030,
                                          width: size.width*0.21,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Color(0xffFFFFFF),
                                              border: Border.all(
                                                  color: Color(0xffD6D6D6),
                                                  width: 2
                                              )
                                          ),
                                          child: DropdownButtonHideUnderline(
                                            child: DropdownButton<String>(
                                                menuMaxHeight: 200,
                                                iconSize: 15,
                                                value: selectedItem1,
                                                items: items1.map((item) => DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Row(
                                                    children: [
                                                      Image(image: AssetImage('images/icon12.png'),height: 15, width: 15,),
                                                      SizedBox(width: size.width*0.01,),
                                                      Text(item, style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,fontFamily: 'Nun', color: Color(0xff494A4B)),)
                                                    ],
                                                  ),

                                                ) )
                                                    .toList(),
                                                onChanged: (items) => setState(() => selectedItem1 = items,)
                                            ),
                                          ),
                                        ),


                                        SizedBox(width: size.width*0.01,),

                                        Container(
                                          padding: EdgeInsets.only(left: 5),
                                          height: size.height*0.030,
                                          width: size.width*0.17,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Color(0xffFFFFFF),
                                              border: Border.all(
                                                  color: Color(0xffD6D6D6),
                                                  width: 2
                                              )
                                          ),
                                          child: DropdownButtonHideUnderline(
                                            child: DropdownButton<String>(
                                                menuMaxHeight: 200,
                                                iconSize: 15,
                                                value: selectedItem2,
                                                items: items2.map((item) => DropdownMenuItem(
                                                  value: item,
                                                  child: Row(
                                                    children: [
                                                      //Image(image: AssetImage('images/icon12.png'),height: 15, width: 15,),
                                                      //SizedBox(width: size.width*0.01,),
                                                      Text(item, style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,fontFamily: 'Nun', color: Color(0xff494A4B)),)
                                                    ],
                                                  ),

                                                ) )
                                                    .toList(),
                                                onChanged: (item) => setState(() => selectedItem2 = item,)
                                            ),
                                          ),
                                        ),


                                        SizedBox(width: size.width*0.01,),

                                      ],
                                    )
                                  ],
                                )

                              ],
                            ),
                            SizedBox(height: size.height*0.02,),
                            Text('আর দুইদিন পর তোমাদের সাথে আমার পরীক্ষা ক্লাস টেস্ট পরীক্ষার প্রস্তুতি নিয়ে এসো যাতে কোনরকম বিলম্ব না হয় পরীক্ষায়।'),
                            SizedBox(height: size.height*0.00,),
                            Icon(Icons.favorite_border),
                            SizedBox(height: size.height*0.00,),
                            Row(
                              children: [
                                Text("249", style:  TextStyle(color: primeryColor,fontSize: 10, fontFamily: "Nun" ),),
                                SizedBox(width: size.height*0.005,),
                                Text("Likes", style:  TextStyle(color: Colors.black,fontSize: 10, fontFamily: "Nun" ),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: size.height*0.02,),
                      Container(
                        padding: EdgeInsets.all(10),
                        height: size.height*0.22,
                        width: size.width,
                        decoration: BoxDecoration(
                            color: Color(0xffFBFBFB),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                                            offset: const Offset(4, 4),
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
                                    backgroundColor: Color(0xffFBFBFB),
                                    radius: 25 ,

                                  ),
                                ),
                                SizedBox(width: size.width*0.02,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("DR. Engr. Sushil Kumer Paul", style: TextStyle(fontFamily: 'Nun', fontWeight: FontWeight.bold, fontSize: 16),),
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(left: 5),
                                          height: size.height*0.030,
                                          width: size.width*0.20,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Color(0xffFFFFFF),
                                              border: Border.all(
                                                  color: Color(0xffD6D6D6),
                                                  width: 2
                                              )
                                          ),
                                          child: Row(
                                            children: [

                                              Image(image: AssetImage('images/icon11.png'),height: 15, width: 15,),
                                              SizedBox(width: size.width*0.01,),
                                              Text("All Student", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,fontFamily: 'Nun', color: Color(0xff494A4B)),)
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: size.width*0.01,),


                                        Container(
                                          padding: EdgeInsets.only(left: 5),
                                          height: size.height*0.030,
                                          width: size.width*0.21,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Color(0xffFFFFFF),
                                              border: Border.all(
                                                  color: Color(0xffD6D6D6),
                                                  width: 2
                                              )
                                          ),
                                          child: DropdownButtonHideUnderline(
                                            child: DropdownButton<String>(
                                                menuMaxHeight: 200,
                                                iconSize: 15,
                                                value: selectedItem1,
                                                items: items1.map((item) => DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Row(
                                                    children: [
                                                      Image(image: AssetImage('images/icon12.png'),height: 15, width: 15,),
                                                      SizedBox(width: size.width*0.01,),
                                                      Text(item, style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,fontFamily: 'Nun', color: Color(0xff494A4B)),)
                                                    ],
                                                  ),

                                                ) )
                                                    .toList(),
                                                onChanged: (items) => setState(() => selectedItem1 = items,)
                                            ),
                                          ),
                                        ),


                                        SizedBox(width: size.width*0.01,),

                                        Container(
                                          padding: EdgeInsets.only(left: 5),
                                          height: size.height*0.030,
                                          width: size.width*0.17,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Color(0xffFFFFFF),
                                              border: Border.all(
                                                  color: Color(0xffD6D6D6),
                                                  width: 2
                                              )
                                          ),
                                          child: DropdownButtonHideUnderline(
                                            child: DropdownButton<String>(
                                                menuMaxHeight: 200,
                                                iconSize: 15,
                                                value: selectedItem2,
                                                items: items2.map((item) => DropdownMenuItem(
                                                  value: item,
                                                  child: Row(
                                                    children: [
                                                      //Image(image: AssetImage('images/icon12.png'),height: 15, width: 15,),
                                                      //SizedBox(width: size.width*0.01,),
                                                      Text(item, style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,fontFamily: 'Nun', color: Color(0xff494A4B)),)
                                                    ],
                                                  ),

                                                ) )
                                                    .toList(),
                                                onChanged: (item) => setState(() => selectedItem2 = item,)
                                            ),
                                          ),
                                        ),


                                        SizedBox(width: size.width*0.01,),

                                      ],
                                    )
                                  ],
                                )

                              ],
                            ),
                            SizedBox(height: size.height*0.02,),
                            Text('আর দুইদিন পর তোমাদের সাথে আমার পরীক্ষা ক্লাস টেস্ট পরীক্ষার প্রস্তুতি নিয়ে এসো যাতে কোনরকম বিলম্ব না হয় পরীক্ষায়।'),
                            SizedBox(height: size.height*0.00,),
                            Icon(Icons.favorite_border),
                            SizedBox(height: size.height*0.00,),
                            Row(
                              children: [
                                Text("249", style:  TextStyle(color: primeryColor,fontSize: 10, fontFamily: "Nun" ),),
                                SizedBox(width: size.height*0.005,),
                                Text("Likes", style:  TextStyle(color: Colors.black,fontSize: 10, fontFamily: "Nun" ),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
