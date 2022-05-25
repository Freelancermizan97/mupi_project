import 'package:flutter/material.dart';

class CustomBoxButton extends StatelessWidget {

  final String text;
  double size1;
  double size2;
  ImageIcon icon;

   CustomBoxButton({Key? key,
    required this.text,
    required this.size1,
    required this.size2,
    required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(left: 5),
      height: size1,
      width: size2,
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

          ImageIcon(
              AssetImage('icon'),
            size: 50,
          ),
          SizedBox(width: size.width*0.01,),
          Text(text, style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,fontFamily: 'Nun', color: Color(0xff494A4B)),)
        ],
      ),
    );
  }
}
