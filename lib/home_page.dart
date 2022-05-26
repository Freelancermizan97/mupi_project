import 'package:flutter/material.dart';
import 'package:mupi_project/Profile/teacher_profile.dart';
import 'package:sizer/sizer.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> items1 = ['CST-1st', 'CST-2nd', 'CST-3rd', 'CST-4th', 'CST-5th' , 'CST-6th', 'CST-7th', 'CST-8th',
    'CT-1st', 'CT-2nd', 'CT-3rd', 'CT-4th', 'CT-5th' , 'CT-6th', 'CT-7th', 'CT-8th',
    'ET-1st', 'ET-2nd', 'ET-3rd', 'ET-4th', 'ET-5th' , 'ET-6th', 'ET-7th', 'ET-8th',
    'ENT-1st', 'ENT-2nd', 'ENT-3rd', 'ENT-4th', 'ENT-5th' , 'ENT-6th', 'ENT-7th', 'ENT-8th',
    'RAC-1st', 'RAC-2nd', 'RAC-3rd', 'RAC-4th', 'RAC-5th' , 'RAC-6th', 'RAC-7th', 'RAC-8th',
    'EEE-1st', 'EEE-2nd', 'EEE-3rd', 'EEE-4th', 'EEE-5th' , 'EEE-6th', 'EEE-7th', 'EEE-8th'];
  String? selectedItem1 = 'CST-1st';

  final List<String> items2 = [ '1st Shift', '2nd Shift'];
  String? selectedItem2 = '1st Shift';

  //late final double? menuMaxHeight;

  
  Color primaryColor = Color(0xff00BFA6);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: getFuntion(MediaQuery.of(context).size.width)
    );
  }


  Widget getFuntion (var w){
    Size size = MediaQuery.of(context).size;
    if(w >= 423){
      return SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Image(image: AssetImage('images/icon3.png'), height: 25, width: 25,),
                          SizedBox(width: size.height*0.01,),
                          Text("Hello, Arshan", style: TextStyle(fontSize: 16, color: Color(0xff848484), fontFamily: 'Nun'),)
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Row(
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
                                backgroundColor: Color(0xffF4F4F4),
                                radius: 20 ,
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundImage: AssetImage('images/sayedd.jpg'),
                                )
                            ),
                          ),
                          SizedBox(width: size.width*0.02,),
                          Container(
                            child: Image(
                              image: AssetImage('images/icon10.png'),
                              height: 30,
                              width: 30,
                            ),
                          )

                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: size.height*0.01,),
                Text('Welcome to this pathb of learning \nSomething new', style: TextStyle(fontFamily: "Nun", color: Color(0xff494A4B)),),
                SizedBox(height: size.height*0.01,),

                Container(
                  padding: EdgeInsets.all(10),
                  height: size.height*0.05,
                  width: size.width*0.5,
                  decoration: BoxDecoration(
                    color: Color(0xffF4F4F4),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search,color: Color(0xff848484),size: 25,),
                      SizedBox(width: size.width*0.02,),
                      Text("Search", style: TextStyle(color: Color(0xffC2C2C2)),)
                    ],
                  ),
                ),

                SizedBox(height: size.height*0.01,),

                Text('Post by', style: TextStyle(fontFamily: 'Nun'),),

                Container (
                  height: size.height*0.23,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        height: size.height*0.2,
                        width: size.width*0.8,
                        decoration: BoxDecoration(
                            color: Color(0xffFBFBFB),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> TeacherProfile()));
                                  },
                                  child: Container(
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
                                Text("249", style:  TextStyle(color: primaryColor,fontSize: 10, fontFamily: "Nun" ),),
                                SizedBox(width: size.height*0.005,),
                                Text("Likes", style:  TextStyle(color: Colors.black,fontSize: 10, fontFamily: "Nun" ),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: size.width*0.02,),
                      Container(
                        padding: EdgeInsets.all(10),
                        height: size.height*0.2,
                        width: size.width*0.8,
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
                                Text("249", style:  TextStyle(color: primaryColor,fontSize: 10, fontFamily: "Nun" ),),
                                SizedBox(width: size.height*0.005,),
                                Text("Likes", style:  TextStyle(color: Colors.black,fontSize: 10, fontFamily: "Nun" ),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: size.width*0.02,),
                      Container(
                        padding: EdgeInsets.all(10),
                        height: size.height*0.2,
                        width: size.width*0.8,
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
                                Text("249", style:  TextStyle(color: primaryColor,fontSize: 10, fontFamily: "Nun" ),),
                                SizedBox(width: size.height*0.005,),
                                Text("Likes", style:  TextStyle(color: Colors.black,fontSize: 10, fontFamily: "Nun" ),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: size.width*0.02,),
                      Container(
                        padding: EdgeInsets.all(10),
                        height: size.height*0.2,
                        width: size.width*0.8,
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
                                Text("249", style:  TextStyle(color: primaryColor,fontSize: 10, fontFamily: "Nun" ),),
                                SizedBox(width: size.height*0.005,),
                                Text("Likes", style:  TextStyle(color: Colors.black,fontSize: 10, fontFamily: "Nun" ),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: size.width*0.02,),
                      Container(
                        padding: EdgeInsets.all(10),
                        height: size.height*0.2,
                        width: size.width*0.8,
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
                                Text("249", style:  TextStyle(color: primaryColor,fontSize: 10, fontFamily: "Nun" ),),
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

                Text('Suggestions Question', style: TextStyle(fontFamily: 'Nun'),),

                SizedBox(height: size.height*0.01,),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      children: [

                        SuggestionCard(
                            image: 'images/icon4.png',
                            text1: 'Suggestions questions',
                            text2: 'Very short, short, easy',
                            text3: 'Computer Science and Engineering',
                            text4: '2nd'
                        ),
                        SizedBox(width: size.height*0.02,),
                        SuggestionCard(
                            image: 'images/icon14.png',
                            text1: 'Board Questions',
                            text2: 'Very Short, easy',
                            text3: 'Computer Science and Engineering',
                            text4: '2nd'
                        ),

                      ],
                    ),
                  ),
                ),

                SizedBox(height: size.height*0.03,),

                Text('More Information', style: TextStyle(fontFamily: 'Nun'),),

                SizedBox(height: size.height*0.015,),

                Container(
                  height: size.height*0.4,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    child: Container(

                      padding: EdgeInsets.only(left: 5, right: 10, bottom: 10, top: 5),
                      child: Column(
                        children: [

                          InfoCard(

                            image: 'images/icon7.png',
                            text1: 'Munshiganj Polytechnic Institute',
                            text2: 'Munshiganj Polytechnic Institute \nhas been discussed in detail here',
                          ),
                          SizedBox(height: size.height*0.02,),
                          InfoCard(
                            image: 'images/icon6.png',
                            text1: 'Notice',
                            text2: 'The results of the 1st phase supplementary \nexamination of Munshiganj Polytechnic .......',
                            icon: Icons.add_alert_sharp,
                          ),
                          SizedBox(height: size.height*0.02,),
                          InfoCard(
                            image: 'images/icon5.png',
                            text1: 'Teachers Information',
                            text2: 'Here is the information of all the teachers recorded',
                          ),
                          SizedBox(height: size.height*0.02,),

                          InfoCard(
                            image: 'images/icon8.png',
                            text1: 'Student Information',
                            text2: 'Here is the information of all the teachers recorded',

                          ),
                          SizedBox(height: size.height*0.02,),
                          InfoCard(
                            image: 'images/icon8.png',
                            text1: 'Result',
                            text2: 'Here you can your result',

                          ),
                          SizedBox(height: size.height*0.02,),
                          InfoCard(
                            image: 'images/icon8.png',
                            text1: 'Student Note',
                            text2: 'You can make all the note here',

                          ),

                        ],
                      ),
                    ),
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
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Image(image: AssetImage('images/icon3.png'), height: 25, width: 25,),
                          SizedBox(width: size.height*0.01,),
                          Text("Hello, Arshan", style: TextStyle(fontSize: 16, color: Color(0xff848484), fontFamily: 'Nun'),)
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Row(
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
                                backgroundColor: Color(0xffF4F4F4),
                                radius: 20 ,
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundImage: AssetImage('images/sayedd.jpg'),
                                )
                            ),
                          ),
                          SizedBox(width: size.width*0.02,),
                          Container(
                            child: Image(
                              image: AssetImage('images/icon10.png'),
                              height: 30,
                              width: 30,
                            ),
                          )

                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: size.height*0.01,),
                Text('Welcome to this pathb of learning \nSomething new', style: TextStyle(fontFamily: "Nun", color: Color(0xff494A4B)),),
                SizedBox(height: size.height*0.01,),
                Container(
                  padding: EdgeInsets.all(10),
                  height: size.height*0.05,
                  width: size.width*0.5,
                  decoration: BoxDecoration(
                    color: Color(0xffF4F4F4),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search,color: Color(0xff848484),size: 25,),
                      SizedBox(width: size.width*0.02,),
                      Text("Search", style: TextStyle(color: Color(0xffC2C2C2)),)
                    ],
                  ),
                ),
                SizedBox(height: size.height*0.01,),

                Text('Post by', style: TextStyle(fontFamily: 'Nun'),),

                Container (
                  height: size.height*0.23,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        height: size.height*0.2,
                        width: size.width*0.8,
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
                                          width: size.width*0.18,
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

                                              Image(image: AssetImage('images/icon11.png'),height: 10, width: 10    ,),
                                              SizedBox(width: size.width*0.01,),
                                              Text("All Student", style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold,fontFamily: 'Nun', color: Color(0xff494A4B)),)
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: size.width*0.01,),
                                        Container(
                                          padding: EdgeInsets.only(left: 4),
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
                                                iconSize: 3,
                                                value: selectedItem1,
                                                items: items1.map((item) => DropdownMenuItem<String>(
                                                  
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
                                                onChanged: (items) => setState(() => selectedItem1 = items,)
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: size.width*0.01,),
                                        Container(
                                          padding: EdgeInsets.only(left: 5),
                                          height: size.height*0.030,
                                          width: size.width*0.18,
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
                                                iconSize: 2,
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
                                Text("249", style:  TextStyle(color: primaryColor,fontSize: 10, fontFamily: "Nun" ),),
                                SizedBox(width: size.height*0.005,),
                                Text("Likes", style:  TextStyle(color: Colors.black,fontSize: 10, fontFamily: "Nun" ),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: size.width*0.02,),
                      Container(
                        padding: EdgeInsets.all(10),
                        height: size.height*0.2,
                        width: size.width*0.8,
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
                                          width: size.width*0.18,
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

                                              Image(image: AssetImage('images/icon11.png'),height: 10, width: 10    ,),
                                              SizedBox(width: size.width*0.01,),
                                              Text("All Student", style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold,fontFamily: 'Nun', color: Color(0xff494A4B)),)
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: size.width*0.01,),
                                        Container(
                                          padding: EdgeInsets.only(left: 4),
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
                                                iconSize: 3,
                                                value: selectedItem1,
                                                items: items1.map((item) => DropdownMenuItem<String>(

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
                                                onChanged: (items) => setState(() => selectedItem1 = items,)
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: size.width*0.01,),
                                        Container(
                                          padding: EdgeInsets.only(left: 5),
                                          height: size.height*0.030,
                                          width: size.width*0.18,
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
                                                iconSize: 2,
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
                                Text("249", style:  TextStyle(color: primaryColor,fontSize: 10, fontFamily: "Nun" ),),
                                SizedBox(width: size.height*0.005,),
                                Text("Likes", style:  TextStyle(color: Colors.black,fontSize: 10, fontFamily: "Nun" ),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: size.width*0.02,),
                      Container(
                        padding: EdgeInsets.all(10),
                        height: size.height*0.2,
                        width: size.width*0.8,
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
                                          width: size.width*0.18,
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

                                              Image(image: AssetImage('images/icon11.png'),height: 10, width: 10    ,),
                                              SizedBox(width: size.width*0.01,),
                                              Text("All Student", style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold,fontFamily: 'Nun', color: Color(0xff494A4B)),)
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: size.width*0.01,),
                                        Container(
                                          padding: EdgeInsets.only(left: 4),
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
                                                iconSize: 3,
                                                value: selectedItem1,
                                                items: items1.map((item) => DropdownMenuItem<String>(

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
                                                onChanged: (items) => setState(() => selectedItem1 = items,)
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: size.width*0.01,),
                                        Container(
                                          padding: EdgeInsets.only(left: 5),
                                          height: size.height*0.030,
                                          width: size.width*0.18,
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
                                                iconSize: 2,
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
                                Text("249", style:  TextStyle(color: primaryColor,fontSize: 10, fontFamily: "Nun" ),),
                                SizedBox(width: size.height*0.005,),
                                Text("Likes", style:  TextStyle(color: Colors.black,fontSize: 10, fontFamily: "Nun" ),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: size.width*0.02,),
                      Container(
                        padding: EdgeInsets.all(10),
                        height: size.height*0.2,
                        width: size.width*0.8,
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
                                          width: size.width*0.18,
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

                                              Image(image: AssetImage('images/icon11.png'),height: 10, width: 10    ,),
                                              SizedBox(width: size.width*0.01,),
                                              Text("All Student", style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold,fontFamily: 'Nun', color: Color(0xff494A4B)),)
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: size.width*0.01,),
                                        Container(
                                          padding: EdgeInsets.only(left: 4),
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
                                                iconSize: 3,
                                                value: selectedItem1,
                                                items: items1.map((item) => DropdownMenuItem<String>(

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
                                                onChanged: (items) => setState(() => selectedItem1 = items,)
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: size.width*0.01,),
                                        Container(
                                          padding: EdgeInsets.only(left: 5),
                                          height: size.height*0.030,
                                          width: size.width*0.18,
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
                                                iconSize: 2,
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
                                Text("249", style:  TextStyle(color: primaryColor,fontSize: 10, fontFamily: "Nun" ),),
                                SizedBox(width: size.height*0.005,),
                                Text("Likes", style:  TextStyle(color: Colors.black,fontSize: 10, fontFamily: "Nun" ),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: size.width*0.02,),
                      Container(
                        padding: EdgeInsets.all(10),
                        height: size.height*0.2,
                        width: size.width*0.8,
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
                                          width: size.width*0.18,
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

                                              Image(image: AssetImage('images/icon11.png'),height: 10, width: 10    ,),
                                              SizedBox(width: size.width*0.01,),
                                              Text("All Student", style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold,fontFamily: 'Nun', color: Color(0xff494A4B)),)
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: size.width*0.01,),
                                        Container(
                                          padding: EdgeInsets.only(left: 4),
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
                                                iconSize: 3,
                                                value: selectedItem1,
                                                items: items1.map((item) => DropdownMenuItem<String>(

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
                                                onChanged: (items) => setState(() => selectedItem1 = items,)
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: size.width*0.01,),
                                        Container(
                                          padding: EdgeInsets.only(left: 5),
                                          height: size.height*0.030,
                                          width: size.width*0.18,
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
                                                iconSize: 2,
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
                                Text("249", style:  TextStyle(color: primaryColor,fontSize: 10, fontFamily: "Nun" ),),
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

                Text('Suggestions Question', style: TextStyle(fontFamily: 'Nun'),),

                SizedBox(height: size.height*0.01,),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      children: [

                        SuggestionCard(
                            image: 'images/icon4.png',
                            text1: 'Suggestions questions',
                            text2: 'Very short, short, easy',
                            text3: 'Computer Science and Engineering',
                            text4: '2nd'
                        ),
                        SizedBox(width: size.height*0.02,),
                        SuggestionCard(
                            image: 'images/icon14.png',
                            text1: 'Board Questions',
                            text2: 'Very Short, easy',
                            text3: 'Computer Science and Engineering',
                            text4: '2nd'
                        ),

                      ],
                    ),
                  ),
                ),

                SizedBox(height: size.height*0.03,),

                Text('More Information', style: TextStyle(fontFamily: 'Nun'),),

                SizedBox(height: size.height*0.015,),

                Container(
                  height: size.height*0.4,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    child: Container(

                      padding: EdgeInsets.only(left: 5, right: 10, bottom: 10, top: 5),
                      child: Column(
                        children: [

                          InfoCard(

                            image: 'images/icon7.png',
                            text1: 'Munshiganj Polytechnic \nInstitute',
                            text2: 'Munshiganj Polytechnic Institute \nhas been discussed in detail here',
                          ),
                          SizedBox(height: size.height*0.02,),
                          InfoCard(
                            image: 'images/icon6.png',
                            text1: 'Notice',
                            text2: 'The results of the 1st phase \nsupplementary examination of \nMunshiganj Polytechnic .......',
                            icon: Icons.add_alert_sharp,
                          ),
                          SizedBox(height: size.height*0.02,),
                          InfoCard(
                            image: 'images/icon5.png',
                            text1: 'Teachers Information',
                            text2: 'Here is the information of \nall the teachers recorded',
                          ),
                          SizedBox(height: size.height*0.02,),

                          InfoCard(
                            image: 'images/icon8.png',
                            text1: 'Student Information',
                            text2: 'Here is the information of \nall the teachers recorded',

                          ),
                          SizedBox(height: size.height*0.02,),
                          InfoCard(
                            image: 'images/icon8.png',
                            text1: 'Result',
                            text2: 'Here you can your result',

                          ),
                          SizedBox(height: size.height*0.02,),
                          InfoCard(
                            image: 'images/icon8.png',
                            text1: 'Student Note',
                            text2: 'You can make all the note here',

                          ),

                        ],
                      ),
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





  Widget SuggestionCard ({image, text1, text2, text3, text4 }){
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(left: 20, top: 5, bottom: 5, right: 10),
      height: size.height*0.1,
      width: size.width*0.75,
      decoration: BoxDecoration(
          color: Color(0xffFBFBFB),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            //bottom right shadow is darker shadow
            BoxShadow(
                color: Colors.grey.shade400,
                offset: const Offset(4, 4),
                blurRadius: 5,
                spreadRadius: 2
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Container(
            child: Row(
              children: [
                Image(
                  image: AssetImage(image),
                  height: 40,
                  width: 40,
                ),
                SizedBox(width: size.width*0.01,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1, style: TextStyle(fontFamily: 'Nun', fontSize: 15),),
                    Text(text2, style: TextStyle(fontFamily: 'Nun', fontSize: 12, color: Colors.grey[500]),),
                    Text(text3, style: TextStyle(fontFamily: 'Nun', fontSize: 10, color: Colors.grey[500]),),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Text(
              text4,
              style: TextStyle(fontFamily: 'Nun', color: primaryColor, fontWeight: FontWeight.bold, fontSize: 10),
            ),
          )


        ],
      ),
    );
  }

  Widget InfoCard ({image, text1, text2, icon }){
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(left: 20, top: 5, bottom: 5, right: 10),
      height: size.height*0.11,
      width: size.width,
      decoration: BoxDecoration(
          color: Color(0xffFBFBFB),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            //bottom right shadow is darker shadow
            BoxShadow(
                color: Colors.grey.shade400,
                offset: const Offset(4, 4),
                blurRadius: 5,
                spreadRadius: 2
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Container(
            child: Row(
              children: [
                Image(
                  image: AssetImage(image),
                  height: 50,
                  width: 50,
                ),
                SizedBox(width: size.width*0.02,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1, style: TextStyle(fontFamily: 'Nun', fontSize: 17),),
                    Text(text2, style: TextStyle(fontFamily: 'Nun', fontSize: 11, color: Colors.grey[500]),),

                  ],
                ),
              ],
            ),
          ),
          Container(
              child: Icon(icon, color: primaryColor)
          ),


        ],
      ),
    );
  }


}
